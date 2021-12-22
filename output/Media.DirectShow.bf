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
		public function HRESULT PDXVA2SW_CREATEVIDEOPROCESSDEVICE(IDirect3DDevice9* pD3DD9, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 MaxSubStreams, HANDLE* phDevice);
		public function HRESULT PDXVA2SW_DESTROYVIDEOPROCESSDEVICE(HANDLE hDevice);
		public function HRESULT PDXVA2SW_VIDEOPROCESSBEGINFRAME(HANDLE hDevice);
		public function HRESULT PDXVA2SW_VIDEOPROCESSENDFRAME(HANDLE hDevice, HANDLE* pHandleComplete);
		public function HRESULT PDXVA2SW_VIDEOPROCESSSETRENDERTARGET(HANDLE hDevice, IDirect3DSurface9* pRenderTarget);
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
			public IUnknown* pUnk;
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
			public IBaseFilter* pFilter;
			public PIN_DIRECTION dir;
			public char16[128] achName;
		}
		[CRepr]
		public struct FILTER_INFO
		{
			public char16[128] achName;
			public IFilterGraph* pGraph;
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
			public IDirectDrawSurface7* lpSurf;
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
			public IDirectDrawSurface7* pDDS;
			public RECT rSrc;
			public NORMALIZEDRECT rDest;
			public float fAlpha;
			public uint32 clrSrcKey;
		}
		[CRepr]
		public struct VMRVIDEOSTREAMINFO
		{
			public IDirectDrawSurface7* pddsVideoSurface;
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
			public IDirect3DSurface9* lpSurf;
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
			public IDirect3DSurface9* pDDS;
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
			public IDirect3DSurface9* pddsVideoSurface;
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
		
		[CRepr]
		public struct ICreateDevEnum : IUnknown
		{
			public const new Guid IID = .(0x29840822, 0x5b84, 0x11d0, 0xbd, 0x3b, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICreateDevEnum *self, Guid* clsidDeviceClass, IEnumMoniker** ppEnumMoniker, uint32 dwFlags) CreateClassEnumerator;
			}
		}
		[CRepr]
		public struct IPin : IUnknown
		{
			public const new Guid IID = .(0x56a86891, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPin *self, IPin* pReceivePin, AM_MEDIA_TYPE* pmt) Connect;
				public function HRESULT(IPin *self, IPin* pConnector, AM_MEDIA_TYPE* pmt) ReceiveConnection;
				public function HRESULT(IPin *self) Disconnect;
				public function HRESULT(IPin *self, IPin** pPin) ConnectedTo;
				public function HRESULT(IPin *self, AM_MEDIA_TYPE* pmt) ConnectionMediaType;
				public function HRESULT(IPin *self, PIN_INFO* pInfo) QueryPinInfo;
				public function HRESULT(IPin *self, PIN_DIRECTION* pPinDir) QueryDirection;
				public function HRESULT(IPin *self, PWSTR* Id) QueryId;
				public function HRESULT(IPin *self, AM_MEDIA_TYPE* pmt) QueryAccept;
				public function HRESULT(IPin *self, IEnumMediaTypes** ppEnum) EnumMediaTypes;
				public function HRESULT(IPin *self, IPin** apPin, uint32* nPin) QueryInternalConnections;
				public function HRESULT(IPin *self) EndOfStream;
				public function HRESULT(IPin *self) BeginFlush;
				public function HRESULT(IPin *self) EndFlush;
				public function HRESULT(IPin *self, int64 tStart, int64 tStop, double dRate) NewSegment;
			}
		}
		[CRepr]
		public struct IEnumPins : IUnknown
		{
			public const new Guid IID = .(0x56a86892, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumPins *self, uint32 cPins, IPin** ppPins, uint32* pcFetched) Next;
				public function HRESULT(IEnumPins *self, uint32 cPins) Skip;
				public function HRESULT(IEnumPins *self) Reset;
				public function HRESULT(IEnumPins *self, IEnumPins** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IEnumMediaTypes : IUnknown
		{
			public const new Guid IID = .(0x89c31040, 0x846b, 0x11ce, 0x97, 0xd3, 0x00, 0xaa, 0x00, 0x55, 0x59, 0x5a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumMediaTypes *self, uint32 cMediaTypes, AM_MEDIA_TYPE** ppMediaTypes, uint32* pcFetched) Next;
				public function HRESULT(IEnumMediaTypes *self, uint32 cMediaTypes) Skip;
				public function HRESULT(IEnumMediaTypes *self) Reset;
				public function HRESULT(IEnumMediaTypes *self, IEnumMediaTypes** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IFilterGraph : IUnknown
		{
			public const new Guid IID = .(0x56a8689f, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFilterGraph *self, IBaseFilter* pFilter, PWSTR pName) AddFilter;
				public function HRESULT(IFilterGraph *self, IBaseFilter* pFilter) RemoveFilter;
				public function HRESULT(IFilterGraph *self, IEnumFilters** ppEnum) EnumFilters;
				public function HRESULT(IFilterGraph *self, PWSTR pName, IBaseFilter** ppFilter) FindFilterByName;
				public function HRESULT(IFilterGraph *self, IPin* ppinOut, IPin* ppinIn, AM_MEDIA_TYPE* pmt) ConnectDirect;
				public function HRESULT(IFilterGraph *self, IPin* ppin) Reconnect;
				public function HRESULT(IFilterGraph *self, IPin* ppin) Disconnect;
				public function HRESULT(IFilterGraph *self) SetDefaultSyncSource;
			}
		}
		[CRepr]
		public struct IEnumFilters : IUnknown
		{
			public const new Guid IID = .(0x56a86893, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumFilters *self, uint32 cFilters, IBaseFilter** ppFilter, uint32* pcFetched) Next;
				public function HRESULT(IEnumFilters *self, uint32 cFilters) Skip;
				public function HRESULT(IEnumFilters *self) Reset;
				public function HRESULT(IEnumFilters *self, IEnumFilters** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IMediaFilter : IPersist
		{
			public const new Guid IID = .(0x56a86899, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IMediaFilter *self) Stop;
				public function HRESULT(IMediaFilter *self) Pause;
				public function HRESULT(IMediaFilter *self, int64 tStart) Run;
				public function HRESULT(IMediaFilter *self, uint32 dwMilliSecsTimeout, FILTER_STATE* State) GetState;
				public function HRESULT(IMediaFilter *self, IReferenceClock* pClock) SetSyncSource;
				public function HRESULT(IMediaFilter *self, IReferenceClock** pClock) GetSyncSource;
			}
		}
		[CRepr]
		public struct IBaseFilter : IMediaFilter
		{
			public const new Guid IID = .(0x56a86895, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaFilter.VTable
			{
				public function HRESULT(IBaseFilter *self, IEnumPins** ppEnum) EnumPins;
				public function HRESULT(IBaseFilter *self, PWSTR Id, IPin** ppPin) FindPin;
				public function HRESULT(IBaseFilter *self, FILTER_INFO* pInfo) QueryFilterInfo;
				public function HRESULT(IBaseFilter *self, IFilterGraph* pGraph, PWSTR pName) JoinFilterGraph;
				public function HRESULT(IBaseFilter *self, PWSTR* pVendorInfo) QueryVendorInfo;
			}
		}
		[CRepr]
		public struct IMediaSample : IUnknown
		{
			public const new Guid IID = .(0x56a8689a, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaSample *self, uint8** ppBuffer) GetPointer;
				public function int32(IMediaSample *self) GetSize;
				public function HRESULT(IMediaSample *self, int64* pTimeStart, int64* pTimeEnd) GetTime;
				public function HRESULT(IMediaSample *self, int64* pTimeStart, int64* pTimeEnd) SetTime;
				public function HRESULT(IMediaSample *self) IsSyncPoint;
				public function HRESULT(IMediaSample *self, BOOL bIsSyncPoint) SetSyncPoint;
				public function HRESULT(IMediaSample *self) IsPreroll;
				public function HRESULT(IMediaSample *self, BOOL bIsPreroll) SetPreroll;
				public function int32(IMediaSample *self) GetActualDataLength;
				public function HRESULT(IMediaSample *self, int32 __MIDL__IMediaSample0000) SetActualDataLength;
				public function HRESULT(IMediaSample *self, AM_MEDIA_TYPE** ppMediaType) GetMediaType;
				public function HRESULT(IMediaSample *self, AM_MEDIA_TYPE* pMediaType) SetMediaType;
				public function HRESULT(IMediaSample *self) IsDiscontinuity;
				public function HRESULT(IMediaSample *self, BOOL bDiscontinuity) SetDiscontinuity;
				public function HRESULT(IMediaSample *self, int64* pTimeStart, int64* pTimeEnd) GetMediaTime;
				public function HRESULT(IMediaSample *self, int64* pTimeStart, int64* pTimeEnd) SetMediaTime;
			}
		}
		[CRepr]
		public struct IMediaSample2 : IMediaSample
		{
			public const new Guid IID = .(0x36b73884, 0xc2c8, 0x11cf, 0x8b, 0x46, 0x00, 0x80, 0x5f, 0x6c, 0xef, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaSample.VTable
			{
				public function HRESULT(IMediaSample2 *self, uint32 cbProperties, uint8* pbProperties) GetProperties;
				public function HRESULT(IMediaSample2 *self, uint32 cbProperties, uint8* pbProperties) SetProperties;
			}
		}
		[CRepr]
		public struct IMediaSample2Config : IUnknown
		{
			public const new Guid IID = .(0x68961e68, 0x832b, 0x41ea, 0xbc, 0x91, 0x63, 0x59, 0x3f, 0x3e, 0x70, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaSample2Config *self, IUnknown** ppDirect3DSurface9) GetSurface;
			}
		}
		[CRepr]
		public struct IMemAllocator : IUnknown
		{
			public const new Guid IID = .(0x56a8689c, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMemAllocator *self, ALLOCATOR_PROPERTIES* pRequest, ALLOCATOR_PROPERTIES* pActual) SetProperties;
				public function HRESULT(IMemAllocator *self, ALLOCATOR_PROPERTIES* pProps) GetProperties;
				public function HRESULT(IMemAllocator *self) Commit;
				public function HRESULT(IMemAllocator *self) Decommit;
				public function HRESULT(IMemAllocator *self, IMediaSample** ppBuffer, int64* pStartTime, int64* pEndTime, uint32 dwFlags) GetBuffer;
				public function HRESULT(IMemAllocator *self, IMediaSample* pBuffer) ReleaseBuffer;
			}
		}
		[CRepr]
		public struct IMemAllocatorCallbackTemp : IMemAllocator
		{
			public const new Guid IID = .(0x379a0cf0, 0xc1de, 0x11d2, 0xab, 0xf5, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMemAllocator.VTable
			{
				public function HRESULT(IMemAllocatorCallbackTemp *self, IMemAllocatorNotifyCallbackTemp* pNotify) SetNotify;
				public function HRESULT(IMemAllocatorCallbackTemp *self, int32* plBuffersFree) GetFreeCount;
			}
		}
		[CRepr]
		public struct IMemAllocatorNotifyCallbackTemp : IUnknown
		{
			public const new Guid IID = .(0x92980b30, 0xc1de, 0x11d2, 0xab, 0xf5, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMemAllocatorNotifyCallbackTemp *self) NotifyRelease;
			}
		}
		[CRepr]
		public struct IMemInputPin : IUnknown
		{
			public const new Guid IID = .(0x56a8689d, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMemInputPin *self, IMemAllocator** ppAllocator) GetAllocator;
				public function HRESULT(IMemInputPin *self, IMemAllocator* pAllocator, BOOL bReadOnly) NotifyAllocator;
				public function HRESULT(IMemInputPin *self, ALLOCATOR_PROPERTIES* pProps) GetAllocatorRequirements;
				public function HRESULT(IMemInputPin *self, IMediaSample* pSample) Receive;
				public function HRESULT(IMemInputPin *self, IMediaSample** pSamples, int32 nSamples, int32* nSamplesProcessed) ReceiveMultiple;
				public function HRESULT(IMemInputPin *self) ReceiveCanBlock;
			}
		}
		[CRepr]
		public struct IAMovieSetup : IUnknown
		{
			public const new Guid IID = .(0xa3d8cec0, 0x7e5a, 0x11cf, 0xbb, 0xc5, 0x00, 0x80, 0x5f, 0x6c, 0xef, 0x20);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMovieSetup *self) Register;
				public function HRESULT(IAMovieSetup *self) Unregister;
			}
		}
		[CRepr]
		public struct IMediaSeeking : IUnknown
		{
			public const new Guid IID = .(0x36b73880, 0xc2c8, 0x11cf, 0x8b, 0x46, 0x00, 0x80, 0x5f, 0x6c, 0xef, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaSeeking *self, uint32* pCapabilities) GetCapabilities;
				public function HRESULT(IMediaSeeking *self, uint32* pCapabilities) CheckCapabilities;
				public function HRESULT(IMediaSeeking *self, Guid* pFormat) IsFormatSupported;
				public function HRESULT(IMediaSeeking *self, Guid* pFormat) QueryPreferredFormat;
				public function HRESULT(IMediaSeeking *self, Guid* pFormat) GetTimeFormat;
				public function HRESULT(IMediaSeeking *self, Guid* pFormat) IsUsingTimeFormat;
				public function HRESULT(IMediaSeeking *self, Guid* pFormat) SetTimeFormat;
				public function HRESULT(IMediaSeeking *self, int64* pDuration) GetDuration;
				public function HRESULT(IMediaSeeking *self, int64* pStop) GetStopPosition;
				public function HRESULT(IMediaSeeking *self, int64* pCurrent) GetCurrentPosition;
				public function HRESULT(IMediaSeeking *self, int64* pTarget, Guid* pTargetFormat, int64 Source, Guid* pSourceFormat) ConvertTimeFormat;
				public function HRESULT(IMediaSeeking *self, int64* pCurrent, uint32 dwCurrentFlags, int64* pStop, uint32 dwStopFlags) SetPositions;
				public function HRESULT(IMediaSeeking *self, int64* pCurrent, int64* pStop) GetPositions;
				public function HRESULT(IMediaSeeking *self, int64* pEarliest, int64* pLatest) GetAvailable;
				public function HRESULT(IMediaSeeking *self, double dRate) SetRate;
				public function HRESULT(IMediaSeeking *self, double* pdRate) GetRate;
				public function HRESULT(IMediaSeeking *self, int64* pllPreroll) GetPreroll;
			}
		}
		[CRepr]
		public struct IEnumRegFilters : IUnknown
		{
			public const new Guid IID = .(0x56a868a4, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumRegFilters *self, uint32 cFilters, REGFILTER** apRegFilter, uint32* pcFetched) Next;
				public function HRESULT(IEnumRegFilters *self, uint32 cFilters) Skip;
				public function HRESULT(IEnumRegFilters *self) Reset;
				public function HRESULT(IEnumRegFilters *self, IEnumRegFilters** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IFilterMapper : IUnknown
		{
			public const new Guid IID = .(0x56a868a3, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFilterMapper *self, Guid clsid, PWSTR Name, uint32 dwMerit) RegisterFilter;
				public function HRESULT(IFilterMapper *self, Guid clsid, PWSTR Name, Guid* MRId) RegisterFilterInstance;
				public function HRESULT(IFilterMapper *self, Guid Filter, PWSTR Name, BOOL bRendered, BOOL bOutput, BOOL bZero, BOOL bMany, Guid ConnectsToFilter, PWSTR ConnectsToPin) RegisterPin;
				public function HRESULT(IFilterMapper *self, Guid clsFilter, PWSTR strName, Guid clsMajorType, Guid clsSubType) RegisterPinType;
				public function HRESULT(IFilterMapper *self, Guid Filter) UnregisterFilter;
				public function HRESULT(IFilterMapper *self, Guid MRId) UnregisterFilterInstance;
				public function HRESULT(IFilterMapper *self, Guid Filter, PWSTR Name) UnregisterPin;
				public function HRESULT(IFilterMapper *self, IEnumRegFilters** ppEnum, uint32 dwMerit, BOOL bInputNeeded, Guid clsInMaj, Guid clsInSub, BOOL bRender, BOOL bOututNeeded, Guid clsOutMaj, Guid clsOutSub) EnumMatchingFilters;
			}
		}
		[CRepr]
		public struct IFilterMapper2 : IUnknown
		{
			public const new Guid IID = .(0xb79bb0b0, 0x33c1, 0x11d1, 0xab, 0xe1, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFilterMapper2 *self, Guid* clsidCategory, uint32 dwCategoryMerit, PWSTR Description) CreateCategory;
				public function HRESULT(IFilterMapper2 *self, Guid* pclsidCategory, PWSTR szInstance, Guid* Filter) UnregisterFilter;
				public function HRESULT(IFilterMapper2 *self, Guid* clsidFilter, PWSTR Name, IMoniker** ppMoniker, Guid* pclsidCategory, PWSTR szInstance, REGFILTER2* prf2) RegisterFilter;
				public function HRESULT(IFilterMapper2 *self, IEnumMoniker** ppEnum, uint32 dwFlags, BOOL bExactMatch, uint32 dwMerit, BOOL bInputNeeded, uint32 cInputTypes, Guid* pInputTypes, REGPINMEDIUM* pMedIn, Guid* pPinCategoryIn, BOOL bRender, BOOL bOutputNeeded, uint32 cOutputTypes, Guid* pOutputTypes, REGPINMEDIUM* pMedOut, Guid* pPinCategoryOut) EnumMatchingFilters;
			}
		}
		[CRepr]
		public struct IFilterMapper3 : IFilterMapper2
		{
			public const new Guid IID = .(0xb79bb0b1, 0x33c1, 0x11d1, 0xab, 0xe1, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFilterMapper2.VTable
			{
				public function HRESULT(IFilterMapper3 *self, ICreateDevEnum** ppEnum) GetICreateDevEnum;
			}
		}
		[CRepr]
		public struct IQualityControl : IUnknown
		{
			public const new Guid IID = .(0x56a868a5, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IQualityControl *self, IBaseFilter* pSelf, Quality q) Notify;
				public function HRESULT(IQualityControl *self, IQualityControl* piqc) SetSink;
			}
		}
		[CRepr]
		public struct IOverlayNotify : IUnknown
		{
			public const new Guid IID = .(0x56a868a0, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOverlayNotify *self, uint32 dwColors, PALETTEENTRY* pPalette) OnPaletteChange;
				public function HRESULT(IOverlayNotify *self, RECT* pSourceRect, RECT* pDestinationRect, RGNDATA* pRgnData) OnClipChange;
				public function HRESULT(IOverlayNotify *self, COLORKEY* pColorKey) OnColorKeyChange;
				public function HRESULT(IOverlayNotify *self, RECT* pSourceRect, RECT* pDestinationRect) OnPositionChange;
			}
		}
		[CRepr]
		public struct IOverlayNotify2 : IOverlayNotify
		{
			public const new Guid IID = .(0x680efa10, 0xd535, 0x11d1, 0x87, 0xc8, 0x00, 0xa0, 0xc9, 0x22, 0x31, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IOverlayNotify.VTable
			{
				public function HRESULT(IOverlayNotify2 *self, HMONITOR hMonitor) OnDisplayChange;
			}
		}
		[CRepr]
		public struct IOverlay : IUnknown
		{
			public const new Guid IID = .(0x56a868a1, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOverlay *self, uint32* pdwColors, PALETTEENTRY** ppPalette) GetPalette;
				public function HRESULT(IOverlay *self, uint32 dwColors, PALETTEENTRY* pPalette) SetPalette;
				public function HRESULT(IOverlay *self, COLORKEY* pColorKey) GetDefaultColorKey;
				public function HRESULT(IOverlay *self, COLORKEY* pColorKey) GetColorKey;
				public function HRESULT(IOverlay *self, COLORKEY* pColorKey) SetColorKey;
				public function HRESULT(IOverlay *self, HWND* pHwnd) GetWindowHandle;
				public function HRESULT(IOverlay *self, RECT* pSourceRect, RECT* pDestinationRect, RGNDATA** ppRgnData) GetClipList;
				public function HRESULT(IOverlay *self, RECT* pSourceRect, RECT* pDestinationRect) GetVideoPosition;
				public function HRESULT(IOverlay *self, IOverlayNotify* pOverlayNotify, uint32 dwInterests) Advise;
				public function HRESULT(IOverlay *self) Unadvise;
			}
		}
		[CRepr]
		public struct IMediaEventSink : IUnknown
		{
			public const new Guid IID = .(0x56a868a2, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaEventSink *self, int32 EventCode, int EventParam1, int EventParam2) Notify;
			}
		}
		[CRepr]
		public struct IFileSourceFilter : IUnknown
		{
			public const new Guid IID = .(0x56a868a6, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFileSourceFilter *self, PWSTR pszFileName, AM_MEDIA_TYPE* pmt) Load;
				public function HRESULT(IFileSourceFilter *self, PWSTR* ppszFileName, AM_MEDIA_TYPE* pmt) GetCurFile;
			}
		}
		[CRepr]
		public struct IFileSinkFilter : IUnknown
		{
			public const new Guid IID = .(0xa2104830, 0x7c70, 0x11cf, 0x8b, 0xce, 0x00, 0xaa, 0x00, 0xa3, 0xf1, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFileSinkFilter *self, PWSTR pszFileName, AM_MEDIA_TYPE* pmt) SetFileName;
				public function HRESULT(IFileSinkFilter *self, PWSTR* ppszFileName, AM_MEDIA_TYPE* pmt) GetCurFile;
			}
		}
		[CRepr]
		public struct IFileSinkFilter2 : IFileSinkFilter
		{
			public const new Guid IID = .(0x00855b90, 0xce1b, 0x11d0, 0xbd, 0x4f, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFileSinkFilter.VTable
			{
				public function HRESULT(IFileSinkFilter2 *self, uint32 dwFlags) SetMode;
				public function HRESULT(IFileSinkFilter2 *self, uint32* pdwFlags) GetMode;
			}
		}
		[CRepr]
		public struct IGraphBuilder : IFilterGraph
		{
			public const new Guid IID = .(0x56a868a9, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFilterGraph.VTable
			{
				public function HRESULT(IGraphBuilder *self, IPin* ppinOut, IPin* ppinIn) Connect;
				public function HRESULT(IGraphBuilder *self, IPin* ppinOut) Render;
				public function HRESULT(IGraphBuilder *self, PWSTR lpcwstrFile, PWSTR lpcwstrPlayList) RenderFile;
				public function HRESULT(IGraphBuilder *self, PWSTR lpcwstrFileName, PWSTR lpcwstrFilterName, IBaseFilter** ppFilter) AddSourceFilter;
				public function HRESULT(IGraphBuilder *self, uint hFile) SetLogFile;
				public function HRESULT(IGraphBuilder *self) Abort;
				public function HRESULT(IGraphBuilder *self) ShouldOperationContinue;
			}
		}
		[CRepr]
		public struct ICaptureGraphBuilder : IUnknown
		{
			public const new Guid IID = .(0xbf87b6e0, 0x8c27, 0x11d0, 0xb3, 0xf0, 0x00, 0xaa, 0x00, 0x37, 0x61, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICaptureGraphBuilder *self, IGraphBuilder* pfg) SetFiltergraph;
				public function HRESULT(ICaptureGraphBuilder *self, IGraphBuilder** ppfg) GetFiltergraph;
				public function HRESULT(ICaptureGraphBuilder *self, Guid* pType, PWSTR lpstrFile, IBaseFilter** ppf, IFileSinkFilter** ppSink) SetOutputFileName;
				public function HRESULT(ICaptureGraphBuilder *self, Guid* pCategory, IBaseFilter* pf, Guid* riid, void** ppint) FindInterface;
				public function HRESULT(ICaptureGraphBuilder *self, Guid* pCategory, IUnknown* pSource, IBaseFilter* pfCompressor, IBaseFilter* pfRenderer) RenderStream;
				public function HRESULT(ICaptureGraphBuilder *self, Guid* pCategory, IBaseFilter* pFilter, int64* pstart, int64* pstop, uint16 wStartCookie, uint16 wStopCookie) ControlStream;
				public function HRESULT(ICaptureGraphBuilder *self, PWSTR lpstr, uint64 dwlSize) AllocCapFile;
				public function HRESULT(ICaptureGraphBuilder *self, PWSTR lpwstrOld, PWSTR lpwstrNew, int32 fAllowEscAbort, IAMCopyCaptureFileProgress* pCallback) CopyCaptureFile;
			}
		}
		[CRepr]
		public struct IAMCopyCaptureFileProgress : IUnknown
		{
			public const new Guid IID = .(0x670d1d20, 0xa068, 0x11d0, 0xb3, 0xf0, 0x00, 0xaa, 0x00, 0x37, 0x61, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMCopyCaptureFileProgress *self, int32 iProgress) Progress;
			}
		}
		[CRepr]
		public struct ICaptureGraphBuilder2 : IUnknown
		{
			public const new Guid IID = .(0x93e5a4e0, 0x2d50, 0x11d2, 0xab, 0xfa, 0x00, 0xa0, 0xc9, 0xc6, 0xe3, 0x8d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICaptureGraphBuilder2 *self, IGraphBuilder* pfg) SetFiltergraph;
				public function HRESULT(ICaptureGraphBuilder2 *self, IGraphBuilder** ppfg) GetFiltergraph;
				public function HRESULT(ICaptureGraphBuilder2 *self, Guid* pType, PWSTR lpstrFile, IBaseFilter** ppf, IFileSinkFilter** ppSink) SetOutputFileName;
				public function HRESULT(ICaptureGraphBuilder2 *self, Guid* pCategory, Guid* pType, IBaseFilter* pf, Guid* riid, void** ppint) FindInterface;
				public function HRESULT(ICaptureGraphBuilder2 *self, Guid* pCategory, Guid* pType, IUnknown* pSource, IBaseFilter* pfCompressor, IBaseFilter* pfRenderer) RenderStream;
				public function HRESULT(ICaptureGraphBuilder2 *self, Guid* pCategory, Guid* pType, IBaseFilter* pFilter, int64* pstart, int64* pstop, uint16 wStartCookie, uint16 wStopCookie) ControlStream;
				public function HRESULT(ICaptureGraphBuilder2 *self, PWSTR lpstr, uint64 dwlSize) AllocCapFile;
				public function HRESULT(ICaptureGraphBuilder2 *self, PWSTR lpwstrOld, PWSTR lpwstrNew, int32 fAllowEscAbort, IAMCopyCaptureFileProgress* pCallback) CopyCaptureFile;
				public function HRESULT(ICaptureGraphBuilder2 *self, IUnknown* pSource, PIN_DIRECTION pindir, Guid* pCategory, Guid* pType, BOOL fUnconnected, int32 num, IPin** ppPin) FindPin;
			}
		}
		[CRepr]
		public struct IFilterGraph2 : IGraphBuilder
		{
			public const new Guid IID = .(0x36b73882, 0xc2c8, 0x11cf, 0x8b, 0x46, 0x00, 0x80, 0x5f, 0x6c, 0xef, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IGraphBuilder.VTable
			{
				public function HRESULT(IFilterGraph2 *self, IMoniker* pMoniker, IBindCtx* pCtx, PWSTR lpcwstrFilterName, IBaseFilter** ppFilter) AddSourceFilterForMoniker;
				public function HRESULT(IFilterGraph2 *self, IPin* ppin, AM_MEDIA_TYPE* pmt) ReconnectEx;
				public function HRESULT(IFilterGraph2 *self, IPin* pPinOut, uint32 dwFlags, uint32* pvContext) RenderEx;
			}
		}
		[CRepr]
		public struct IFilterGraph3 : IFilterGraph2
		{
			public const new Guid IID = .(0xaaf38154, 0xb80b, 0x422f, 0x91, 0xe6, 0xb6, 0x64, 0x67, 0x50, 0x9a, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFilterGraph2.VTable
			{
				public function HRESULT(IFilterGraph3 *self, IReferenceClock* pClockForMostOfFilterGraph, IReferenceClock* pClockForFilter, IBaseFilter* pFilter) SetSyncSourceEx;
			}
		}
		[CRepr]
		public struct IStreamBuilder : IUnknown
		{
			public const new Guid IID = .(0x56a868bf, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBuilder *self, IPin* ppinOut, IGraphBuilder* pGraph) Render;
				public function HRESULT(IStreamBuilder *self, IPin* ppinOut, IGraphBuilder* pGraph) Backout;
			}
		}
		[CRepr]
		public struct IAsyncReader : IUnknown
		{
			public const new Guid IID = .(0x56a868aa, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAsyncReader *self, IMemAllocator* pPreferred, ALLOCATOR_PROPERTIES* pProps, IMemAllocator** ppActual) RequestAllocator;
				public function HRESULT(IAsyncReader *self, IMediaSample* pSample, uint dwUser) Request;
				public function HRESULT(IAsyncReader *self, uint32 dwTimeout, IMediaSample** ppSample, uint* pdwUser) WaitForNext;
				public function HRESULT(IAsyncReader *self, IMediaSample* pSample) SyncReadAligned;
				public function HRESULT(IAsyncReader *self, int64 llPosition, int32 lLength, uint8* pBuffer) SyncRead;
				public function HRESULT(IAsyncReader *self, int64* pTotal, int64* pAvailable) Length;
				public function HRESULT(IAsyncReader *self) BeginFlush;
				public function HRESULT(IAsyncReader *self) EndFlush;
			}
		}
		[CRepr]
		public struct IGraphVersion : IUnknown
		{
			public const new Guid IID = .(0x56a868ab, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGraphVersion *self, int32* pVersion) QueryVersion;
			}
		}
		[CRepr]
		public struct IResourceConsumer : IUnknown
		{
			public const new Guid IID = .(0x56a868ad, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IResourceConsumer *self, int32 idResource) AcquireResource;
				public function HRESULT(IResourceConsumer *self, int32 idResource) ReleaseResource;
			}
		}
		[CRepr]
		public struct IResourceManager : IUnknown
		{
			public const new Guid IID = .(0x56a868ac, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IResourceManager *self, PWSTR pName, int32 cResource, int32* plToken) Register;
				public function HRESULT(IResourceManager *self, PWSTR pName, int32 cResource, int32* palTokens, int32* plToken) RegisterGroup;
				public function HRESULT(IResourceManager *self, int32 idResource, IUnknown* pFocusObject, IResourceConsumer* pConsumer) RequestResource;
				public function HRESULT(IResourceManager *self, int32 idResource, IResourceConsumer* pConsumer, HRESULT hr) NotifyAcquire;
				public function HRESULT(IResourceManager *self, int32 idResource, IResourceConsumer* pConsumer, BOOL bStillWant) NotifyRelease;
				public function HRESULT(IResourceManager *self, int32 idResource, IResourceConsumer* pConsumer) CancelRequest;
				public function HRESULT(IResourceManager *self, IUnknown* pFocusObject) SetFocus;
				public function HRESULT(IResourceManager *self, IUnknown* pFocusObject) ReleaseFocus;
			}
		}
		[CRepr]
		public struct IDistributorNotify : IUnknown
		{
			public const new Guid IID = .(0x56a868af, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDistributorNotify *self) Stop;
				public function HRESULT(IDistributorNotify *self) Pause;
				public function HRESULT(IDistributorNotify *self, int64 tStart) Run;
				public function HRESULT(IDistributorNotify *self, IReferenceClock* pClock) SetSyncSource;
				public function HRESULT(IDistributorNotify *self) NotifyGraphChange;
			}
		}
		[CRepr]
		public struct IAMStreamControl : IUnknown
		{
			public const new Guid IID = .(0x36b73881, 0xc2c8, 0x11cf, 0x8b, 0x46, 0x00, 0x80, 0x5f, 0x6c, 0xef, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMStreamControl *self, int64* ptStart, uint32 dwCookie) StartAt;
				public function HRESULT(IAMStreamControl *self, int64* ptStop, BOOL bSendExtra, uint32 dwCookie) StopAt;
				public function HRESULT(IAMStreamControl *self, AM_STREAM_INFO* pInfo) GetInfo;
			}
		}
		[CRepr]
		public struct ISeekingPassThru : IUnknown
		{
			public const new Guid IID = .(0x36b73883, 0xc2c8, 0x11cf, 0x8b, 0x46, 0x00, 0x80, 0x5f, 0x6c, 0xef, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISeekingPassThru *self, BOOL bSupportRendering, IPin* pPin) Init;
			}
		}
		[CRepr]
		public struct IAMStreamConfig : IUnknown
		{
			public const new Guid IID = .(0xc6e13340, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMStreamConfig *self, AM_MEDIA_TYPE* pmt) SetFormat;
				public function HRESULT(IAMStreamConfig *self, AM_MEDIA_TYPE** ppmt) GetFormat;
				public function HRESULT(IAMStreamConfig *self, int32* piCount, int32* piSize) GetNumberOfCapabilities;
				public function HRESULT(IAMStreamConfig *self, int32 iIndex, AM_MEDIA_TYPE** ppmt, uint8* pSCC) GetStreamCaps;
			}
		}
		[CRepr]
		public struct IConfigInterleaving : IUnknown
		{
			public const new Guid IID = .(0xbee3d220, 0x157b, 0x11d0, 0xbd, 0x23, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConfigInterleaving *self, InterleavingMode mode) put_Mode;
				public function HRESULT(IConfigInterleaving *self, InterleavingMode* pMode) get_Mode;
				public function HRESULT(IConfigInterleaving *self, int64* prtInterleave, int64* prtPreroll) put_Interleaving;
				public function HRESULT(IConfigInterleaving *self, int64* prtInterleave, int64* prtPreroll) get_Interleaving;
			}
		}
		[CRepr]
		public struct IConfigAviMux : IUnknown
		{
			public const new Guid IID = .(0x5acd6aa0, 0xf482, 0x11ce, 0x8b, 0x67, 0x00, 0xaa, 0x00, 0xa3, 0xf1, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConfigAviMux *self, int32 iStream) SetMasterStream;
				public function HRESULT(IConfigAviMux *self, int32* pStream) GetMasterStream;
				public function HRESULT(IConfigAviMux *self, BOOL fOldIndex) SetOutputCompatibilityIndex;
				public function HRESULT(IConfigAviMux *self, BOOL* pfOldIndex) GetOutputCompatibilityIndex;
			}
		}
		[CRepr]
		public struct IAMVideoCompression : IUnknown
		{
			public const new Guid IID = .(0xc6e13343, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVideoCompression *self, int32 KeyFrameRate) put_KeyFrameRate;
				public function HRESULT(IAMVideoCompression *self, int32* pKeyFrameRate) get_KeyFrameRate;
				public function HRESULT(IAMVideoCompression *self, int32 PFramesPerKeyFrame) put_PFramesPerKeyFrame;
				public function HRESULT(IAMVideoCompression *self, int32* pPFramesPerKeyFrame) get_PFramesPerKeyFrame;
				public function HRESULT(IAMVideoCompression *self, double Quality) put_Quality;
				public function HRESULT(IAMVideoCompression *self, double* pQuality) get_Quality;
				public function HRESULT(IAMVideoCompression *self, uint64 WindowSize) put_WindowSize;
				public function HRESULT(IAMVideoCompression *self, uint64* pWindowSize) get_WindowSize;
				public function HRESULT(IAMVideoCompression *self, PWSTR pszVersion, int32* pcbVersion, PWSTR pszDescription, int32* pcbDescription, int32* pDefaultKeyFrameRate, int32* pDefaultPFramesPerKey, double* pDefaultQuality, int32* pCapabilities) GetInfo;
				public function HRESULT(IAMVideoCompression *self, int32 FrameNumber) OverrideKeyFrame;
				public function HRESULT(IAMVideoCompression *self, int32 FrameNumber, int32 Size) OverrideFrameSize;
			}
		}
		[CRepr]
		public struct IAMVfwCaptureDialogs : IUnknown
		{
			public const new Guid IID = .(0xd8d715a0, 0x6e5e, 0x11d0, 0xb3, 0xf0, 0x00, 0xaa, 0x00, 0x37, 0x61, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVfwCaptureDialogs *self, int32 iDialog) HasDialog;
				public function HRESULT(IAMVfwCaptureDialogs *self, int32 iDialog, HWND hwnd) ShowDialog;
				public function HRESULT(IAMVfwCaptureDialogs *self, int32 iDialog, int32 uMsg, int32 dw1, int32 dw2) SendDriverMessage;
			}
		}
		[CRepr]
		public struct IAMVfwCompressDialogs : IUnknown
		{
			public const new Guid IID = .(0xd8d715a3, 0x6e5e, 0x11d0, 0xb3, 0xf0, 0x00, 0xaa, 0x00, 0x37, 0x61, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVfwCompressDialogs *self, int32 iDialog, HWND hwnd) ShowDialog;
				public function HRESULT(IAMVfwCompressDialogs *self, void* pState, int32* pcbState) GetState;
				public function HRESULT(IAMVfwCompressDialogs *self, void* pState, int32 cbState) SetState;
				public function HRESULT(IAMVfwCompressDialogs *self, int32 uMsg, int32 dw1, int32 dw2) SendDriverMessage;
			}
		}
		[CRepr]
		public struct IAMDroppedFrames : IUnknown
		{
			public const new Guid IID = .(0xc6e13344, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMDroppedFrames *self, int32* plDropped) GetNumDropped;
				public function HRESULT(IAMDroppedFrames *self, int32* plNotDropped) GetNumNotDropped;
				public function HRESULT(IAMDroppedFrames *self, int32 lSize, int32* plArray, int32* plNumCopied) GetDroppedInfo;
				public function HRESULT(IAMDroppedFrames *self, int32* plAverageSize) GetAverageFrameSize;
			}
		}
		[CRepr]
		public struct IAMAudioInputMixer : IUnknown
		{
			public const new Guid IID = .(0x54c39221, 0x8380, 0x11d0, 0xb3, 0xf0, 0x00, 0xaa, 0x00, 0x37, 0x61, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMAudioInputMixer *self, BOOL fEnable) put_Enable;
				public function HRESULT(IAMAudioInputMixer *self, BOOL* pfEnable) get_Enable;
				public function HRESULT(IAMAudioInputMixer *self, BOOL fMono) put_Mono;
				public function HRESULT(IAMAudioInputMixer *self, BOOL* pfMono) get_Mono;
				public function HRESULT(IAMAudioInputMixer *self, double Level) put_MixLevel;
				public function HRESULT(IAMAudioInputMixer *self, double* pLevel) get_MixLevel;
				public function HRESULT(IAMAudioInputMixer *self, double Pan) put_Pan;
				public function HRESULT(IAMAudioInputMixer *self, double* pPan) get_Pan;
				public function HRESULT(IAMAudioInputMixer *self, BOOL fLoudness) put_Loudness;
				public function HRESULT(IAMAudioInputMixer *self, BOOL* pfLoudness) get_Loudness;
				public function HRESULT(IAMAudioInputMixer *self, double Treble) put_Treble;
				public function HRESULT(IAMAudioInputMixer *self, double* pTreble) get_Treble;
				public function HRESULT(IAMAudioInputMixer *self, double* pRange) get_TrebleRange;
				public function HRESULT(IAMAudioInputMixer *self, double Bass) put_Bass;
				public function HRESULT(IAMAudioInputMixer *self, double* pBass) get_Bass;
				public function HRESULT(IAMAudioInputMixer *self, double* pRange) get_BassRange;
			}
		}
		[CRepr]
		public struct IAMBufferNegotiation : IUnknown
		{
			public const new Guid IID = .(0x56ed71a0, 0xaf5f, 0x11d0, 0xb3, 0xf0, 0x00, 0xaa, 0x00, 0x37, 0x61, 0xc5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMBufferNegotiation *self, ALLOCATOR_PROPERTIES* pprop) SuggestAllocatorProperties;
				public function HRESULT(IAMBufferNegotiation *self, ALLOCATOR_PROPERTIES* pprop) GetAllocatorProperties;
			}
		}
		[CRepr]
		public struct IAMAnalogVideoDecoder : IUnknown
		{
			public const new Guid IID = .(0xc6e13350, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMAnalogVideoDecoder *self, int32* lAnalogVideoStandard) get_AvailableTVFormats;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32 lAnalogVideoStandard) put_TVFormat;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32* plAnalogVideoStandard) get_TVFormat;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32* plLocked) get_HorizontalLocked;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32 lVCRHorizontalLocking) put_VCRHorizontalLocking;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32* plVCRHorizontalLocking) get_VCRHorizontalLocking;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32* plNumberOfLines) get_NumberOfLines;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32 lOutputEnable) put_OutputEnable;
				public function HRESULT(IAMAnalogVideoDecoder *self, int32* plOutputEnable) get_OutputEnable;
			}
		}
		[CRepr]
		public struct IAMVideoProcAmp : IUnknown
		{
			public const new Guid IID = .(0xc6e13360, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVideoProcAmp *self, int32 Property, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlags) GetRange;
				public function HRESULT(IAMVideoProcAmp *self, int32 Property, int32 lValue, int32 Flags) Set;
				public function HRESULT(IAMVideoProcAmp *self, int32 Property, int32* lValue, int32* Flags) Get;
			}
		}
		[CRepr]
		public struct IAMCameraControl : IUnknown
		{
			public const new Guid IID = .(0xc6e13370, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMCameraControl *self, int32 Property, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlags) GetRange;
				public function HRESULT(IAMCameraControl *self, int32 Property, int32 lValue, int32 Flags) Set;
				public function HRESULT(IAMCameraControl *self, int32 Property, int32* lValue, int32* Flags) Get;
			}
		}
		[CRepr]
		public struct IAMVideoControl : IUnknown
		{
			public const new Guid IID = .(0x6a2e0670, 0x28e4, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVideoControl *self, IPin* pPin, int32* pCapsFlags) GetCaps;
				public function HRESULT(IAMVideoControl *self, IPin* pPin, int32 Mode) SetMode;
				public function HRESULT(IAMVideoControl *self, IPin* pPin, int32* Mode) GetMode;
				public function HRESULT(IAMVideoControl *self, IPin* pPin, int64* ActualFrameRate) GetCurrentActualFrameRate;
				public function HRESULT(IAMVideoControl *self, IPin* pPin, int32 iIndex, SIZE Dimensions, int64* MaxAvailableFrameRate) GetMaxAvailableFrameRate;
				public function HRESULT(IAMVideoControl *self, IPin* pPin, int32 iIndex, SIZE Dimensions, int32* ListSize, int64** FrameRates) GetFrameRateList;
			}
		}
		[CRepr]
		public struct IAMCrossbar : IUnknown
		{
			public const new Guid IID = .(0xc6e13380, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMCrossbar *self, int32* OutputPinCount, int32* InputPinCount) get_PinCounts;
				public function HRESULT(IAMCrossbar *self, int32 OutputPinIndex, int32 InputPinIndex) CanRoute;
				public function HRESULT(IAMCrossbar *self, int32 OutputPinIndex, int32 InputPinIndex) Route;
				public function HRESULT(IAMCrossbar *self, int32 OutputPinIndex, int32* InputPinIndex) get_IsRoutedTo;
				public function HRESULT(IAMCrossbar *self, BOOL IsInputPin, int32 PinIndex, int32* PinIndexRelated, int32* PhysicalType) get_CrossbarPinInfo;
			}
		}
		[CRepr]
		public struct IAMTuner : IUnknown
		{
			public const new Guid IID = .(0x211a8761, 0x03ac, 0x11d1, 0x8d, 0x13, 0x00, 0xaa, 0x00, 0xbd, 0x83, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTuner *self, int32 lChannel, int32 lVideoSubChannel, int32 lAudioSubChannel) put_Channel;
				public function HRESULT(IAMTuner *self, int32* plChannel, int32* plVideoSubChannel, int32* plAudioSubChannel) get_Channel;
				public function HRESULT(IAMTuner *self, int32* lChannelMin, int32* lChannelMax) ChannelMinMax;
				public function HRESULT(IAMTuner *self, int32 lCountryCode) put_CountryCode;
				public function HRESULT(IAMTuner *self, int32* plCountryCode) get_CountryCode;
				public function HRESULT(IAMTuner *self, int32 lTuningSpace) put_TuningSpace;
				public function HRESULT(IAMTuner *self, int32* plTuningSpace) get_TuningSpace;
				public function HRESULT(IAMTuner *self, HANDLE hCurrentUser) Logon;
				public function HRESULT(IAMTuner *self) Logout;
				public function HRESULT(IAMTuner *self, int32* plSignalStrength) SignalPresent;
				public function HRESULT(IAMTuner *self, AMTunerModeType lMode) put_Mode;
				public function HRESULT(IAMTuner *self, AMTunerModeType* plMode) get_Mode;
				public function HRESULT(IAMTuner *self, int32* plModes) GetAvailableModes;
				public function HRESULT(IAMTuner *self, IAMTunerNotification* pNotify, int32 lEvents) RegisterNotificationCallBack;
				public function HRESULT(IAMTuner *self, IAMTunerNotification* pNotify) UnRegisterNotificationCallBack;
			}
		}
		[CRepr]
		public struct IAMTunerNotification : IUnknown
		{
			public const new Guid IID = .(0x211a8760, 0x03ac, 0x11d1, 0x8d, 0x13, 0x00, 0xaa, 0x00, 0xbd, 0x83, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTunerNotification *self, AMTunerEventType Event) OnEvent;
			}
		}
		[CRepr]
		public struct IAMTVTuner : IAMTuner
		{
			public const new Guid IID = .(0x211a8766, 0x03ac, 0x11d1, 0x8d, 0x13, 0x00, 0xaa, 0x00, 0xbd, 0x83, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAMTuner.VTable
			{
				public function HRESULT(IAMTVTuner *self, int32* lAnalogVideoStandard) get_AvailableTVFormats;
				public function HRESULT(IAMTVTuner *self, int32* plAnalogVideoStandard) get_TVFormat;
				public function HRESULT(IAMTVTuner *self, int32 lChannel, int32* plFoundSignal) AutoTune;
				public function HRESULT(IAMTVTuner *self) StoreAutoTune;
				public function HRESULT(IAMTVTuner *self, int32* plNumInputConnections) get_NumInputConnections;
				public function HRESULT(IAMTVTuner *self, int32 lIndex, TunerInputType InputType) put_InputType;
				public function HRESULT(IAMTVTuner *self, int32 lIndex, TunerInputType* pInputType) get_InputType;
				public function HRESULT(IAMTVTuner *self, int32 lIndex) put_ConnectInput;
				public function HRESULT(IAMTVTuner *self, int32* plIndex) get_ConnectInput;
				public function HRESULT(IAMTVTuner *self, int32* lFreq) get_VideoFrequency;
				public function HRESULT(IAMTVTuner *self, int32* lFreq) get_AudioFrequency;
			}
		}
		[CRepr]
		public struct IBPCSatelliteTuner : IAMTuner
		{
			public const new Guid IID = .(0x211a8765, 0x03ac, 0x11d1, 0x8d, 0x13, 0x00, 0xaa, 0x00, 0xbd, 0x83, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAMTuner.VTable
			{
				public function HRESULT(IBPCSatelliteTuner *self, int32* plDefaultVideoType, int32* plDefaultAudioType) get_DefaultSubChannelTypes;
				public function HRESULT(IBPCSatelliteTuner *self, int32 lDefaultVideoType, int32 lDefaultAudioType) put_DefaultSubChannelTypes;
				public function HRESULT(IBPCSatelliteTuner *self) IsTapingPermitted;
			}
		}
		[CRepr]
		public struct IAMTVAudio : IUnknown
		{
			public const new Guid IID = .(0x83ec1c30, 0x23d1, 0x11d1, 0x99, 0xe6, 0x00, 0xa0, 0xc9, 0x56, 0x02, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTVAudio *self, int32* plModes) GetHardwareSupportedTVAudioModes;
				public function HRESULT(IAMTVAudio *self, int32* plModes) GetAvailableTVAudioModes;
				public function HRESULT(IAMTVAudio *self, int32* plMode) get_TVAudioMode;
				public function HRESULT(IAMTVAudio *self, int32 lMode) put_TVAudioMode;
				public function HRESULT(IAMTVAudio *self, IAMTunerNotification* pNotify, int32 lEvents) RegisterNotificationCallBack;
				public function HRESULT(IAMTVAudio *self, IAMTunerNotification* pNotify) UnRegisterNotificationCallBack;
			}
		}
		[CRepr]
		public struct IAMTVAudioNotification : IUnknown
		{
			public const new Guid IID = .(0x83ec1c33, 0x23d1, 0x11d1, 0x99, 0xe6, 0x00, 0xa0, 0xc9, 0x56, 0x02, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTVAudioNotification *self, AMTVAudioEventType Event) OnEvent;
			}
		}
		[CRepr]
		public struct IAMAnalogVideoEncoder : IUnknown
		{
			public const new Guid IID = .(0xc6e133b0, 0x30ac, 0x11d0, 0xa1, 0x8c, 0x00, 0xa0, 0xc9, 0x11, 0x89, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMAnalogVideoEncoder *self, int32* lAnalogVideoStandard) get_AvailableTVFormats;
				public function HRESULT(IAMAnalogVideoEncoder *self, int32 lAnalogVideoStandard) put_TVFormat;
				public function HRESULT(IAMAnalogVideoEncoder *self, int32* plAnalogVideoStandard) get_TVFormat;
				public function HRESULT(IAMAnalogVideoEncoder *self, int32 lVideoCopyProtection) put_CopyProtection;
				public function HRESULT(IAMAnalogVideoEncoder *self, int32* lVideoCopyProtection) get_CopyProtection;
				public function HRESULT(IAMAnalogVideoEncoder *self, int32 lCCEnable) put_CCEnable;
				public function HRESULT(IAMAnalogVideoEncoder *self, int32* lCCEnable) get_CCEnable;
			}
		}
		[CRepr]
		public struct IMediaPropertyBag : IPropertyBag
		{
			public const new Guid IID = .(0x6025a880, 0xc0d5, 0x11d0, 0xbd, 0x4e, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPropertyBag.VTable
			{
				public function HRESULT(IMediaPropertyBag *self, uint32 iProperty, VARIANT* pvarPropertyName, VARIANT* pvarPropertyValue) EnumProperty;
			}
		}
		[CRepr]
		public struct IPersistMediaPropertyBag : IPersist
		{
			public const new Guid IID = .(0x5738e040, 0xb67f, 0x11d0, 0xbd, 0x4d, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IPersistMediaPropertyBag *self) InitNew;
				public function HRESULT(IPersistMediaPropertyBag *self, IMediaPropertyBag* pPropBag, IErrorLog* pErrorLog) Load;
				public function HRESULT(IPersistMediaPropertyBag *self, IMediaPropertyBag* pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) Save;
			}
		}
		[CRepr]
		public struct IAMPhysicalPinInfo : IUnknown
		{
			public const new Guid IID = .(0xf938c991, 0x3029, 0x11cf, 0x8c, 0x44, 0x00, 0xaa, 0x00, 0x6b, 0x68, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMPhysicalPinInfo *self, int32* pType, PWSTR* ppszType) GetPhysicalType;
			}
		}
		[CRepr]
		public struct IAMExtDevice : IUnknown
		{
			public const new Guid IID = .(0xb5730a90, 0x1a2c, 0x11cf, 0x8c, 0x23, 0x00, 0xaa, 0x00, 0x6b, 0x68, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMExtDevice *self, int32 Capability, int32* pValue, double* pdblValue) GetCapability;
				public function HRESULT(IAMExtDevice *self, PWSTR* ppszData) get_ExternalDeviceID;
				public function HRESULT(IAMExtDevice *self, PWSTR* ppszData) get_ExternalDeviceVersion;
				public function HRESULT(IAMExtDevice *self, int32 PowerMode) put_DevicePower;
				public function HRESULT(IAMExtDevice *self, int32* pPowerMode) get_DevicePower;
				public function HRESULT(IAMExtDevice *self, uint hEvent, int32 Mode, int32* pStatus) Calibrate;
				public function HRESULT(IAMExtDevice *self, int32 DevicePort) put_DevicePort;
				public function HRESULT(IAMExtDevice *self, int32* pDevicePort) get_DevicePort;
			}
		}
		[CRepr]
		public struct IAMExtTransport : IUnknown
		{
			public const new Guid IID = .(0xa03cd5f0, 0x3045, 0x11cf, 0x8c, 0x44, 0x00, 0xaa, 0x00, 0x6b, 0x68, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMExtTransport *self, int32 Capability, int32* pValue, double* pdblValue) GetCapability;
				public function HRESULT(IAMExtTransport *self, int32 State) put_MediaState;
				public function HRESULT(IAMExtTransport *self, int32* pState) get_MediaState;
				public function HRESULT(IAMExtTransport *self, int32 State) put_LocalControl;
				public function HRESULT(IAMExtTransport *self, int32* pState) get_LocalControl;
				public function HRESULT(IAMExtTransport *self, int32 StatusItem, int32* pValue) GetStatus;
				public function HRESULT(IAMExtTransport *self, int32 Param, int32* pValue, PWSTR* ppszData) GetTransportBasicParameters;
				public function HRESULT(IAMExtTransport *self, int32 Param, int32 Value, PWSTR pszData) SetTransportBasicParameters;
				public function HRESULT(IAMExtTransport *self, int32 Param, int32* pValue) GetTransportVideoParameters;
				public function HRESULT(IAMExtTransport *self, int32 Param, int32 Value) SetTransportVideoParameters;
				public function HRESULT(IAMExtTransport *self, int32 Param, int32* pValue) GetTransportAudioParameters;
				public function HRESULT(IAMExtTransport *self, int32 Param, int32 Value) SetTransportAudioParameters;
				public function HRESULT(IAMExtTransport *self, int32 Mode) put_Mode;
				public function HRESULT(IAMExtTransport *self, int32* pMode) get_Mode;
				public function HRESULT(IAMExtTransport *self, double dblRate) put_Rate;
				public function HRESULT(IAMExtTransport *self, double* pdblRate) get_Rate;
				public function HRESULT(IAMExtTransport *self, int32* pEnabled, int32* pOffset, uint* phEvent) GetChase;
				public function HRESULT(IAMExtTransport *self, int32 Enable, int32 Offset, uint hEvent) SetChase;
				public function HRESULT(IAMExtTransport *self, int32* pSpeed, int32* pDuration) GetBump;
				public function HRESULT(IAMExtTransport *self, int32 Speed, int32 Duration) SetBump;
				public function HRESULT(IAMExtTransport *self, int32* pEnabled) get_AntiClogControl;
				public function HRESULT(IAMExtTransport *self, int32 Enable) put_AntiClogControl;
				public function HRESULT(IAMExtTransport *self, int32 EditID, int32* pState) GetEditPropertySet;
				public function HRESULT(IAMExtTransport *self, int32* pEditID, int32 State) SetEditPropertySet;
				public function HRESULT(IAMExtTransport *self, int32 EditID, int32 Param, int32* pValue) GetEditProperty;
				public function HRESULT(IAMExtTransport *self, int32 EditID, int32 Param, int32 Value) SetEditProperty;
				public function HRESULT(IAMExtTransport *self, int32* pValue) get_EditStart;
				public function HRESULT(IAMExtTransport *self, int32 Value) put_EditStart;
			}
		}
		[CRepr]
		public struct IAMTimecodeReader : IUnknown
		{
			public const new Guid IID = .(0x9b496ce1, 0x811b, 0x11cf, 0x8c, 0x77, 0x00, 0xaa, 0x00, 0x6b, 0x68, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTimecodeReader *self, int32 Param, int32* pValue) GetTCRMode;
				public function HRESULT(IAMTimecodeReader *self, int32 Param, int32 Value) SetTCRMode;
				public function HRESULT(IAMTimecodeReader *self, int32 Line) put_VITCLine;
				public function HRESULT(IAMTimecodeReader *self, int32* pLine) get_VITCLine;
				public function HRESULT(IAMTimecodeReader *self, TIMECODE_SAMPLE* pTimecodeSample) GetTimecode;
			}
		}
		[CRepr]
		public struct IAMTimecodeGenerator : IUnknown
		{
			public const new Guid IID = .(0x9b496ce0, 0x811b, 0x11cf, 0x8c, 0x77, 0x00, 0xaa, 0x00, 0x6b, 0x68, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTimecodeGenerator *self, int32 Param, int32* pValue) GetTCGMode;
				public function HRESULT(IAMTimecodeGenerator *self, int32 Param, int32 Value) SetTCGMode;
				public function HRESULT(IAMTimecodeGenerator *self, int32 Line) put_VITCLine;
				public function HRESULT(IAMTimecodeGenerator *self, int32* pLine) get_VITCLine;
				public function HRESULT(IAMTimecodeGenerator *self, TIMECODE_SAMPLE* pTimecodeSample) SetTimecode;
				public function HRESULT(IAMTimecodeGenerator *self, TIMECODE_SAMPLE* pTimecodeSample) GetTimecode;
			}
		}
		[CRepr]
		public struct IAMTimecodeDisplay : IUnknown
		{
			public const new Guid IID = .(0x9b496ce2, 0x811b, 0x11cf, 0x8c, 0x77, 0x00, 0xaa, 0x00, 0x6b, 0x68, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMTimecodeDisplay *self, int32* pState) GetTCDisplayEnable;
				public function HRESULT(IAMTimecodeDisplay *self, int32 State) SetTCDisplayEnable;
				public function HRESULT(IAMTimecodeDisplay *self, int32 Param, int32* pValue) GetTCDisplay;
				public function HRESULT(IAMTimecodeDisplay *self, int32 Param, int32 Value) SetTCDisplay;
			}
		}
		[CRepr]
		public struct IAMDevMemoryAllocator : IUnknown
		{
			public const new Guid IID = .(0xc6545bf0, 0xe76b, 0x11d0, 0xbd, 0x52, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMDevMemoryAllocator *self, uint32* pdwcbTotalFree, uint32* pdwcbLargestFree, uint32* pdwcbTotalMemory, uint32* pdwcbMinimumChunk) GetInfo;
				public function HRESULT(IAMDevMemoryAllocator *self, uint8* pBuffer) CheckMemory;
				public function HRESULT(IAMDevMemoryAllocator *self, uint8** ppBuffer, uint32* pdwcbBuffer) Alloc;
				public function HRESULT(IAMDevMemoryAllocator *self, uint8* pBuffer) Free;
				public function HRESULT(IAMDevMemoryAllocator *self, IUnknown** ppUnkInnner, IUnknown* pUnkOuter) GetDevMemoryObject;
			}
		}
		[CRepr]
		public struct IAMDevMemoryControl : IUnknown
		{
			public const new Guid IID = .(0xc6545bf1, 0xe76b, 0x11d0, 0xbd, 0x52, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMDevMemoryControl *self) QueryWriteSync;
				public function HRESULT(IAMDevMemoryControl *self) WriteSync;
				public function HRESULT(IAMDevMemoryControl *self, uint32* pdwDevId) GetDevId;
			}
		}
		[CRepr]
		public struct IAMStreamSelect : IUnknown
		{
			public const new Guid IID = .(0xc1960960, 0x17f5, 0x11d1, 0xab, 0xe1, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMStreamSelect *self, uint32* pcStreams) Count;
				public function HRESULT(IAMStreamSelect *self, int32 lIndex, AM_MEDIA_TYPE** ppmt, uint32* pdwFlags, uint32* plcid, uint32* pdwGroup, PWSTR* ppszName, IUnknown** ppObject, IUnknown** ppUnk) Info;
				public function HRESULT(IAMStreamSelect *self, int32 lIndex, uint32 dwFlags) Enable;
			}
		}
		[CRepr]
		public struct IAMResourceControl : IUnknown
		{
			public const new Guid IID = .(0x8389d2d0, 0x77d7, 0x11d1, 0xab, 0xe6, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMResourceControl *self, uint32 dwFlags, void* pvReserved) Reserve;
			}
		}
		[CRepr]
		public struct IAMClockAdjust : IUnknown
		{
			public const new Guid IID = .(0x4d5466b0, 0xa49c, 0x11d1, 0xab, 0xe8, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMClockAdjust *self, int64 rtDelta) SetClockDelta;
			}
		}
		[CRepr]
		public struct IAMFilterMiscFlags : IUnknown
		{
			public const new Guid IID = .(0x2dd74950, 0xa890, 0x11d1, 0xab, 0xe8, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint32(IAMFilterMiscFlags *self) GetMiscFlags;
			}
		}
		[CRepr]
		public struct IDrawVideoImage : IUnknown
		{
			public const new Guid IID = .(0x48efb120, 0xab49, 0x11d2, 0xae, 0xd2, 0x00, 0xa0, 0xc9, 0x95, 0xe8, 0xd5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDrawVideoImage *self) DrawVideoImageBegin;
				public function HRESULT(IDrawVideoImage *self) DrawVideoImageEnd;
				public function HRESULT(IDrawVideoImage *self, HDC hdc, RECT* lprcSrc, RECT* lprcDst) DrawVideoImageDraw;
			}
		}
		[CRepr]
		public struct IDecimateVideoImage : IUnknown
		{
			public const new Guid IID = .(0x2e5ea3e0, 0xe924, 0x11d2, 0xb6, 0xda, 0x00, 0xa0, 0xc9, 0x95, 0xe8, 0xdf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDecimateVideoImage *self, int32 lWidth, int32 lHeight) SetDecimationImageSize;
				public function HRESULT(IDecimateVideoImage *self) ResetDecimationImageSize;
			}
		}
		[CRepr]
		public struct IAMVideoDecimationProperties : IUnknown
		{
			public const new Guid IID = .(0x60d32930, 0x13da, 0x11d3, 0x9e, 0xc6, 0xc4, 0xfc, 0xae, 0xf5, 0xc7, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVideoDecimationProperties *self, DECIMATION_USAGE* lpUsage) QueryDecimationUsage;
				public function HRESULT(IAMVideoDecimationProperties *self, DECIMATION_USAGE Usage) SetDecimationUsage;
			}
		}
		[CRepr]
		public struct IVideoFrameStep : IUnknown
		{
			public const new Guid IID = .(0xe46a9787, 0x2b71, 0x444d, 0xa4, 0xb5, 0x1f, 0xab, 0x7b, 0x70, 0x8d, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVideoFrameStep *self, uint32 dwFrames, IUnknown* pStepObject) Step;
				public function HRESULT(IVideoFrameStep *self, int32 bMultiple, IUnknown* pStepObject) CanStep;
				public function HRESULT(IVideoFrameStep *self) CancelStep;
			}
		}
		[CRepr]
		public struct IAMLatency : IUnknown
		{
			public const new Guid IID = .(0x62ea93ba, 0xec62, 0x11d2, 0xb7, 0x70, 0x00, 0xc0, 0x4f, 0xb6, 0xbd, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMLatency *self, int64* prtLatency) GetLatency;
			}
		}
		[CRepr]
		public struct IAMPushSource : IAMLatency
		{
			public const new Guid IID = .(0xf185fe76, 0xe64e, 0x11d2, 0xb7, 0x6e, 0x00, 0xc0, 0x4f, 0xb6, 0xbd, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAMLatency.VTable
			{
				public function HRESULT(IAMPushSource *self, uint32* pFlags) GetPushSourceFlags;
				public function HRESULT(IAMPushSource *self, uint32 Flags) SetPushSourceFlags;
				public function HRESULT(IAMPushSource *self, int64 rtOffset) SetStreamOffset;
				public function HRESULT(IAMPushSource *self, int64* prtOffset) GetStreamOffset;
				public function HRESULT(IAMPushSource *self, int64* prtMaxOffset) GetMaxStreamOffset;
				public function HRESULT(IAMPushSource *self, int64 rtMaxOffset) SetMaxStreamOffset;
			}
		}
		[CRepr]
		public struct IAMDeviceRemoval : IUnknown
		{
			public const new Guid IID = .(0xf90a6130, 0xb658, 0x11d2, 0xae, 0x49, 0x00, 0x00, 0xf8, 0x75, 0x4b, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMDeviceRemoval *self, Guid* pclsidInterfaceClass, PWSTR* pwszSymbolicLink) DeviceInfo;
				public function HRESULT(IAMDeviceRemoval *self) Reassociate;
				public function HRESULT(IAMDeviceRemoval *self) Disassociate;
			}
		}
		[CRepr]
		public struct IDVEnc : IUnknown
		{
			public const new Guid IID = .(0xd18e17a0, 0xaacb, 0x11d0, 0xaf, 0xb0, 0x00, 0xaa, 0x00, 0xb6, 0x7a, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVEnc *self, int32* VideoFormat, int32* DVFormat, int32* Resolution, uint8 fDVInfo, DVINFO* sDVInfo) get_IFormatResolution;
				public function HRESULT(IDVEnc *self, int32 VideoFormat, int32 DVFormat, int32 Resolution, uint8 fDVInfo, DVINFO* sDVInfo) put_IFormatResolution;
			}
		}
		[CRepr]
		public struct IIPDVDec : IUnknown
		{
			public const new Guid IID = .(0xb8e8bd60, 0x0bfe, 0x11d0, 0xaf, 0x91, 0x00, 0xaa, 0x00, 0xb6, 0x7a, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIPDVDec *self, int32* displayPix) get_IPDisplay;
				public function HRESULT(IIPDVDec *self, int32 displayPix) put_IPDisplay;
			}
		}
		[CRepr]
		public struct IDVRGB219 : IUnknown
		{
			public const new Guid IID = .(0x58473a19, 0x2bc8, 0x4663, 0x80, 0x12, 0x25, 0xf8, 0x1b, 0xab, 0xdd, 0xd1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVRGB219 *self, BOOL bState) SetRGB219;
			}
		}
		[CRepr]
		public struct IDVSplitter : IUnknown
		{
			public const new Guid IID = .(0x92a3a302, 0xda7c, 0x4a1f, 0xba, 0x7e, 0x18, 0x02, 0xbb, 0x5d, 0x2d, 0x02);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVSplitter *self, int32 nDiscard) DiscardAlternateVideoFrames;
			}
		}
		[CRepr]
		public struct IAMAudioRendererStats : IUnknown
		{
			public const new Guid IID = .(0x22320cb2, 0xd41a, 0x11d2, 0xbf, 0x7c, 0xd7, 0xcb, 0x9d, 0xf0, 0xbf, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMAudioRendererStats *self, uint32 dwParam, uint32* pdwParam1, uint32* pdwParam2) GetStatParam;
			}
		}
		[CRepr]
		public struct IAMGraphStreams : IUnknown
		{
			public const new Guid IID = .(0x632105fa, 0x072e, 0x11d3, 0x8a, 0xf9, 0x00, 0xc0, 0x4f, 0xb6, 0xbd, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMGraphStreams *self, IPin* pPin, Guid* riid, void** ppvInterface, uint32 dwFlags) FindUpstreamInterface;
				public function HRESULT(IAMGraphStreams *self, BOOL bUseStreamOffset) SyncUsingStreamOffset;
				public function HRESULT(IAMGraphStreams *self, int64 rtMaxGraphLatency) SetMaxGraphLatency;
			}
		}
		[CRepr]
		public struct IAMOverlayFX : IUnknown
		{
			public const new Guid IID = .(0x62fae250, 0x7e65, 0x4460, 0xbf, 0xc9, 0x63, 0x98, 0xb3, 0x22, 0x07, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMOverlayFX *self, uint32* lpdwOverlayFXCaps) QueryOverlayFXCaps;
				public function HRESULT(IAMOverlayFX *self, uint32 dwOverlayFX) SetOverlayFX;
				public function HRESULT(IAMOverlayFX *self, uint32* lpdwOverlayFX) GetOverlayFX;
			}
		}
		[CRepr]
		public struct IAMOpenProgress : IUnknown
		{
			public const new Guid IID = .(0x8e1c39a1, 0xde53, 0x11cf, 0xaa, 0x63, 0x00, 0x80, 0xc7, 0x44, 0x52, 0x8d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMOpenProgress *self, int64* pllTotal, int64* pllCurrent) QueryProgress;
				public function HRESULT(IAMOpenProgress *self) AbortOperation;
			}
		}
		[CRepr]
		public struct IMpeg2Demultiplexer : IUnknown
		{
			public const new Guid IID = .(0x436eee9c, 0x264f, 0x4242, 0x90, 0xe1, 0x4e, 0x33, 0x0c, 0x10, 0x75, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMpeg2Demultiplexer *self, AM_MEDIA_TYPE* pMediaType, PWSTR pszPinName, IPin** ppIPin) CreateOutputPin;
				public function HRESULT(IMpeg2Demultiplexer *self, PWSTR pszPinName, AM_MEDIA_TYPE* pMediaType) SetOutputPinMediaType;
				public function HRESULT(IMpeg2Demultiplexer *self, PWSTR pszPinName) DeleteOutputPin;
			}
		}
		[CRepr]
		public struct IEnumStreamIdMap : IUnknown
		{
			public const new Guid IID = .(0x945c1566, 0x6202, 0x46fc, 0x96, 0xc7, 0xd8, 0x7f, 0x28, 0x9c, 0x65, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumStreamIdMap *self, uint32 cRequest, STREAM_ID_MAP* pStreamIdMap, uint32* pcReceived) Next;
				public function HRESULT(IEnumStreamIdMap *self, uint32 cRecords) Skip;
				public function HRESULT(IEnumStreamIdMap *self) Reset;
				public function HRESULT(IEnumStreamIdMap *self, IEnumStreamIdMap** ppIEnumStreamIdMap) Clone;
			}
		}
		[CRepr]
		public struct IMPEG2StreamIdMap : IUnknown
		{
			public const new Guid IID = .(0xd0e04c47, 0x25b8, 0x4369, 0x92, 0x5a, 0x36, 0x2a, 0x01, 0xd9, 0x54, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMPEG2StreamIdMap *self, uint32 ulStreamId, uint32 MediaSampleContent, uint32 ulSubstreamFilterValue, int32 iDataOffset) MapStreamId;
				public function HRESULT(IMPEG2StreamIdMap *self, uint32 culStreamId, uint32* pulStreamId) UnmapStreamId;
				public function HRESULT(IMPEG2StreamIdMap *self, IEnumStreamIdMap** ppIEnumStreamIdMap) EnumStreamIdMap;
			}
		}
		[CRepr]
		public struct IRegisterServiceProvider : IUnknown
		{
			public const new Guid IID = .(0x7b3a2f01, 0x0751, 0x48dd, 0xb5, 0x56, 0x00, 0x47, 0x85, 0x17, 0x1c, 0x54);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRegisterServiceProvider *self, Guid* guidService, IUnknown* pUnkObject) RegisterService;
			}
		}
		[CRepr]
		public struct IAMClockSlave : IUnknown
		{
			public const new Guid IID = .(0x9fd52741, 0x176d, 0x4b36, 0x8f, 0x51, 0xca, 0x8f, 0x93, 0x32, 0x23, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMClockSlave *self, uint32 dwTolerance) SetErrorTolerance;
				public function HRESULT(IAMClockSlave *self, uint32* pdwTolerance) GetErrorTolerance;
			}
		}
		[CRepr]
		public struct IAMGraphBuilderCallback : IUnknown
		{
			public const new Guid IID = .(0x4995f511, 0x9ddb, 0x4f12, 0xbd, 0x3b, 0xf0, 0x46, 0x11, 0x80, 0x7b, 0x79);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMGraphBuilderCallback *self, IMoniker* pMon) SelectedFilter;
				public function HRESULT(IAMGraphBuilderCallback *self, IBaseFilter* pFil) CreatedFilter;
			}
		}
		[CRepr]
		public struct IAMFilterGraphCallback : IUnknown
		{
			public const new Guid IID = .(0x56a868fd, 0x0ad4, 0x11ce, 0xb0, 0xa3, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMFilterGraphCallback *self, IPin* pPin) UnableToRender;
			}
		}
		[CRepr]
		public struct IGetCapabilitiesKey : IUnknown
		{
			public const new Guid IID = .(0xa8809222, 0x07bb, 0x48ea, 0x95, 0x1c, 0x33, 0x15, 0x81, 0x00, 0x62, 0x5b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGetCapabilitiesKey *self, HKEY* pHKey) GetCapabilitiesKey;
			}
		}
		[CRepr]
		public struct IEncoderAPI : IUnknown
		{
			public const new Guid IID = .(0x70423839, 0x6acc, 0x4b23, 0xb0, 0x79, 0x21, 0xdb, 0xf0, 0x81, 0x56, 0xa5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEncoderAPI *self, Guid* Api) IsSupported;
				public function HRESULT(IEncoderAPI *self, Guid* Api) IsAvailable;
				public function HRESULT(IEncoderAPI *self, Guid* Api, VARIANT* ValueMin, VARIANT* ValueMax, VARIANT* SteppingDelta) GetParameterRange;
				public function HRESULT(IEncoderAPI *self, Guid* Api, VARIANT** Values, uint32* ValuesCount) GetParameterValues;
				public function HRESULT(IEncoderAPI *self, Guid* Api, VARIANT* Value) GetDefaultValue;
				public function HRESULT(IEncoderAPI *self, Guid* Api, VARIANT* Value) GetValue;
				public function HRESULT(IEncoderAPI *self, Guid* Api, VARIANT* Value) SetValue;
			}
		}
		[CRepr]
		public struct IVideoEncoder : IEncoderAPI
		{
			public const new Guid IID = .(0x02997c3b, 0x8e1b, 0x460e, 0x92, 0x70, 0x54, 0x5e, 0x0d, 0xe9, 0x56, 0x3e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IEncoderAPI.VTable
			{
			}
		}
		[CRepr]
		public struct IAMDecoderCaps : IUnknown
		{
			public const new Guid IID = .(0xc0dff467, 0xd499, 0x4986, 0x97, 0x2b, 0xe1, 0xd9, 0x09, 0x0f, 0xa9, 0x41);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMDecoderCaps *self, uint32 dwCapIndex, uint32* lpdwCap) GetDecoderCaps;
			}
		}
		[CRepr]
		public struct IAMCertifiedOutputProtection : IUnknown
		{
			public const new Guid IID = .(0x6feded3e, 0x0ff1, 0x4901, 0xa2, 0xf1, 0x43, 0xf7, 0x01, 0x2c, 0x85, 0x15);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMCertifiedOutputProtection *self, Guid* pRandom, uint8** VarLenCertGH, uint32* pdwLengthCertGH) KeyExchange;
				public function HRESULT(IAMCertifiedOutputProtection *self, AMCOPPSignature* pSig) SessionSequenceStart;
				public function HRESULT(IAMCertifiedOutputProtection *self, AMCOPPCommand* cmd) ProtectionCommand;
				public function HRESULT(IAMCertifiedOutputProtection *self, AMCOPPStatusInput* pStatusInput, AMCOPPStatusOutput* pStatusOutput) ProtectionStatus;
			}
		}
		[CRepr]
		public struct IAMAsyncReaderTimestampScaling : IUnknown
		{
			public const new Guid IID = .(0xcf7b26fc, 0x9a00, 0x485b, 0x81, 0x47, 0x3e, 0x78, 0x9d, 0x5e, 0x8f, 0x67);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMAsyncReaderTimestampScaling *self, BOOL* pfRaw) GetTimestampMode;
				public function HRESULT(IAMAsyncReaderTimestampScaling *self, BOOL fRaw) SetTimestampMode;
			}
		}
		[CRepr]
		public struct IAMPluginControl : IUnknown
		{
			public const new Guid IID = .(0x0e26a181, 0xf40c, 0x4635, 0x87, 0x86, 0x97, 0x62, 0x84, 0xb5, 0x29, 0x81);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMPluginControl *self, Guid* subType, Guid* clsid) GetPreferredClsid;
				public function HRESULT(IAMPluginControl *self, uint32 index, Guid* subType, Guid* clsid) GetPreferredClsidByIndex;
				public function HRESULT(IAMPluginControl *self, Guid* subType, Guid* clsid) SetPreferredClsid;
				public function HRESULT(IAMPluginControl *self, Guid* clsid) IsDisabled;
				public function HRESULT(IAMPluginControl *self, uint32 index, Guid* clsid) GetDisabledByIndex;
				public function HRESULT(IAMPluginControl *self, Guid* clsid, BOOL disabled) SetDisabled;
				public function HRESULT(IAMPluginControl *self, PWSTR dllName) IsLegacyDisabled;
			}
		}
		[CRepr]
		public struct IPinConnection : IUnknown
		{
			public const new Guid IID = .(0x4a9a62d3, 0x27d4, 0x403d, 0x91, 0xe9, 0x89, 0xf5, 0x40, 0xe5, 0x55, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPinConnection *self, AM_MEDIA_TYPE* pmt) DynamicQueryAccept;
				public function HRESULT(IPinConnection *self, HANDLE hNotifyEvent) NotifyEndOfStream;
				public function HRESULT(IPinConnection *self) IsEndPin;
				public function HRESULT(IPinConnection *self) DynamicDisconnect;
			}
		}
		[CRepr]
		public struct IPinFlowControl : IUnknown
		{
			public const new Guid IID = .(0xc56e9858, 0xdbf3, 0x4f6b, 0x81, 0x19, 0x38, 0x4a, 0xf2, 0x06, 0x0d, 0xeb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPinFlowControl *self, uint32 dwBlockFlags, HANDLE hEvent) Block;
			}
		}
		[CRepr]
		public struct IGraphConfig : IUnknown
		{
			public const new Guid IID = .(0x03a1eb8e, 0x32bf, 0x4245, 0x85, 0x02, 0x11, 0x4d, 0x08, 0xa9, 0xcb, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGraphConfig *self, IPin* pOutputPin, IPin* pInputPin, AM_MEDIA_TYPE* pmtFirstConnection, IBaseFilter* pUsingFilter, HANDLE hAbortEvent, uint32 dwFlags) Reconnect;
				public function HRESULT(IGraphConfig *self, IGraphConfigCallback* pCallback, void* pvContext, uint32 dwFlags, HANDLE hAbortEvent) Reconfigure;
				public function HRESULT(IGraphConfig *self, IBaseFilter* pFilter) AddFilterToCache;
				public function HRESULT(IGraphConfig *self, IEnumFilters** pEnum) EnumCacheFilter;
				public function HRESULT(IGraphConfig *self, IBaseFilter* pFilter) RemoveFilterFromCache;
				public function HRESULT(IGraphConfig *self, int64* prtStart) GetStartTime;
				public function HRESULT(IGraphConfig *self, IPin* pOutputPin, IPinConnection* pConnection, HANDLE hEventAbort) PushThroughData;
				public function HRESULT(IGraphConfig *self, IBaseFilter* pFilter, uint32 dwFlags) SetFilterFlags;
				public function HRESULT(IGraphConfig *self, IBaseFilter* pFilter, uint32* pdwFlags) GetFilterFlags;
				public function HRESULT(IGraphConfig *self, IBaseFilter* pFilter, uint32 Flags) RemoveFilterEx;
			}
		}
		[CRepr]
		public struct IGraphConfigCallback : IUnknown
		{
			public const new Guid IID = .(0xade0fd60, 0xd19d, 0x11d2, 0xab, 0xf6, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGraphConfigCallback *self, void* pvContext, uint32 dwFlags) Reconfigure;
			}
		}
		[CRepr]
		public struct IFilterChain : IUnknown
		{
			public const new Guid IID = .(0xdcfbdcf6, 0x0dc2, 0x45f5, 0x9a, 0xb2, 0x7c, 0x33, 0x0e, 0xa0, 0x9c, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFilterChain *self, IBaseFilter* pStartFilter, IBaseFilter* pEndFilter) StartChain;
				public function HRESULT(IFilterChain *self, IBaseFilter* pStartFilter, IBaseFilter* pEndFilter) PauseChain;
				public function HRESULT(IFilterChain *self, IBaseFilter* pStartFilter, IBaseFilter* pEndFilter) StopChain;
				public function HRESULT(IFilterChain *self, IBaseFilter* pStartFilter, IBaseFilter* pEndFilter) RemoveChain;
			}
		}
		[CRepr]
		public struct IVMRImagePresenter : IUnknown
		{
			public const new Guid IID = .(0xce704fe7, 0xe71e, 0x41fb, 0xba, 0xa2, 0xc4, 0x40, 0x3e, 0x11, 0x82, 0xf5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRImagePresenter *self, uint dwUserID) StartPresenting;
				public function HRESULT(IVMRImagePresenter *self, uint dwUserID) StopPresenting;
				public function HRESULT(IVMRImagePresenter *self, uint dwUserID, VMRPRESENTATIONINFO* lpPresInfo) PresentImage;
			}
		}
		[CRepr]
		public struct IVMRSurfaceAllocator : IUnknown
		{
			public const new Guid IID = .(0x31ce832e, 0x4484, 0x458b, 0x8c, 0xca, 0xf4, 0xd7, 0xe3, 0xdb, 0x0b, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRSurfaceAllocator *self, uint dwUserID, VMRALLOCATIONINFO* lpAllocInfo, uint32* lpdwActualBuffers, IDirectDrawSurface7** lplpSurface) AllocateSurface;
				public function HRESULT(IVMRSurfaceAllocator *self, uint dwID) FreeSurface;
				public function HRESULT(IVMRSurfaceAllocator *self, uint dwUserID, IDirectDrawSurface7* lpSurface, uint32 dwSurfaceFlags) PrepareSurface;
				public function HRESULT(IVMRSurfaceAllocator *self, IVMRSurfaceAllocatorNotify* lpIVMRSurfAllocNotify) AdviseNotify;
			}
		}
		[CRepr]
		public struct IVMRSurfaceAllocatorNotify : IUnknown
		{
			public const new Guid IID = .(0xaada05a8, 0x5a4e, 0x4729, 0xaf, 0x0b, 0xce, 0xa2, 0x7a, 0xed, 0x51, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRSurfaceAllocatorNotify *self, uint dwUserID, IVMRSurfaceAllocator* lpIVRMSurfaceAllocator) AdviseSurfaceAllocator;
				public function HRESULT(IVMRSurfaceAllocatorNotify *self, IDirectDraw7* lpDDrawDevice, HMONITOR hMonitor) SetDDrawDevice;
				public function HRESULT(IVMRSurfaceAllocatorNotify *self, IDirectDraw7* lpDDrawDevice, HMONITOR hMonitor) ChangeDDrawDevice;
				public function HRESULT(IVMRSurfaceAllocatorNotify *self) RestoreDDrawSurfaces;
				public function HRESULT(IVMRSurfaceAllocatorNotify *self, int32 EventCode, int Param1, int Param2) NotifyEvent;
				public function HRESULT(IVMRSurfaceAllocatorNotify *self, uint32 clrBorder) SetBorderColor;
			}
		}
		[CRepr]
		public struct IVMRWindowlessControl : IUnknown
		{
			public const new Guid IID = .(0x0eb1088c, 0x4dcd, 0x46f0, 0x87, 0x8f, 0x39, 0xda, 0xe8, 0x6a, 0x51, 0xb7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRWindowlessControl *self, int32* lpWidth, int32* lpHeight, int32* lpARWidth, int32* lpARHeight) GetNativeVideoSize;
				public function HRESULT(IVMRWindowlessControl *self, int32* lpWidth, int32* lpHeight) GetMinIdealVideoSize;
				public function HRESULT(IVMRWindowlessControl *self, int32* lpWidth, int32* lpHeight) GetMaxIdealVideoSize;
				public function HRESULT(IVMRWindowlessControl *self, RECT* lpSRCRect, RECT* lpDSTRect) SetVideoPosition;
				public function HRESULT(IVMRWindowlessControl *self, RECT* lpSRCRect, RECT* lpDSTRect) GetVideoPosition;
				public function HRESULT(IVMRWindowlessControl *self, uint32* lpAspectRatioMode) GetAspectRatioMode;
				public function HRESULT(IVMRWindowlessControl *self, uint32 AspectRatioMode) SetAspectRatioMode;
				public function HRESULT(IVMRWindowlessControl *self, HWND hwnd) SetVideoClippingWindow;
				public function HRESULT(IVMRWindowlessControl *self, HWND hwnd, HDC hdc) RepaintVideo;
				public function HRESULT(IVMRWindowlessControl *self) DisplayModeChanged;
				public function HRESULT(IVMRWindowlessControl *self, uint8** lpDib) GetCurrentImage;
				public function HRESULT(IVMRWindowlessControl *self, uint32 Clr) SetBorderColor;
				public function HRESULT(IVMRWindowlessControl *self, uint32* lpClr) GetBorderColor;
				public function HRESULT(IVMRWindowlessControl *self, uint32 Clr) SetColorKey;
				public function HRESULT(IVMRWindowlessControl *self, uint32* lpClr) GetColorKey;
			}
		}
		[CRepr]
		public struct IVMRMixerControl : IUnknown
		{
			public const new Guid IID = .(0x1c1a17b0, 0xbed0, 0x415d, 0x97, 0x4b, 0xdc, 0x66, 0x96, 0x13, 0x15, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRMixerControl *self, uint32 dwStreamID, float Alpha) SetAlpha;
				public function HRESULT(IVMRMixerControl *self, uint32 dwStreamID, float* pAlpha) GetAlpha;
				public function HRESULT(IVMRMixerControl *self, uint32 dwStreamID, uint32 dwZ) SetZOrder;
				public function HRESULT(IVMRMixerControl *self, uint32 dwStreamID, uint32* pZ) GetZOrder;
				public function HRESULT(IVMRMixerControl *self, uint32 dwStreamID, NORMALIZEDRECT* pRect) SetOutputRect;
				public function HRESULT(IVMRMixerControl *self, uint32 dwStreamID, NORMALIZEDRECT* pRect) GetOutputRect;
				public function HRESULT(IVMRMixerControl *self, uint32 ClrBkg) SetBackgroundClr;
				public function HRESULT(IVMRMixerControl *self, uint32* lpClrBkg) GetBackgroundClr;
				public function HRESULT(IVMRMixerControl *self, uint32 dwMixerPrefs) SetMixingPrefs;
				public function HRESULT(IVMRMixerControl *self, uint32* pdwMixerPrefs) GetMixingPrefs;
			}
		}
		[CRepr]
		public struct IVMRMonitorConfig : IUnknown
		{
			public const new Guid IID = .(0x9cf0b1b6, 0xfbaa, 0x4b7f, 0x88, 0xcf, 0xcf, 0x1f, 0x13, 0x0a, 0x0d, 0xce);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRMonitorConfig *self, VMRGUID* pGUID) SetMonitor;
				public function HRESULT(IVMRMonitorConfig *self, VMRGUID* pGUID) GetMonitor;
				public function HRESULT(IVMRMonitorConfig *self, VMRGUID* pGUID) SetDefaultMonitor;
				public function HRESULT(IVMRMonitorConfig *self, VMRGUID* pGUID) GetDefaultMonitor;
				public function HRESULT(IVMRMonitorConfig *self, VMRMONITORINFO* pInfo, uint32 dwMaxInfoArraySize, uint32* pdwNumDevices) GetAvailableMonitors;
			}
		}
		[CRepr]
		public struct IVMRFilterConfig : IUnknown
		{
			public const new Guid IID = .(0x9e5530c5, 0x7034, 0x48b4, 0xbb, 0x46, 0x0b, 0x8a, 0x6e, 0xfc, 0x8e, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRFilterConfig *self, IVMRImageCompositor* lpVMRImgCompositor) SetImageCompositor;
				public function HRESULT(IVMRFilterConfig *self, uint32 dwMaxStreams) SetNumberOfStreams;
				public function HRESULT(IVMRFilterConfig *self, uint32* pdwMaxStreams) GetNumberOfStreams;
				public function HRESULT(IVMRFilterConfig *self, uint32 dwRenderFlags) SetRenderingPrefs;
				public function HRESULT(IVMRFilterConfig *self, uint32* pdwRenderFlags) GetRenderingPrefs;
				public function HRESULT(IVMRFilterConfig *self, uint32 Mode) SetRenderingMode;
				public function HRESULT(IVMRFilterConfig *self, uint32* pMode) GetRenderingMode;
			}
		}
		[CRepr]
		public struct IVMRAspectRatioControl : IUnknown
		{
			public const new Guid IID = .(0xede80b5c, 0xbad6, 0x4623, 0xb5, 0x37, 0x65, 0x58, 0x6c, 0x9f, 0x8d, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRAspectRatioControl *self, uint32* lpdwARMode) GetAspectRatioMode;
				public function HRESULT(IVMRAspectRatioControl *self, uint32 dwARMode) SetAspectRatioMode;
			}
		}
		[CRepr]
		public struct IVMRDeinterlaceControl : IUnknown
		{
			public const new Guid IID = .(0xbb057577, 0x0db8, 0x4e6a, 0x87, 0xa7, 0x1a, 0x8c, 0x9a, 0x50, 0x5a, 0x0f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRDeinterlaceControl *self, VMRVideoDesc* lpVideoDescription, uint32* lpdwNumDeinterlaceModes, Guid* lpDeinterlaceModes) GetNumberOfDeinterlaceModes;
				public function HRESULT(IVMRDeinterlaceControl *self, Guid* lpDeinterlaceMode, VMRVideoDesc* lpVideoDescription, VMRDeinterlaceCaps* lpDeinterlaceCaps) GetDeinterlaceModeCaps;
				public function HRESULT(IVMRDeinterlaceControl *self, uint32 dwStreamID, Guid* lpDeinterlaceMode) GetDeinterlaceMode;
				public function HRESULT(IVMRDeinterlaceControl *self, uint32 dwStreamID, Guid* lpDeinterlaceMode) SetDeinterlaceMode;
				public function HRESULT(IVMRDeinterlaceControl *self, uint32* lpdwDeinterlacePrefs) GetDeinterlacePrefs;
				public function HRESULT(IVMRDeinterlaceControl *self, uint32 dwDeinterlacePrefs) SetDeinterlacePrefs;
				public function HRESULT(IVMRDeinterlaceControl *self, uint32 dwStreamID, Guid* lpDeinterlaceMode) GetActualDeinterlaceMode;
			}
		}
		[CRepr]
		public struct IVMRMixerBitmap : IUnknown
		{
			public const new Guid IID = .(0x1e673275, 0x0257, 0x40aa, 0xaf, 0x20, 0x7c, 0x60, 0x8d, 0x4a, 0x04, 0x28);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRMixerBitmap *self, VMRALPHABITMAP* pBmpParms) SetAlphaBitmap;
				public function HRESULT(IVMRMixerBitmap *self, VMRALPHABITMAP* pBmpParms) UpdateAlphaBitmapParameters;
				public function HRESULT(IVMRMixerBitmap *self, VMRALPHABITMAP* pBmpParms) GetAlphaBitmapParameters;
			}
		}
		[CRepr]
		public struct IVMRImageCompositor : IUnknown
		{
			public const new Guid IID = .(0x7a4fb5af, 0x479f, 0x4074, 0xbb, 0x40, 0xce, 0x67, 0x22, 0xe4, 0x3c, 0x82);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRImageCompositor *self, IUnknown* pD3DDevice, IDirectDrawSurface7* pddsRenderTarget) InitCompositionTarget;
				public function HRESULT(IVMRImageCompositor *self, IUnknown* pD3DDevice, IDirectDrawSurface7* pddsRenderTarget) TermCompositionTarget;
				public function HRESULT(IVMRImageCompositor *self, uint32 dwStrmID, AM_MEDIA_TYPE* pmt, BOOL fTexture) SetStreamMediaType;
				public function HRESULT(IVMRImageCompositor *self, IUnknown* pD3DDevice, IDirectDrawSurface7* pddsRenderTarget, AM_MEDIA_TYPE* pmtRenderTarget, int64 rtStart, int64 rtEnd, uint32 dwClrBkGnd, VMRVIDEOSTREAMINFO* pVideoStreamInfo, uint32 cStreams) CompositeImage;
			}
		}
		[CRepr]
		public struct IVMRVideoStreamControl : IUnknown
		{
			public const new Guid IID = .(0x058d1f11, 0x2a54, 0x4bef, 0xbd, 0x54, 0xdf, 0x70, 0x66, 0x26, 0xb7, 0x27);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRVideoStreamControl *self, DDCOLORKEY* lpClrKey) SetColorKey;
				public function HRESULT(IVMRVideoStreamControl *self, DDCOLORKEY* lpClrKey) GetColorKey;
				public function HRESULT(IVMRVideoStreamControl *self, BOOL fActive) SetStreamActiveState;
				public function HRESULT(IVMRVideoStreamControl *self, BOOL* lpfActive) GetStreamActiveState;
			}
		}
		[CRepr]
		public struct IVMRSurface : IUnknown
		{
			public const new Guid IID = .(0xa9849bbe, 0x9ec8, 0x4263, 0xb7, 0x64, 0x62, 0x73, 0x0f, 0x0d, 0x15, 0xd0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRSurface *self) IsSurfaceLocked;
				public function HRESULT(IVMRSurface *self, uint8** lpSurface) LockSurface;
				public function HRESULT(IVMRSurface *self) UnlockSurface;
				public function HRESULT(IVMRSurface *self, IDirectDrawSurface7** lplpSurface) GetSurface;
			}
		}
		[CRepr]
		public struct IVMRImagePresenterConfig : IUnknown
		{
			public const new Guid IID = .(0x9f3a1c85, 0x8555, 0x49ba, 0x93, 0x5f, 0xbe, 0x5b, 0x5b, 0x29, 0xd1, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRImagePresenterConfig *self, uint32 dwRenderFlags) SetRenderingPrefs;
				public function HRESULT(IVMRImagePresenterConfig *self, uint32* dwRenderFlags) GetRenderingPrefs;
			}
		}
		[CRepr]
		public struct IVMRImagePresenterExclModeConfig : IVMRImagePresenterConfig
		{
			public const new Guid IID = .(0xe6f7ce40, 0x4673, 0x44f1, 0x8f, 0x77, 0x54, 0x99, 0xd6, 0x8c, 0xb4, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVMRImagePresenterConfig.VTable
			{
				public function HRESULT(IVMRImagePresenterExclModeConfig *self, IDirectDraw7* lpDDObj, IDirectDrawSurface7* lpPrimarySurf) SetXlcModeDDObjAndPrimarySurface;
				public function HRESULT(IVMRImagePresenterExclModeConfig *self, IDirectDraw7** lpDDObj, IDirectDrawSurface7** lpPrimarySurf) GetXlcModeDDObjAndPrimarySurface;
			}
		}
		[CRepr]
		public struct IVPManager : IUnknown
		{
			public const new Guid IID = .(0xaac18c18, 0xe186, 0x46d2, 0x82, 0x5d, 0xa1, 0xf8, 0xdc, 0x8e, 0x39, 0x5a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVPManager *self, uint32 dwVideoPortIndex) SetVideoPortIndex;
				public function HRESULT(IVPManager *self, uint32* pdwVideoPortIndex) GetVideoPortIndex;
			}
		}
		[CRepr]
		public struct IDvdControl : IUnknown
		{
			public const new Guid IID = .(0xa70efe61, 0xe2a3, 0x11d0, 0xa9, 0xbe, 0x00, 0xaa, 0x00, 0x61, 0xbe, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdControl *self, uint32 ulTitle) TitlePlay;
				public function HRESULT(IDvdControl *self, uint32 ulTitle, uint32 ulChapter) ChapterPlay;
				public function HRESULT(IDvdControl *self, uint32 ulTitle, uint32 bcdTime) TimePlay;
				public function HRESULT(IDvdControl *self) StopForResume;
				public function HRESULT(IDvdControl *self) GoUp;
				public function HRESULT(IDvdControl *self, uint32 bcdTime) TimeSearch;
				public function HRESULT(IDvdControl *self, uint32 ulChapter) ChapterSearch;
				public function HRESULT(IDvdControl *self) PrevPGSearch;
				public function HRESULT(IDvdControl *self) TopPGSearch;
				public function HRESULT(IDvdControl *self) NextPGSearch;
				public function HRESULT(IDvdControl *self, double dwSpeed) ForwardScan;
				public function HRESULT(IDvdControl *self, double dwSpeed) BackwardScan;
				public function HRESULT(IDvdControl *self, DVD_MENU_ID MenuID) MenuCall;
				public function HRESULT(IDvdControl *self) Resume;
				public function HRESULT(IDvdControl *self) UpperButtonSelect;
				public function HRESULT(IDvdControl *self) LowerButtonSelect;
				public function HRESULT(IDvdControl *self) LeftButtonSelect;
				public function HRESULT(IDvdControl *self) RightButtonSelect;
				public function HRESULT(IDvdControl *self) ButtonActivate;
				public function HRESULT(IDvdControl *self, uint32 ulButton) ButtonSelectAndActivate;
				public function HRESULT(IDvdControl *self) StillOff;
				public function HRESULT(IDvdControl *self) PauseOn;
				public function HRESULT(IDvdControl *self) PauseOff;
				public function HRESULT(IDvdControl *self, uint32 Language) MenuLanguageSelect;
				public function HRESULT(IDvdControl *self, uint32 ulAudio) AudioStreamChange;
				public function HRESULT(IDvdControl *self, uint32 ulSubPicture, BOOL bDisplay) SubpictureStreamChange;
				public function HRESULT(IDvdControl *self, uint32 ulAngle) AngleChange;
				public function HRESULT(IDvdControl *self, uint32 ulParentalLevel) ParentalLevelSelect;
				public function HRESULT(IDvdControl *self, uint16 wCountry) ParentalCountrySelect;
				public function HRESULT(IDvdControl *self, uint32 ulMode) KaraokeAudioPresentationModeChange;
				public function HRESULT(IDvdControl *self, uint32 ulPreferredDisplayMode) VideoModePreferrence;
				public function HRESULT(IDvdControl *self, PWSTR pszPath) SetRoot;
				public function HRESULT(IDvdControl *self, POINT point) MouseActivate;
				public function HRESULT(IDvdControl *self, POINT point) MouseSelect;
				public function HRESULT(IDvdControl *self, uint32 ulTitle, uint32 ulChapter, uint32 ulChaptersToPlay) ChapterPlayAutoStop;
			}
		}
		[CRepr]
		public struct IDvdInfo : IUnknown
		{
			public const new Guid IID = .(0xa70efe60, 0xe2a3, 0x11d0, 0xa9, 0xbe, 0x00, 0xaa, 0x00, 0x61, 0xbe, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdInfo *self, DVD_DOMAIN* pDomain) GetCurrentDomain;
				public function HRESULT(IDvdInfo *self, DVD_PLAYBACK_LOCATION* pLocation) GetCurrentLocation;
				public function HRESULT(IDvdInfo *self, uint32* pulTotalTime) GetTotalTitleTime;
				public function HRESULT(IDvdInfo *self, uint32* pulButtonsAvailable, uint32* pulCurrentButton) GetCurrentButton;
				public function HRESULT(IDvdInfo *self, uint32* pulAnglesAvailable, uint32* pulCurrentAngle) GetCurrentAngle;
				public function HRESULT(IDvdInfo *self, uint32* pulStreamsAvailable, uint32* pulCurrentStream) GetCurrentAudio;
				public function HRESULT(IDvdInfo *self, uint32* pulStreamsAvailable, uint32* pulCurrentStream, BOOL* pIsDisabled) GetCurrentSubpicture;
				public function HRESULT(IDvdInfo *self, uint32* pUOP) GetCurrentUOPS;
				public function HRESULT(IDvdInfo *self, uint16** pRegisterArray) GetAllSPRMs;
				public function HRESULT(IDvdInfo *self, uint16** pRegisterArray) GetAllGPRMs;
				public function HRESULT(IDvdInfo *self, uint32 ulStream, uint32* pLanguage) GetAudioLanguage;
				public function HRESULT(IDvdInfo *self, uint32 ulStream, uint32* pLanguage) GetSubpictureLanguage;
				public function HRESULT(IDvdInfo *self, uint32 ulTitle, DVD_ATR* pATR) GetTitleAttributes;
				public function HRESULT(IDvdInfo *self, DVD_ATR* pATR) GetVMGAttributes;
				public function HRESULT(IDvdInfo *self, uint8** pATR) GetCurrentVideoAttributes;
				public function HRESULT(IDvdInfo *self, uint8** pATR) GetCurrentAudioAttributes;
				public function HRESULT(IDvdInfo *self, uint8** pATR) GetCurrentSubpictureAttributes;
				public function HRESULT(IDvdInfo *self, uint32* pulNumOfVol, uint32* pulThisVolNum, DVD_DISC_SIDE* pSide, uint32* pulNumOfTitles) GetCurrentVolumeInfo;
				public function HRESULT(IDvdInfo *self, uint8* pTextManager, uint32 ulBufSize, uint32* pulActualSize) GetDVDTextInfo;
				public function HRESULT(IDvdInfo *self, uint32* pulParentalLevel, uint32* pulCountryCode) GetPlayerParentalLevel;
				public function HRESULT(IDvdInfo *self, uint32 ulTitle, uint32* pulNumberOfChapters) GetNumberOfChapters;
				public function HRESULT(IDvdInfo *self, uint32 ulTitle, uint32* pulParentalLevels) GetTitleParentalLevels;
				public function HRESULT(IDvdInfo *self, uint8* pRoot, uint32 ulBufSize, uint32* pulActualSize) GetRoot;
			}
		}
		[CRepr]
		public struct IDvdCmd : IUnknown
		{
			public const new Guid IID = .(0x5a4a97e4, 0x94ee, 0x4a55, 0x97, 0x51, 0x74, 0xb5, 0x64, 0x3a, 0xa2, 0x7d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdCmd *self) WaitForStart;
				public function HRESULT(IDvdCmd *self) WaitForEnd;
			}
		}
		[CRepr]
		public struct IDvdState : IUnknown
		{
			public const new Guid IID = .(0x86303d6d, 0x1c4a, 0x4087, 0xab, 0x42, 0xf7, 0x11, 0x16, 0x70, 0x48, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdState *self, uint64* pullUniqueID) GetDiscID;
				public function HRESULT(IDvdState *self, uint32* pulParentalLevel) GetParentalLevel;
			}
		}
		[CRepr]
		public struct IDvdControl2 : IUnknown
		{
			public const new Guid IID = .(0x33bc7430, 0xeec0, 0x11d2, 0x82, 0x01, 0x00, 0xa0, 0xc9, 0xd7, 0x48, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdControl2 *self, uint32 ulTitle, uint32 dwFlags, IDvdCmd** ppCmd) PlayTitle;
				public function HRESULT(IDvdControl2 *self, uint32 ulTitle, uint32 ulChapter, uint32 dwFlags, IDvdCmd** ppCmd) PlayChapterInTitle;
				public function HRESULT(IDvdControl2 *self, uint32 ulTitle, DVD_HMSF_TIMECODE* pStartTime, uint32 dwFlags, IDvdCmd** ppCmd) PlayAtTimeInTitle;
				public function HRESULT(IDvdControl2 *self) Stop;
				public function HRESULT(IDvdControl2 *self, uint32 dwFlags, IDvdCmd** ppCmd) ReturnFromSubmenu;
				public function HRESULT(IDvdControl2 *self, DVD_HMSF_TIMECODE* pTime, uint32 dwFlags, IDvdCmd** ppCmd) PlayAtTime;
				public function HRESULT(IDvdControl2 *self, uint32 ulChapter, uint32 dwFlags, IDvdCmd** ppCmd) PlayChapter;
				public function HRESULT(IDvdControl2 *self, uint32 dwFlags, IDvdCmd** ppCmd) PlayPrevChapter;
				public function HRESULT(IDvdControl2 *self, uint32 dwFlags, IDvdCmd** ppCmd) ReplayChapter;
				public function HRESULT(IDvdControl2 *self, uint32 dwFlags, IDvdCmd** ppCmd) PlayNextChapter;
				public function HRESULT(IDvdControl2 *self, double dSpeed, uint32 dwFlags, IDvdCmd** ppCmd) PlayForwards;
				public function HRESULT(IDvdControl2 *self, double dSpeed, uint32 dwFlags, IDvdCmd** ppCmd) PlayBackwards;
				public function HRESULT(IDvdControl2 *self, DVD_MENU_ID MenuID, uint32 dwFlags, IDvdCmd** ppCmd) ShowMenu;
				public function HRESULT(IDvdControl2 *self, uint32 dwFlags, IDvdCmd** ppCmd) Resume;
				public function HRESULT(IDvdControl2 *self, DVD_RELATIVE_BUTTON buttonDir) SelectRelativeButton;
				public function HRESULT(IDvdControl2 *self) ActivateButton;
				public function HRESULT(IDvdControl2 *self, uint32 ulButton) SelectButton;
				public function HRESULT(IDvdControl2 *self, uint32 ulButton) SelectAndActivateButton;
				public function HRESULT(IDvdControl2 *self) StillOff;
				public function HRESULT(IDvdControl2 *self, BOOL bState) Pause;
				public function HRESULT(IDvdControl2 *self, uint32 ulAudio, uint32 dwFlags, IDvdCmd** ppCmd) SelectAudioStream;
				public function HRESULT(IDvdControl2 *self, uint32 ulSubPicture, uint32 dwFlags, IDvdCmd** ppCmd) SelectSubpictureStream;
				public function HRESULT(IDvdControl2 *self, BOOL bState, uint32 dwFlags, IDvdCmd** ppCmd) SetSubpictureState;
				public function HRESULT(IDvdControl2 *self, uint32 ulAngle, uint32 dwFlags, IDvdCmd** ppCmd) SelectAngle;
				public function HRESULT(IDvdControl2 *self, uint32 ulParentalLevel) SelectParentalLevel;
				public function HRESULT(IDvdControl2 *self, uint8* bCountry) SelectParentalCountry;
				public function HRESULT(IDvdControl2 *self, uint32 ulMode) SelectKaraokeAudioPresentationMode;
				public function HRESULT(IDvdControl2 *self, uint32 ulPreferredDisplayMode) SelectVideoModePreference;
				public function HRESULT(IDvdControl2 *self, PWSTR pszwPath) SetDVDDirectory;
				public function HRESULT(IDvdControl2 *self, POINT point) ActivateAtPosition;
				public function HRESULT(IDvdControl2 *self, POINT point) SelectAtPosition;
				public function HRESULT(IDvdControl2 *self, uint32 ulTitle, uint32 ulChapter, uint32 ulChaptersToPlay, uint32 dwFlags, IDvdCmd** ppCmd) PlayChaptersAutoStop;
				public function HRESULT(IDvdControl2 *self, BOOL bAccept) AcceptParentalLevelChange;
				public function HRESULT(IDvdControl2 *self, DVD_OPTION_FLAG flag, BOOL fState) SetOption;
				public function HRESULT(IDvdControl2 *self, IDvdState* pState, uint32 dwFlags, IDvdCmd** ppCmd) SetState;
				public function HRESULT(IDvdControl2 *self, uint32 ulTitle, DVD_HMSF_TIMECODE* pStartTime, DVD_HMSF_TIMECODE* pEndTime, uint32 dwFlags, IDvdCmd** ppCmd) PlayPeriodInTitleAutoStop;
				public function HRESULT(IDvdControl2 *self, uint32 ulIndex, uint16 wValue, uint32 dwFlags, IDvdCmd** ppCmd) SetGPRM;
				public function HRESULT(IDvdControl2 *self, uint32 Language) SelectDefaultMenuLanguage;
				public function HRESULT(IDvdControl2 *self, uint32 Language, DVD_AUDIO_LANG_EXT audioExtension) SelectDefaultAudioLanguage;
				public function HRESULT(IDvdControl2 *self, uint32 Language, DVD_SUBPICTURE_LANG_EXT subpictureExtension) SelectDefaultSubpictureLanguage;
			}
		}
		[CRepr]
		public struct IDvdInfo2 : IUnknown
		{
			public const new Guid IID = .(0x34151510, 0xeec0, 0x11d2, 0x82, 0x01, 0x00, 0xa0, 0xc9, 0xd7, 0x48, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdInfo2 *self, DVD_DOMAIN* pDomain) GetCurrentDomain;
				public function HRESULT(IDvdInfo2 *self, DVD_PLAYBACK_LOCATION2* pLocation) GetCurrentLocation;
				public function HRESULT(IDvdInfo2 *self, DVD_HMSF_TIMECODE* pTotalTime, uint32* ulTimeCodeFlags) GetTotalTitleTime;
				public function HRESULT(IDvdInfo2 *self, uint32* pulButtonsAvailable, uint32* pulCurrentButton) GetCurrentButton;
				public function HRESULT(IDvdInfo2 *self, uint32* pulAnglesAvailable, uint32* pulCurrentAngle) GetCurrentAngle;
				public function HRESULT(IDvdInfo2 *self, uint32* pulStreamsAvailable, uint32* pulCurrentStream) GetCurrentAudio;
				public function HRESULT(IDvdInfo2 *self, uint32* pulStreamsAvailable, uint32* pulCurrentStream, BOOL* pbIsDisabled) GetCurrentSubpicture;
				public function HRESULT(IDvdInfo2 *self, uint32* pulUOPs) GetCurrentUOPS;
				public function HRESULT(IDvdInfo2 *self, uint16** pRegisterArray) GetAllSPRMs;
				public function HRESULT(IDvdInfo2 *self, uint16** pRegisterArray) GetAllGPRMs;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStream, uint32* pLanguage) GetAudioLanguage;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStream, uint32* pLanguage) GetSubpictureLanguage;
				public function HRESULT(IDvdInfo2 *self, uint32 ulTitle, DVD_MenuAttributes* pMenu, DVD_TitleAttributes* pTitle) GetTitleAttributes;
				public function HRESULT(IDvdInfo2 *self, DVD_MenuAttributes* pATR) GetVMGAttributes;
				public function HRESULT(IDvdInfo2 *self, DVD_VideoAttributes* pATR) GetCurrentVideoAttributes;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStream, DVD_AudioAttributes* pATR) GetAudioAttributes;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStream, DVD_KaraokeAttributes* pAttributes) GetKaraokeAttributes;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStream, DVD_SubpictureAttributes* pATR) GetSubpictureAttributes;
				public function HRESULT(IDvdInfo2 *self, uint32* pulNumOfVolumes, uint32* pulVolume, DVD_DISC_SIDE* pSide, uint32* pulNumOfTitles) GetDVDVolumeInfo;
				public function HRESULT(IDvdInfo2 *self, uint32* pulNumOfLangs) GetDVDTextNumberOfLanguages;
				public function HRESULT(IDvdInfo2 *self, uint32 ulLangIndex, uint32* pulNumOfStrings, uint32* pLangCode, DVD_TextCharSet* pbCharacterSet) GetDVDTextLanguageInfo;
				public function HRESULT(IDvdInfo2 *self, uint32 ulLangIndex, uint32 ulStringIndex, uint8* pbBuffer, uint32 ulMaxBufferSize, uint32* pulActualSize, DVD_TextStringType* pType) GetDVDTextStringAsNative;
				public function HRESULT(IDvdInfo2 *self, uint32 ulLangIndex, uint32 ulStringIndex, PWSTR pchwBuffer, uint32 ulMaxBufferSize, uint32* pulActualSize, DVD_TextStringType* pType) GetDVDTextStringAsUnicode;
				public function HRESULT(IDvdInfo2 *self, uint32* pulParentalLevel, uint8* pbCountryCode) GetPlayerParentalLevel;
				public function HRESULT(IDvdInfo2 *self, uint32 ulTitle, uint32* pulNumOfChapters) GetNumberOfChapters;
				public function HRESULT(IDvdInfo2 *self, uint32 ulTitle, uint32* pulParentalLevels) GetTitleParentalLevels;
				public function HRESULT(IDvdInfo2 *self, char16* pszwPath, uint32 ulMaxSize, uint32* pulActualSize) GetDVDDirectory;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStreamNum, BOOL* pbEnabled) IsAudioStreamEnabled;
				public function HRESULT(IDvdInfo2 *self, PWSTR pszwPath, uint64* pullDiscID) GetDiscID;
				public function HRESULT(IDvdInfo2 *self, IDvdState** pStateData) GetState;
				public function HRESULT(IDvdInfo2 *self, uint32* pLanguages, uint32 ulMaxLanguages, uint32* pulActualLanguages) GetMenuLanguages;
				public function HRESULT(IDvdInfo2 *self, POINT point, uint32* pulButtonIndex) GetButtonAtPosition;
				public function HRESULT(IDvdInfo2 *self, int lParam1, IDvdCmd** pCmdObj) GetCmdFromEvent;
				public function HRESULT(IDvdInfo2 *self, uint32* pLanguage) GetDefaultMenuLanguage;
				public function HRESULT(IDvdInfo2 *self, uint32* pLanguage, DVD_AUDIO_LANG_EXT* pAudioExtension) GetDefaultAudioLanguage;
				public function HRESULT(IDvdInfo2 *self, uint32* pLanguage, DVD_SUBPICTURE_LANG_EXT* pSubpictureExtension) GetDefaultSubpictureLanguage;
				public function HRESULT(IDvdInfo2 *self, DVD_DECODER_CAPS* pCaps) GetDecoderCaps;
				public function HRESULT(IDvdInfo2 *self, uint32 ulButton, RECT* pRect) GetButtonRect;
				public function HRESULT(IDvdInfo2 *self, uint32 ulStreamNum, BOOL* pbEnabled) IsSubpictureStreamEnabled;
			}
		}
		[CRepr]
		public struct IDvdGraphBuilder : IUnknown
		{
			public const new Guid IID = .(0xfcc152b6, 0xf372, 0x11d0, 0x8e, 0x00, 0x00, 0xc0, 0x4f, 0xd7, 0xc0, 0x8b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvdGraphBuilder *self, IGraphBuilder** ppGB) GetFiltergraph;
				public function HRESULT(IDvdGraphBuilder *self, Guid* riid, void** ppvIF) GetDvdInterface;
				public function HRESULT(IDvdGraphBuilder *self, PWSTR lpcwszPathName, uint32 dwFlags, AM_DVD_RENDERSTATUS* pStatus) RenderDvdVideoVolume;
			}
		}
		[CRepr]
		public struct IDDrawExclModeVideo : IUnknown
		{
			public const new Guid IID = .(0x153acc21, 0xd83b, 0x11d1, 0x82, 0xbf, 0x00, 0xa0, 0xc9, 0x69, 0x6c, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDDrawExclModeVideo *self, IDirectDraw* pDDrawObject) SetDDrawObject;
				public function HRESULT(IDDrawExclModeVideo *self, IDirectDraw** ppDDrawObject, BOOL* pbUsingExternal) GetDDrawObject;
				public function HRESULT(IDDrawExclModeVideo *self, IDirectDrawSurface* pDDrawSurface) SetDDrawSurface;
				public function HRESULT(IDDrawExclModeVideo *self, IDirectDrawSurface** ppDDrawSurface, BOOL* pbUsingExternal) GetDDrawSurface;
				public function HRESULT(IDDrawExclModeVideo *self, RECT* prcSource, RECT* prcTarget) SetDrawParameters;
				public function HRESULT(IDDrawExclModeVideo *self, uint32* pdwVideoWidth, uint32* pdwVideoHeight, uint32* pdwPictAspectRatioX, uint32* pdwPictAspectRatioY) GetNativeVideoProps;
				public function HRESULT(IDDrawExclModeVideo *self, IDDrawExclModeVideoCallback* pCallback, uint32 dwFlags) SetCallbackInterface;
			}
		}
		[CRepr]
		public struct IDDrawExclModeVideoCallback : IUnknown
		{
			public const new Guid IID = .(0x913c24a0, 0x20ab, 0x11d2, 0x90, 0x38, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDDrawExclModeVideoCallback *self, BOOL bBefore, uint32 dwFlags, BOOL bOldVisible, RECT* prcOldSrc, RECT* prcOldDest, BOOL bNewVisible, RECT* prcNewSrc, RECT* prcNewDest) OnUpdateOverlay;
				public function HRESULT(IDDrawExclModeVideoCallback *self, COLORKEY* pKey, uint32 dwColor) OnUpdateColorKey;
				public function HRESULT(IDDrawExclModeVideoCallback *self, uint32 dwWidth, uint32 dwHeight, uint32 dwARWidth, uint32 dwARHeight) OnUpdateSize;
			}
		}
		[CRepr]
		public struct IBDA_NetworkProvider : IUnknown
		{
			public const new Guid IID = .(0xfd501041, 0x8ebe, 0x11ce, 0x81, 0x83, 0x00, 0xaa, 0x00, 0x57, 0x7d, 0xa2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_NetworkProvider *self, uint32 ulSignalSource) PutSignalSource;
				public function HRESULT(IBDA_NetworkProvider *self, uint32* pulSignalSource) GetSignalSource;
				public function HRESULT(IBDA_NetworkProvider *self, Guid* pguidNetworkType) GetNetworkType;
				public function HRESULT(IBDA_NetworkProvider *self, Guid* guidTuningSpace) PutTuningSpace;
				public function HRESULT(IBDA_NetworkProvider *self, Guid* pguidTuingSpace) GetTuningSpace;
				public function HRESULT(IBDA_NetworkProvider *self, IUnknown* pUnkFilterControl, uint32* ppvRegisitrationContext) RegisterDeviceFilter;
				public function HRESULT(IBDA_NetworkProvider *self, uint32 pvRegistrationContext) UnRegisterDeviceFilter;
			}
		}
		[CRepr]
		public struct IBDA_EthernetFilter : IUnknown
		{
			public const new Guid IID = .(0x71985f43, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_EthernetFilter *self, uint32* pulcbAddresses) GetMulticastListSize;
				public function HRESULT(IBDA_EthernetFilter *self, uint32 ulcbAddresses, uint8* pAddressList) PutMulticastList;
				public function HRESULT(IBDA_EthernetFilter *self, uint32* pulcbAddresses, uint8* pAddressList) GetMulticastList;
				public function HRESULT(IBDA_EthernetFilter *self, uint32 ulModeMask) PutMulticastMode;
				public function HRESULT(IBDA_EthernetFilter *self, uint32* pulModeMask) GetMulticastMode;
			}
		}
		[CRepr]
		public struct IBDA_IPV4Filter : IUnknown
		{
			public const new Guid IID = .(0x71985f44, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_IPV4Filter *self, uint32* pulcbAddresses) GetMulticastListSize;
				public function HRESULT(IBDA_IPV4Filter *self, uint32 ulcbAddresses, uint8* pAddressList) PutMulticastList;
				public function HRESULT(IBDA_IPV4Filter *self, uint32* pulcbAddresses, uint8* pAddressList) GetMulticastList;
				public function HRESULT(IBDA_IPV4Filter *self, uint32 ulModeMask) PutMulticastMode;
				public function HRESULT(IBDA_IPV4Filter *self, uint32* pulModeMask) GetMulticastMode;
			}
		}
		[CRepr]
		public struct IBDA_IPV6Filter : IUnknown
		{
			public const new Guid IID = .(0xe1785a74, 0x2a23, 0x4fb3, 0x92, 0x45, 0xa8, 0xf8, 0x80, 0x17, 0xef, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_IPV6Filter *self, uint32* pulcbAddresses) GetMulticastListSize;
				public function HRESULT(IBDA_IPV6Filter *self, uint32 ulcbAddresses, uint8* pAddressList) PutMulticastList;
				public function HRESULT(IBDA_IPV6Filter *self, uint32* pulcbAddresses, uint8* pAddressList) GetMulticastList;
				public function HRESULT(IBDA_IPV6Filter *self, uint32 ulModeMask) PutMulticastMode;
				public function HRESULT(IBDA_IPV6Filter *self, uint32* pulModeMask) GetMulticastMode;
			}
		}
		[CRepr]
		public struct IBDA_DeviceControl : IUnknown
		{
			public const new Guid IID = .(0xfd0a5af3, 0xb41d, 0x11d2, 0x9c, 0x95, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DeviceControl *self) StartChanges;
				public function HRESULT(IBDA_DeviceControl *self) CheckChanges;
				public function HRESULT(IBDA_DeviceControl *self) CommitChanges;
				public function HRESULT(IBDA_DeviceControl *self, uint32* pState) GetChangeState;
			}
		}
		[CRepr]
		public struct IBDA_PinControl : IUnknown
		{
			public const new Guid IID = .(0x0ded49d5, 0xa8b7, 0x4d5d, 0x97, 0xa1, 0x12, 0xb0, 0xc1, 0x95, 0x87, 0x4d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_PinControl *self, uint32* pulPinID) GetPinID;
				public function HRESULT(IBDA_PinControl *self, uint32* pulPinType) GetPinType;
				public function HRESULT(IBDA_PinControl *self, uint32* pulRegistrationCtx) RegistrationContext;
			}
		}
		[CRepr]
		public struct IBDA_SignalProperties : IUnknown
		{
			public const new Guid IID = .(0xd2f1644b, 0xb409, 0x11d2, 0xbc, 0x69, 0x00, 0xa0, 0xc9, 0xee, 0x9e, 0x16);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_SignalProperties *self, Guid* guidNetworkType) PutNetworkType;
				public function HRESULT(IBDA_SignalProperties *self, Guid* pguidNetworkType) GetNetworkType;
				public function HRESULT(IBDA_SignalProperties *self, uint32 ulSignalSource) PutSignalSource;
				public function HRESULT(IBDA_SignalProperties *self, uint32* pulSignalSource) GetSignalSource;
				public function HRESULT(IBDA_SignalProperties *self, Guid* guidTuningSpace) PutTuningSpace;
				public function HRESULT(IBDA_SignalProperties *self, Guid* pguidTuingSpace) GetTuningSpace;
			}
		}
		[CRepr]
		public struct IBDA_SignalStatistics : IUnknown
		{
			public const new Guid IID = .(0x1347d106, 0xcf3a, 0x428a, 0xa5, 0xcb, 0xac, 0x0d, 0x9a, 0x2a, 0x43, 0x38);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_SignalStatistics *self, int32 lDbStrength) put_SignalStrength;
				public function HRESULT(IBDA_SignalStatistics *self, int32* plDbStrength) get_SignalStrength;
				public function HRESULT(IBDA_SignalStatistics *self, int32 lPercentQuality) put_SignalQuality;
				public function HRESULT(IBDA_SignalStatistics *self, int32* plPercentQuality) get_SignalQuality;
				public function HRESULT(IBDA_SignalStatistics *self, BOOLEAN fPresent) put_SignalPresent;
				public function HRESULT(IBDA_SignalStatistics *self, uint8* pfPresent) get_SignalPresent;
				public function HRESULT(IBDA_SignalStatistics *self, BOOLEAN fLocked) put_SignalLocked;
				public function HRESULT(IBDA_SignalStatistics *self, uint8* pfLocked) get_SignalLocked;
				public function HRESULT(IBDA_SignalStatistics *self, int32 lmsSampleTime) put_SampleTime;
				public function HRESULT(IBDA_SignalStatistics *self, int32* plmsSampleTime) get_SampleTime;
			}
		}
		[CRepr]
		public struct IBDA_Topology : IUnknown
		{
			public const new Guid IID = .(0x79b56888, 0x7fea, 0x4690, 0xb4, 0x5d, 0x38, 0xfd, 0x3c, 0x78, 0x49, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_Topology *self, uint32* pulcNodeTypes, uint32 ulcNodeTypesMax, uint32* rgulNodeTypes) GetNodeTypes;
				public function HRESULT(IBDA_Topology *self, uint32* ulcNodeDescriptors, uint32 ulcNodeDescriptorsMax, BDANODE_DESCRIPTOR* rgNodeDescriptors) GetNodeDescriptors;
				public function HRESULT(IBDA_Topology *self, uint32 ulNodeType, uint32* pulcInterfaces, uint32 ulcInterfacesMax, Guid* rgguidInterfaces) GetNodeInterfaces;
				public function HRESULT(IBDA_Topology *self, uint32* pulcPinTypes, uint32 ulcPinTypesMax, uint32* rgulPinTypes) GetPinTypes;
				public function HRESULT(IBDA_Topology *self, uint32* pulcConnections, uint32 ulcConnectionsMax, BDA_TEMPLATE_CONNECTION* rgConnections) GetTemplateConnections;
				public function HRESULT(IBDA_Topology *self, uint32 ulPinType, uint32* pulPinId) CreatePin;
				public function HRESULT(IBDA_Topology *self, uint32 ulPinId) DeletePin;
				public function HRESULT(IBDA_Topology *self, uint32 ulPinId, AM_MEDIA_TYPE* pMediaType) SetMediaType;
				public function HRESULT(IBDA_Topology *self, uint32 ulPinId, REGPINMEDIUM* pMedium) SetMedium;
				public function HRESULT(IBDA_Topology *self, uint32 ulInputPinId, uint32 ulOutputPinId) CreateTopology;
				public function HRESULT(IBDA_Topology *self, uint32 ulInputPinId, uint32 ulOutputPinId, uint32 ulNodeType, IUnknown** ppControlNode) GetControlNode;
			}
		}
		[CRepr]
		public struct IBDA_VoidTransform : IUnknown
		{
			public const new Guid IID = .(0x71985f46, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_VoidTransform *self) Start;
				public function HRESULT(IBDA_VoidTransform *self) Stop;
			}
		}
		[CRepr]
		public struct IBDA_NullTransform : IUnknown
		{
			public const new Guid IID = .(0xddf15b0d, 0xbd25, 0x11d2, 0x9c, 0xa0, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_NullTransform *self) Start;
				public function HRESULT(IBDA_NullTransform *self) Stop;
			}
		}
		[CRepr]
		public struct IBDA_FrequencyFilter : IUnknown
		{
			public const new Guid IID = .(0x71985f47, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_FrequencyFilter *self, uint32 ulTransponder) put_Autotune;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32* pulTransponder) get_Autotune;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32 ulFrequency) put_Frequency;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32* pulFrequency) get_Frequency;
				public function HRESULT(IBDA_FrequencyFilter *self, Polarisation Polarity) put_Polarity;
				public function HRESULT(IBDA_FrequencyFilter *self, Polarisation* pPolarity) get_Polarity;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32 ulRange) put_Range;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32* pulRange) get_Range;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32 ulBandwidth) put_Bandwidth;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32* pulBandwidth) get_Bandwidth;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32 ulMultiplier) put_FrequencyMultiplier;
				public function HRESULT(IBDA_FrequencyFilter *self, uint32* pulMultiplier) get_FrequencyMultiplier;
			}
		}
		[CRepr]
		public struct IBDA_LNBInfo : IUnknown
		{
			public const new Guid IID = .(0x992cf102, 0x49f9, 0x4719, 0xa6, 0x64, 0xc4, 0xf2, 0x3e, 0x24, 0x08, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_LNBInfo *self, uint32 ulLOFLow) put_LocalOscilatorFrequencyLowBand;
				public function HRESULT(IBDA_LNBInfo *self, uint32* pulLOFLow) get_LocalOscilatorFrequencyLowBand;
				public function HRESULT(IBDA_LNBInfo *self, uint32 ulLOFHigh) put_LocalOscilatorFrequencyHighBand;
				public function HRESULT(IBDA_LNBInfo *self, uint32* pulLOFHigh) get_LocalOscilatorFrequencyHighBand;
				public function HRESULT(IBDA_LNBInfo *self, uint32 ulSwitchFrequency) put_HighLowSwitchFrequency;
				public function HRESULT(IBDA_LNBInfo *self, uint32* pulSwitchFrequency) get_HighLowSwitchFrequency;
			}
		}
		[CRepr]
		public struct IBDA_DiseqCommand : IUnknown
		{
			public const new Guid IID = .(0xf84e2ab0, 0x3c6b, 0x45e3, 0xa0, 0xfc, 0x86, 0x69, 0xd4, 0xb8, 0x1f, 0x11);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DiseqCommand *self, BOOLEAN bEnable) put_EnableDiseqCommands;
				public function HRESULT(IBDA_DiseqCommand *self, uint32 ulLNBSource) put_DiseqLNBSource;
				public function HRESULT(IBDA_DiseqCommand *self, BOOLEAN bUseToneBurst) put_DiseqUseToneBurst;
				public function HRESULT(IBDA_DiseqCommand *self, uint32 ulRepeats) put_DiseqRepeats;
				public function HRESULT(IBDA_DiseqCommand *self, uint32 ulRequestId, uint32 ulcbCommandLen, uint8* pbCommand) put_DiseqSendCommand;
				public function HRESULT(IBDA_DiseqCommand *self, uint32 ulRequestId, uint32* pulcbResponseLen, uint8* pbResponse) get_DiseqResponse;
			}
		}
		[CRepr]
		public struct IBDA_AutoDemodulate : IUnknown
		{
			public const new Guid IID = .(0xddf15b12, 0xbd25, 0x11d2, 0x9c, 0xa0, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_AutoDemodulate *self) put_AutoDemodulate;
			}
		}
		[CRepr]
		public struct IBDA_AutoDemodulateEx : IBDA_AutoDemodulate
		{
			public const new Guid IID = .(0x34518d13, 0x1182, 0x48e6, 0xb2, 0x8f, 0xb2, 0x49, 0x87, 0x78, 0x73, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBDA_AutoDemodulate.VTable
			{
				public function HRESULT(IBDA_AutoDemodulateEx *self, uint32 ulcDeviceNodeTypesMax, uint32* pulcDeviceNodeTypes, Guid* pguidDeviceNodeTypes) get_SupportedDeviceNodeTypes;
				public function HRESULT(IBDA_AutoDemodulateEx *self, uint32* pulAMTunerModeType, uint32* pulAnalogVideoStandard) get_SupportedVideoFormats;
				public function HRESULT(IBDA_AutoDemodulateEx *self, uint32* pulCompositeCount, uint32* pulSvideoCount) get_AuxInputCount;
			}
		}
		[CRepr]
		public struct IBDA_DigitalDemodulator : IUnknown
		{
			public const new Guid IID = .(0xef30f379, 0x985b, 0x4d10, 0xb6, 0x40, 0xa7, 0x9d, 0x5e, 0x04, 0xe1, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DigitalDemodulator *self, ModulationType* pModulationType) put_ModulationType;
				public function HRESULT(IBDA_DigitalDemodulator *self, ModulationType* pModulationType) get_ModulationType;
				public function HRESULT(IBDA_DigitalDemodulator *self, FECMethod* pFECMethod) put_InnerFECMethod;
				public function HRESULT(IBDA_DigitalDemodulator *self, FECMethod* pFECMethod) get_InnerFECMethod;
				public function HRESULT(IBDA_DigitalDemodulator *self, BinaryConvolutionCodeRate* pFECRate) put_InnerFECRate;
				public function HRESULT(IBDA_DigitalDemodulator *self, BinaryConvolutionCodeRate* pFECRate) get_InnerFECRate;
				public function HRESULT(IBDA_DigitalDemodulator *self, FECMethod* pFECMethod) put_OuterFECMethod;
				public function HRESULT(IBDA_DigitalDemodulator *self, FECMethod* pFECMethod) get_OuterFECMethod;
				public function HRESULT(IBDA_DigitalDemodulator *self, BinaryConvolutionCodeRate* pFECRate) put_OuterFECRate;
				public function HRESULT(IBDA_DigitalDemodulator *self, BinaryConvolutionCodeRate* pFECRate) get_OuterFECRate;
				public function HRESULT(IBDA_DigitalDemodulator *self, uint32* pSymbolRate) put_SymbolRate;
				public function HRESULT(IBDA_DigitalDemodulator *self, uint32* pSymbolRate) get_SymbolRate;
				public function HRESULT(IBDA_DigitalDemodulator *self, SpectralInversion* pSpectralInversion) put_SpectralInversion;
				public function HRESULT(IBDA_DigitalDemodulator *self, SpectralInversion* pSpectralInversion) get_SpectralInversion;
			}
		}
		[CRepr]
		public struct IBDA_DigitalDemodulator2 : IBDA_DigitalDemodulator
		{
			public const new Guid IID = .(0x525ed3ee, 0x5cf3, 0x4e1e, 0x9a, 0x06, 0x53, 0x68, 0xa8, 0x4f, 0x9a, 0x6e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBDA_DigitalDemodulator.VTable
			{
				public function HRESULT(IBDA_DigitalDemodulator2 *self, GuardInterval* pGuardInterval) put_GuardInterval;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, GuardInterval* pGuardInterval) get_GuardInterval;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, TransmissionMode* pTransmissionMode) put_TransmissionMode;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, TransmissionMode* pTransmissionMode) get_TransmissionMode;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, RollOff* pRollOff) put_RollOff;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, RollOff* pRollOff) get_RollOff;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, Pilot* pPilot) put_Pilot;
				public function HRESULT(IBDA_DigitalDemodulator2 *self, Pilot* pPilot) get_Pilot;
			}
		}
		[CRepr]
		public struct IBDA_DigitalDemodulator3 : IBDA_DigitalDemodulator2
		{
			public const new Guid IID = .(0x13f19604, 0x7d32, 0x4359, 0x93, 0xa2, 0xa0, 0x52, 0x05, 0xd9, 0x0a, 0xc9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBDA_DigitalDemodulator2.VTable
			{
				public function HRESULT(IBDA_DigitalDemodulator3 *self, BDA_SIGNAL_TIMEOUTS* pSignalTimeouts) put_SignalTimeouts;
				public function HRESULT(IBDA_DigitalDemodulator3 *self, BDA_SIGNAL_TIMEOUTS* pSignalTimeouts) get_SignalTimeouts;
				public function HRESULT(IBDA_DigitalDemodulator3 *self, uint32* pPLPNumber) put_PLPNumber;
				public function HRESULT(IBDA_DigitalDemodulator3 *self, uint32* pPLPNumber) get_PLPNumber;
			}
		}
		[CRepr]
		public struct ICCSubStreamFiltering : IUnknown
		{
			public const new Guid IID = .(0x4b2bd7ea, 0x8347, 0x467b, 0x8d, 0xbf, 0x62, 0xf7, 0x84, 0x92, 0x9c, 0xc3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICCSubStreamFiltering *self, int32* pTypes) get_SubstreamTypes;
				public function HRESULT(ICCSubStreamFiltering *self, int32 Types) put_SubstreamTypes;
			}
		}
		[CRepr]
		public struct IBDA_IPSinkControl : IUnknown
		{
			public const new Guid IID = .(0x3f4dc8e2, 0x4050, 0x11d3, 0x8f, 0x4b, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_IPSinkControl *self, uint32* pulcbSize, uint8** pbBuffer) GetMulticastList;
				public function HRESULT(IBDA_IPSinkControl *self, uint32* pulcbSize, uint8** pbBuffer) GetAdapterIPAddress;
			}
		}
		[CRepr]
		public struct IBDA_IPSinkInfo : IUnknown
		{
			public const new Guid IID = .(0xa750108f, 0x492e, 0x4d51, 0x95, 0xf7, 0x64, 0x9b, 0x23, 0xff, 0x7a, 0xd7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_IPSinkInfo *self, uint32* pulcbAddresses, uint8** ppbAddressList) get_MulticastList;
				public function HRESULT(IBDA_IPSinkInfo *self, BSTR* pbstrBuffer) get_AdapterIPAddress;
				public function HRESULT(IBDA_IPSinkInfo *self, BSTR* pbstrBuffer) get_AdapterDescription;
			}
		}
		[CRepr]
		public struct IEnumPIDMap : IUnknown
		{
			public const new Guid IID = .(0xafb6c2a2, 0x2c41, 0x11d3, 0x8a, 0x60, 0x00, 0x00, 0xf8, 0x1e, 0x0e, 0x4a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumPIDMap *self, uint32 cRequest, PID_MAP* pPIDMap, uint32* pcReceived) Next;
				public function HRESULT(IEnumPIDMap *self, uint32 cRecords) Skip;
				public function HRESULT(IEnumPIDMap *self) Reset;
				public function HRESULT(IEnumPIDMap *self, IEnumPIDMap** ppIEnumPIDMap) Clone;
			}
		}
		[CRepr]
		public struct IMPEG2PIDMap : IUnknown
		{
			public const new Guid IID = .(0xafb6c2a1, 0x2c41, 0x11d3, 0x8a, 0x60, 0x00, 0x00, 0xf8, 0x1e, 0x0e, 0x4a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMPEG2PIDMap *self, uint32 culPID, uint32* pulPID, MEDIA_SAMPLE_CONTENT MediaSampleContent) MapPID;
				public function HRESULT(IMPEG2PIDMap *self, uint32 culPID, uint32* pulPID) UnmapPID;
				public function HRESULT(IMPEG2PIDMap *self, IEnumPIDMap** pIEnumPIDMap) EnumPIDMap;
			}
		}
		[CRepr]
		public struct IFrequencyMap : IUnknown
		{
			public const new Guid IID = .(0x06fb45c1, 0x693c, 0x4ea7, 0xb7, 0x9f, 0x7a, 0x6a, 0x54, 0xd8, 0xde, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFrequencyMap *self, uint32* ulCount, uint32** ppulList) get_FrequencyMapping;
				public function HRESULT(IFrequencyMap *self, uint32 ulCount, uint32* pList) put_FrequencyMapping;
				public function HRESULT(IFrequencyMap *self, uint32* pulCountryCode) get_CountryCode;
				public function HRESULT(IFrequencyMap *self, uint32 ulCountryCode) put_CountryCode;
				public function HRESULT(IFrequencyMap *self, uint32 ulCountryCode, uint32* pulCount, uint32** ppulList) get_DefaultFrequencyMapping;
				public function HRESULT(IFrequencyMap *self, uint32* pulCount, uint32** ppulList) get_CountryCodeList;
			}
		}
		[CRepr]
		public struct IBDA_EasMessage : IUnknown
		{
			public const new Guid IID = .(0xd806973d, 0x3ebe, 0x46de, 0x8f, 0xbb, 0x63, 0x58, 0xfe, 0x78, 0x42, 0x08);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_EasMessage *self, uint32 ulEventID, IUnknown** ppEASObject) get_EasMessage;
			}
		}
		[CRepr]
		public struct IBDA_TransportStreamInfo : IUnknown
		{
			public const new Guid IID = .(0x8e882535, 0x5f86, 0x47ab, 0x86, 0xcf, 0xc2, 0x81, 0xa7, 0x2a, 0x05, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_TransportStreamInfo *self, uint32* pPatTickCount) get_PatTableTickCount;
			}
		}
		[CRepr]
		public struct IBDA_ConditionalAccess : IUnknown
		{
			public const new Guid IID = .(0xcd51f1e0, 0x7be9, 0x4123, 0x84, 0x82, 0xa2, 0xa7, 0x96, 0xc0, 0xa6, 0xb0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_ConditionalAccess *self, SmartCardStatusType* pCardStatus, SmartCardAssociationType* pCardAssociation, BSTR* pbstrCardError, int16* pfOOBLocked) get_SmartCardStatus;
				public function HRESULT(IBDA_ConditionalAccess *self, BSTR* pbstrCardName, BSTR* pbstrCardManufacturer, int16* pfDaylightSavings, uint8* pbyRatingRegion, int32* plTimeZoneOffsetMinutes, BSTR* pbstrLanguage, EALocationCodeType* pEALocationCode) get_SmartCardInfo;
				public function HRESULT(IBDA_ConditionalAccess *self, uint32* pulcApplications, uint32 ulcApplicationsMax, SmartCardApplication* rgApplications) get_SmartCardApplications;
				public function HRESULT(IBDA_ConditionalAccess *self, uint16 usVirtualChannel, EntitlementType* pEntitlement) get_Entitlement;
				public function HRESULT(IBDA_ConditionalAccess *self, uint16 usVirtualChannel) TuneByChannel;
				public function HRESULT(IBDA_ConditionalAccess *self, uint16 usProgramNumber) SetProgram;
				public function HRESULT(IBDA_ConditionalAccess *self, uint16 usProgramNumber) AddProgram;
				public function HRESULT(IBDA_ConditionalAccess *self, uint16 usProgramNumber) RemoveProgram;
				public function HRESULT(IBDA_ConditionalAccess *self, uint8 byDialogNumber, BSTR* pbstrURL) GetModuleUI;
				public function HRESULT(IBDA_ConditionalAccess *self, uint8 byDialogNumber, UICloseReasonType CloseReason) InformUIClosed;
			}
		}
		[CRepr]
		public struct IBDA_DiagnosticProperties : IPropertyBag
		{
			public const new Guid IID = .(0x20e80cb5, 0xc543, 0x4c1b, 0x8e, 0xb3, 0x49, 0xe7, 0x19, 0xee, 0xe7, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPropertyBag.VTable
			{
			}
		}
		[CRepr]
		public struct IBDA_DRM : IUnknown
		{
			public const new Guid IID = .(0xf98d88b0, 0x1992, 0x4cd6, 0xa6, 0xd9, 0xb9, 0xaf, 0xab, 0x99, 0x33, 0x0d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DRM *self, uint32* pdwStatus, HRESULT* phError) GetDRMPairingStatus;
				public function HRESULT(IBDA_DRM *self, BOOL fSync) PerformDRMPairing;
			}
		}
		[CRepr]
		public struct IBDA_NameValueService : IUnknown
		{
			public const new Guid IID = .(0x7f0b3150, 0x7b81, 0x4ad4, 0x98, 0xe3, 0x7e, 0x90, 0x97, 0x09, 0x43, 0x01);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_NameValueService *self, uint32 ulIndex, BSTR* pbstrName) GetValueNameByIndex;
				public function HRESULT(IBDA_NameValueService *self, BSTR bstrName, BSTR bstrLanguage, BSTR* pbstrValue) GetValue;
				public function HRESULT(IBDA_NameValueService *self, uint32 ulDialogRequest, BSTR bstrLanguage, BSTR bstrName, BSTR bstrValue, uint32 ulReserved) SetValue;
			}
		}
		[CRepr]
		public struct IBDA_ConditionalAccessEx : IUnknown
		{
			public const new Guid IID = .(0x497c3418, 0x23cb, 0x44ba, 0xbb, 0x62, 0x76, 0x9f, 0x50, 0x6f, 0xce, 0xa7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_ConditionalAccessEx *self, uint32 ulDialogRequest, BSTR bstrLanguage, BDA_CONDITIONALACCESS_REQUESTTYPE RequestType, uint32 ulcbEntitlementTokenLen, uint8* pbEntitlementToken, uint32* pulDescrambleStatus) CheckEntitlementToken;
				public function HRESULT(IBDA_ConditionalAccessEx *self, uint32 ulcbCaptureTokenLen, uint8* pbCaptureToken) SetCaptureToken;
				public function HRESULT(IBDA_ConditionalAccessEx *self, uint32 ulDialogRequest, BSTR bstrLanguage, uint32 EventId) OpenBroadcastMmi;
				public function HRESULT(IBDA_ConditionalAccessEx *self, uint32 ulDialogRequest, BSTR bstrLanguage, uint32 ulDialogNumber, BDA_CONDITIONALACCESS_MMICLOSEREASON ReasonCode, uint32* pulSessionResult) CloseMmiDialog;
				public function HRESULT(IBDA_ConditionalAccessEx *self, uint32* pulDialogRequestNumber) CreateDialogRequestNumber;
			}
		}
		[CRepr]
		public struct IBDA_ISDBConditionalAccess : IUnknown
		{
			public const new Guid IID = .(0x5e68c627, 0x16c2, 0x4e6c, 0xb1, 0xe2, 0xd0, 0x01, 0x70, 0xcd, 0xaa, 0x0f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_ISDBConditionalAccess *self, uint32 ulRequestId, uint32 ulcbRequestBufferLen, uint8* pbRequestBuffer) SetIsdbCasRequest;
			}
		}
		[CRepr]
		public struct IBDA_EventingService : IUnknown
		{
			public const new Guid IID = .(0x207c413f, 0x00dc, 0x4c61, 0xba, 0xd6, 0x6f, 0xee, 0x1f, 0xf0, 0x70, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_EventingService *self, uint32 ulEventID, uint32 ulEventResult) CompleteEvent;
			}
		}
		[CRepr]
		public struct IBDA_AUX : IUnknown
		{
			public const new Guid IID = .(0x7def4c09, 0x6e66, 0x4567, 0xa8, 0x19, 0xf0, 0xe1, 0x7f, 0x4a, 0x81, 0xab);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_AUX *self, uint32* pdwNumAuxInputsBSTR) QueryCapabilities;
				public function HRESULT(IBDA_AUX *self, uint32 dwIndex, uint32* dwInputID, Guid* pConnectorType, uint32* ConnTypeNum, uint32* NumVideoStds, uint64* AnalogStds) EnumCapability;
			}
		}
		[CRepr]
		public struct IBDA_Encoder : IUnknown
		{
			public const new Guid IID = .(0x3a8bad59, 0x59fe, 0x4559, 0xa0, 0xba, 0x39, 0x6c, 0xfa, 0xa9, 0x8a, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_Encoder *self, uint32* NumAudioFmts, uint32* NumVideoFmts) QueryCapabilities;
				public function HRESULT(IBDA_Encoder *self, uint32 FmtIndex, uint32* MethodID, uint32* AlgorithmType, uint32* SamplingRate, uint32* BitDepth, uint32* NumChannels) EnumAudioCapability;
				public function HRESULT(IBDA_Encoder *self, uint32 FmtIndex, uint32* MethodID, uint32* AlgorithmType, uint32* VerticalSize, uint32* HorizontalSize, uint32* AspectRatio, uint32* FrameRateCode, uint32* ProgressiveSequence) EnumVideoCapability;
				public function HRESULT(IBDA_Encoder *self, uint32 AudioBitrateMode, uint32 AudioBitrate, uint32 AudioMethodID, uint32 AudioProgram, uint32 VideoBitrateMode, uint32 VideoBitrate, uint32 VideoMethodID) SetParameters;
				public function HRESULT(IBDA_Encoder *self, uint32* AudioBitrateMax, uint32* AudioBitrateMin, uint32* AudioBitrateMode, uint32* AudioBitrateStepping, uint32* AudioBitrate, uint32* AudioMethodID, uint32* AvailableAudioPrograms, uint32* AudioProgram, uint32* VideoBitrateMax, uint32* VideoBitrateMin, uint32* VideoBitrateMode, uint32* VideoBitrate, uint32* VideoBitrateStepping, uint32* VideoMethodID, uint32* SignalSourceID, uint64* SignalFormat, BOOL* SignalLock, int32* SignalLevel, uint32* SignalToNoiseRatio) GetState;
			}
		}
		[CRepr]
		public struct IBDA_FDC : IUnknown
		{
			public const new Guid IID = .(0x138adc7e, 0x58ae, 0x437f, 0xb0, 0xb4, 0xc9, 0xfe, 0x19, 0xd5, 0xb4, 0xac);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_FDC *self, uint32* CurrentBitrate, BOOL* CarrierLock, uint32* CurrentFrequency, BOOL* CurrentSpectrumInversion, BSTR* CurrentPIDList, BSTR* CurrentTIDList, BOOL* Overflow) GetStatus;
				public function HRESULT(IBDA_FDC *self, BSTR TableIDs) RequestTables;
				public function HRESULT(IBDA_FDC *self, BSTR PidsToAdd, uint32* RemainingFilterEntries) AddPid;
				public function HRESULT(IBDA_FDC *self, BSTR PidsToRemove) RemovePid;
				public function HRESULT(IBDA_FDC *self, BSTR TidsToAdd, BSTR* CurrentTidList) AddTid;
				public function HRESULT(IBDA_FDC *self, BSTR TidsToRemove) RemoveTid;
				public function HRESULT(IBDA_FDC *self, uint32* Pid, uint32 MaxBufferSize, uint32* ActualSize, uint8* SecBuffer) GetTableSection;
			}
		}
		[CRepr]
		public struct IBDA_GuideDataDeliveryService : IUnknown
		{
			public const new Guid IID = .(0xc0afcb73, 0x23e7, 0x4bc6, 0xba, 0xfa, 0xfd, 0xc1, 0x67, 0xb4, 0x71, 0x9f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_GuideDataDeliveryService *self, Guid* pguidDataType) GetGuideDataType;
				public function HRESULT(IBDA_GuideDataDeliveryService *self, uint32* pulcbBufferLen, uint8* pbBuffer, uint32* pulGuideDataPercentageProgress) GetGuideData;
				public function HRESULT(IBDA_GuideDataDeliveryService *self) RequestGuideDataUpdate;
				public function HRESULT(IBDA_GuideDataDeliveryService *self, uint64 ul64ServiceIdx, BSTR* pbstrTuneXml) GetTuneXmlFromServiceIdx;
				public function HRESULT(IBDA_GuideDataDeliveryService *self, uint32* pulcbBufferLen, uint8* pbBuffer) GetServices;
				public function HRESULT(IBDA_GuideDataDeliveryService *self, BSTR bstrTuneXml, BSTR* pbstrServiceDescription) GetServiceInfoFromTuneXml;
			}
		}
		[CRepr]
		public struct IBDA_DRMService : IUnknown
		{
			public const new Guid IID = .(0xbff6b5bb, 0xb0ae, 0x484c, 0x9d, 0xca, 0x73, 0x52, 0x8f, 0xb0, 0xb4, 0x6e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DRMService *self, Guid* puuidNewDrm) SetDRM;
				public function HRESULT(IBDA_DRMService *self, BSTR* pbstrDrmUuidList, Guid* DrmUuid) GetDRMStatus;
			}
		}
		[CRepr]
		public struct IBDA_WMDRMSession : IUnknown
		{
			public const new Guid IID = .(0x4be6fa3d, 0x07cd, 0x4139, 0x8b, 0x80, 0x8c, 0x18, 0xba, 0x3a, 0xec, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_WMDRMSession *self, uint32* MaxCaptureToken, uint32* MaxStreamingPid, uint32* MaxLicense, uint32* MinSecurityLevel, uint32* RevInfoSequenceNumber, uint64* RevInfoIssuedTime, uint32* RevInfoTTL, uint32* RevListVersion, uint32* ulState) GetStatus;
				public function HRESULT(IBDA_WMDRMSession *self, uint32 ulRevInfoLen, uint8* pbRevInfo) SetRevInfo;
				public function HRESULT(IBDA_WMDRMSession *self, uint32 ulCrlLen, uint8* pbCrlLen) SetCrl;
				public function HRESULT(IBDA_WMDRMSession *self, uint32 ulcbRequest, uint8* pbRequest, uint32* pulcbResponse, uint8* pbResponse) TransactMessage;
				public function HRESULT(IBDA_WMDRMSession *self, Guid* uuidKey, uint32* pulPackageLen, uint8* pbPackage) GetLicense;
				public function HRESULT(IBDA_WMDRMSession *self, Guid* uuidKey) ReissueLicense;
				public function HRESULT(IBDA_WMDRMSession *self, uint32 ulInXmrLicenseLen, uint8* pbInXmrLicense, uint32 ulEntitlementTokenLen, uint8* pbEntitlementToken, uint32* pulDescrambleStatus, uint32* pulOutXmrLicenseLen, uint8* pbOutXmrLicense) RenewLicense;
				public function HRESULT(IBDA_WMDRMSession *self, uint32* pulKeyInfoLen, uint8* pbKeyInfo) GetKeyInfo;
			}
		}
		[CRepr]
		public struct IBDA_WMDRMTuner : IUnknown
		{
			public const new Guid IID = .(0x86d979cf, 0xa8a7, 0x4f94, 0xb5, 0xfb, 0x14, 0xc0, 0xac, 0xa6, 0x8f, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_WMDRMTuner *self, uint32 ulDialogRequest, BSTR bstrLanguage, uint32 ulPurchaseTokenLen, uint8* pbPurchaseToken, uint32* pulDescrambleStatus, uint32* pulCaptureTokenLen, uint8* pbCaptureToken) PurchaseEntitlement;
				public function HRESULT(IBDA_WMDRMTuner *self, uint32 ulCaptureTokenLen, uint8* pbCaptureToken) CancelCaptureToken;
				public function HRESULT(IBDA_WMDRMTuner *self, uint32 ulPid, Guid* uuidKey) SetPidProtection;
				public function HRESULT(IBDA_WMDRMTuner *self, uint32 pulPid, Guid* uuidKey) GetPidProtection;
				public function HRESULT(IBDA_WMDRMTuner *self, uint32 ulSyncValue) SetSyncValue;
				public function HRESULT(IBDA_WMDRMTuner *self, uint32* pulStartCodeProfileLen, uint8* pbStartCodeProfile) GetStartCodeProfile;
			}
		}
		[CRepr]
		public struct IBDA_DRIDRMService : IUnknown
		{
			public const new Guid IID = .(0x1f9bc2a5, 0x44a3, 0x4c52, 0xaa, 0xb1, 0x0b, 0xbc, 0xe5, 0xa1, 0x38, 0x1d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DRIDRMService *self, BSTR bstrNewDrm) SetDRM;
				public function HRESULT(IBDA_DRIDRMService *self, BSTR* pbstrDrmUuidList, Guid* DrmUuid) GetDRMStatus;
				public function HRESULT(IBDA_DRIDRMService *self, BDA_DrmPairingError* penumPairingStatus) GetPairingStatus;
			}
		}
		[CRepr]
		public struct IBDA_DRIWMDRMSession : IUnknown
		{
			public const new Guid IID = .(0x05c690f8, 0x56db, 0x4bb2, 0xb0, 0x53, 0x79, 0xc1, 0x20, 0x98, 0xbb, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_DRIWMDRMSession *self, HRESULT hrLicenseAck) AcknowledgeLicense;
				public function HRESULT(IBDA_DRIWMDRMSession *self, uint32 dwcbLicenseMessage, uint8* pbLicenseMessage, uint32* pdwcbLicenseResponse, uint8** ppbLicenseResponse) ProcessLicenseChallenge;
				public function HRESULT(IBDA_DRIWMDRMSession *self, uint32 dwcbRegistrationMessage, uint8* pbRegistrationMessage, uint32* pdwcbRegistrationResponse, uint8** ppbRegistrationResponse) ProcessRegistrationChallenge;
				public function HRESULT(IBDA_DRIWMDRMSession *self, uint32 dwRevInfoLen, uint8* pbRevInfo, uint32* pdwResponse) SetRevInfo;
				public function HRESULT(IBDA_DRIWMDRMSession *self, uint32 dwCrlLen, uint8* pbCrlLen, uint32* pdwResponse) SetCrl;
				public function HRESULT(IBDA_DRIWMDRMSession *self) GetHMSAssociationData;
				public function HRESULT(IBDA_DRIWMDRMSession *self, uint32* pdwError) GetLastCardeaError;
			}
		}
		[CRepr]
		public struct IBDA_MUX : IUnknown
		{
			public const new Guid IID = .(0x942aafec, 0x4c05, 0x4c74, 0xb8, 0xeb, 0x87, 0x06, 0xc2, 0xa4, 0x94, 0x3f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_MUX *self, uint32 ulPidListCount, BDA_MUX_PIDLISTITEM* pbPidListBuffer) SetPidList;
				public function HRESULT(IBDA_MUX *self, uint32* pulPidListCount, BDA_MUX_PIDLISTITEM* pbPidListBuffer) GetPidList;
			}
		}
		[CRepr]
		public struct IBDA_TransportStreamSelector : IUnknown
		{
			public const new Guid IID = .(0x1dcfafe9, 0xb45e, 0x41b3, 0xbb, 0x2a, 0x56, 0x1e, 0xb1, 0x29, 0xae, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_TransportStreamSelector *self, uint16 usTSID) SetTSID;
				public function HRESULT(IBDA_TransportStreamSelector *self, uint32* pulTSInformationBufferLen, uint8* pbTSInformationBuffer) GetTSInformation;
			}
		}
		[CRepr]
		public struct IBDA_UserActivityService : IUnknown
		{
			public const new Guid IID = .(0x53b14189, 0xe478, 0x4b7a, 0xa1, 0xff, 0x50, 0x6d, 0xb4, 0xb9, 0x9d, 0xfe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_UserActivityService *self, uint32 dwUseReason) SetCurrentTunerUseReason;
				public function HRESULT(IBDA_UserActivityService *self, uint32* pdwActivityInterval) GetUserActivityInterval;
				public function HRESULT(IBDA_UserActivityService *self) UserActivityDetected;
			}
		}
		[CRepr]
		public struct IESEvent : IUnknown
		{
			public const new Guid IID = .(0x1f0e5357, 0xaf43, 0x44e6, 0x85, 0x47, 0x65, 0x4c, 0x64, 0x51, 0x45, 0xd2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IESEvent *self, uint32* pdwEventId) GetEventId;
				public function HRESULT(IESEvent *self, Guid* pguidEventType) GetEventType;
				public function HRESULT(IESEvent *self, uint32 dwResult) SetCompletionStatus;
				public function HRESULT(IESEvent *self, SAFEARRAY** pbData) GetData;
				public function HRESULT(IESEvent *self, BSTR* pbstrData) GetStringData;
			}
		}
		[CRepr]
		public struct IESEvents : IUnknown
		{
			public const new Guid IID = .(0xabd414bf, 0xcfe5, 0x4e5e, 0xaf, 0x5b, 0x4b, 0x4e, 0x49, 0xc5, 0xbf, 0xeb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IESEvents *self, Guid guidEventType, IESEvent* pESEvent) OnESEventReceived;
			}
		}
		[CRepr]
		public struct IBroadcastEvent : IUnknown
		{
			public const new Guid IID = .(0x3b21263f, 0x26e8, 0x489d, 0xaa, 0xc4, 0x92, 0x4f, 0x7e, 0xfd, 0x95, 0x11);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBroadcastEvent *self, Guid EventID) Fire;
			}
		}
		[CRepr]
		public struct IBroadcastEventEx : IBroadcastEvent
		{
			public const new Guid IID = .(0x3d9e3887, 0x1929, 0x423f, 0x80, 0x21, 0x43, 0x68, 0x2d, 0xe9, 0x54, 0x48);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBroadcastEvent.VTable
			{
				public function HRESULT(IBroadcastEventEx *self, Guid EventID, uint32 Param1, uint32 Param2, uint32 Param3, uint32 Param4) FireEx;
			}
		}
		[CRepr]
		public struct IAMNetShowConfig : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f1, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMNetShowConfig *self, double* pBufferingTime) get_BufferingTime;
				public function HRESULT(IAMNetShowConfig *self, double BufferingTime) put_BufferingTime;
				public function HRESULT(IAMNetShowConfig *self, int16* pUseFixedUDPPort) get_UseFixedUDPPort;
				public function HRESULT(IAMNetShowConfig *self, int16 UseFixedUDPPort) put_UseFixedUDPPort;
				public function HRESULT(IAMNetShowConfig *self, int32* pFixedUDPPort) get_FixedUDPPort;
				public function HRESULT(IAMNetShowConfig *self, int32 FixedUDPPort) put_FixedUDPPort;
				public function HRESULT(IAMNetShowConfig *self, int16* pUseHTTPProxy) get_UseHTTPProxy;
				public function HRESULT(IAMNetShowConfig *self, int16 UseHTTPProxy) put_UseHTTPProxy;
				public function HRESULT(IAMNetShowConfig *self, int16* pEnableAutoProxy) get_EnableAutoProxy;
				public function HRESULT(IAMNetShowConfig *self, int16 EnableAutoProxy) put_EnableAutoProxy;
				public function HRESULT(IAMNetShowConfig *self, BSTR* pbstrHTTPProxyHost) get_HTTPProxyHost;
				public function HRESULT(IAMNetShowConfig *self, BSTR bstrHTTPProxyHost) put_HTTPProxyHost;
				public function HRESULT(IAMNetShowConfig *self, int32* pHTTPProxyPort) get_HTTPProxyPort;
				public function HRESULT(IAMNetShowConfig *self, int32 HTTPProxyPort) put_HTTPProxyPort;
				public function HRESULT(IAMNetShowConfig *self, int16* pEnableMulticast) get_EnableMulticast;
				public function HRESULT(IAMNetShowConfig *self, int16 EnableMulticast) put_EnableMulticast;
				public function HRESULT(IAMNetShowConfig *self, int16* pEnableUDP) get_EnableUDP;
				public function HRESULT(IAMNetShowConfig *self, int16 EnableUDP) put_EnableUDP;
				public function HRESULT(IAMNetShowConfig *self, int16* pEnableTCP) get_EnableTCP;
				public function HRESULT(IAMNetShowConfig *self, int16 EnableTCP) put_EnableTCP;
				public function HRESULT(IAMNetShowConfig *self, int16* pEnableHTTP) get_EnableHTTP;
				public function HRESULT(IAMNetShowConfig *self, int16 EnableHTTP) put_EnableHTTP;
			}
		}
		[CRepr]
		public struct IAMChannelInfo : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f2, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMChannelInfo *self, BSTR* pbstrChannelName) get_ChannelName;
				public function HRESULT(IAMChannelInfo *self, BSTR* pbstrChannelDescription) get_ChannelDescription;
				public function HRESULT(IAMChannelInfo *self, BSTR* pbstrChannelURL) get_ChannelURL;
				public function HRESULT(IAMChannelInfo *self, BSTR* pbstrContactAddress) get_ContactAddress;
				public function HRESULT(IAMChannelInfo *self, BSTR* pbstrContactPhone) get_ContactPhone;
				public function HRESULT(IAMChannelInfo *self, BSTR* pbstrContactEmail) get_ContactEmail;
			}
		}
		[CRepr]
		public struct IAMNetworkStatus : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f3, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMNetworkStatus *self, int32* pReceivedPackets) get_ReceivedPackets;
				public function HRESULT(IAMNetworkStatus *self, int32* pRecoveredPackets) get_RecoveredPackets;
				public function HRESULT(IAMNetworkStatus *self, int32* pLostPackets) get_LostPackets;
				public function HRESULT(IAMNetworkStatus *self, int32* pReceptionQuality) get_ReceptionQuality;
				public function HRESULT(IAMNetworkStatus *self, int32* pBufferingCount) get_BufferingCount;
				public function HRESULT(IAMNetworkStatus *self, int16* pIsBroadcast) get_IsBroadcast;
				public function HRESULT(IAMNetworkStatus *self, int32* pBufferingProgress) get_BufferingProgress;
			}
		}
		[CRepr]
		public struct IAMExtendedSeeking : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f9, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMExtendedSeeking *self, int32* pExCapabilities) get_ExSeekCapabilities;
				public function HRESULT(IAMExtendedSeeking *self, int32* pMarkerCount) get_MarkerCount;
				public function HRESULT(IAMExtendedSeeking *self, int32* pCurrentMarker) get_CurrentMarker;
				public function HRESULT(IAMExtendedSeeking *self, int32 MarkerNum, double* pMarkerTime) GetMarkerTime;
				public function HRESULT(IAMExtendedSeeking *self, int32 MarkerNum, BSTR* pbstrMarkerName) GetMarkerName;
				public function HRESULT(IAMExtendedSeeking *self, double Speed) put_PlaybackSpeed;
				public function HRESULT(IAMExtendedSeeking *self, double* pSpeed) get_PlaybackSpeed;
			}
		}
		[CRepr]
		public struct IAMNetShowExProps : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f5, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMNetShowExProps *self, int32* pSourceProtocol) get_SourceProtocol;
				public function HRESULT(IAMNetShowExProps *self, int32* pBandwidth) get_Bandwidth;
				public function HRESULT(IAMNetShowExProps *self, BSTR* pbstrErrorCorrection) get_ErrorCorrection;
				public function HRESULT(IAMNetShowExProps *self, int32* pCodecCount) get_CodecCount;
				public function HRESULT(IAMNetShowExProps *self, int32 CodecNum, int16* pCodecInstalled) GetCodecInstalled;
				public function HRESULT(IAMNetShowExProps *self, int32 CodecNum, BSTR* pbstrCodecDescription) GetCodecDescription;
				public function HRESULT(IAMNetShowExProps *self, int32 CodecNum, BSTR* pbstrCodecURL) GetCodecURL;
				public function HRESULT(IAMNetShowExProps *self, double* pCreationDate) get_CreationDate;
				public function HRESULT(IAMNetShowExProps *self, BSTR* pbstrSourceLink) get_SourceLink;
			}
		}
		[CRepr]
		public struct IAMExtendedErrorInfo : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f6, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMExtendedErrorInfo *self, int16* pHasError) get_HasError;
				public function HRESULT(IAMExtendedErrorInfo *self, BSTR* pbstrErrorDescription) get_ErrorDescription;
				public function HRESULT(IAMExtendedErrorInfo *self, int32* pErrorCode) get_ErrorCode;
			}
		}
		[CRepr]
		public struct IAMMediaContent : IDispatch
		{
			public const new Guid IID = .(0xfa2aa8f4, 0x8b62, 0x11d0, 0xa5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrAuthorName) get_AuthorName;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrTitle) get_Title;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrRating) get_Rating;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrDescription) get_Description;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrCopyright) get_Copyright;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrBaseURL) get_BaseURL;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrLogoURL) get_LogoURL;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrLogoURL) get_LogoIconURL;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrWatermarkURL) get_WatermarkURL;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrMoreInfoURL) get_MoreInfoURL;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrMoreInfoBannerImage) get_MoreInfoBannerImage;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrMoreInfoBannerURL) get_MoreInfoBannerURL;
				public function HRESULT(IAMMediaContent *self, BSTR* pbstrMoreInfoText) get_MoreInfoText;
			}
		}
		[CRepr]
		public struct IAMMediaContent2 : IDispatch
		{
			public const new Guid IID = .(0xce8f78c1, 0x74d9, 0x11d2, 0xb0, 0x9d, 0x00, 0xa0, 0xc9, 0xa8, 0x11, 0x17);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMMediaContent2 *self, int32 EntryNum, BSTR bstrName, BSTR* pbstrValue) get_MediaParameter;
				public function HRESULT(IAMMediaContent2 *self, int32 EntryNum, int32 Index, BSTR* pbstrName) get_MediaParameterName;
				public function HRESULT(IAMMediaContent2 *self, int32* pNumberEntries) get_PlaylistCount;
			}
		}
		[CRepr]
		public struct IAMNetShowPreroll : IDispatch
		{
			public const new Guid IID = .(0xaae7e4e2, 0x6388, 0x11d1, 0x8d, 0x93, 0x00, 0x60, 0x97, 0xc9, 0xa2, 0xb2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMNetShowPreroll *self, int16 fPreroll) put_Preroll;
				public function HRESULT(IAMNetShowPreroll *self, int16* pfPreroll) get_Preroll;
			}
		}
		[CRepr]
		public struct IDShowPlugin : IUnknown
		{
			public const new Guid IID = .(0x4746b7c8, 0x700e, 0x11d1, 0xbe, 0xcc, 0x00, 0xc0, 0x4f, 0xb6, 0xe9, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDShowPlugin *self, BSTR* pURL) get_URL;
				public function HRESULT(IDShowPlugin *self, BSTR* pUserAgent) get_UserAgent;
			}
		}
		[CRepr]
		public struct IAMDirectSound : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMDirectSound *self, IDirectSound** lplpds) GetDirectSoundInterface;
				public function HRESULT(IAMDirectSound *self, IDirectSoundBuffer** lplpdsb) GetPrimaryBufferInterface;
				public function HRESULT(IAMDirectSound *self, IDirectSoundBuffer** lplpdsb) GetSecondaryBufferInterface;
				public function HRESULT(IAMDirectSound *self, IDirectSound* lpds) ReleaseDirectSoundInterface;
				public function HRESULT(IAMDirectSound *self, IDirectSoundBuffer* lpdsb) ReleasePrimaryBufferInterface;
				public function HRESULT(IAMDirectSound *self, IDirectSoundBuffer* lpdsb) ReleaseSecondaryBufferInterface;
				public function HRESULT(IAMDirectSound *self, HWND param0, BOOL param1) SetFocusWindow;
				public function HRESULT(IAMDirectSound *self, HWND* param0, BOOL* param1) GetFocusWindow;
			}
		}
		[CRepr]
		public struct IAMLine21Decoder : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_CCLEVEL* lpLevel) GetDecoderLevel;
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_CCSERVICE* lpService) GetCurrentService;
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_CCSERVICE Service) SetCurrentService;
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_CCSTATE* lpState) GetServiceState;
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_CCSTATE State) SetServiceState;
				public function HRESULT(IAMLine21Decoder *self, BITMAPINFOHEADER* lpbmih) GetOutputFormat;
				public function HRESULT(IAMLine21Decoder *self, BITMAPINFO* lpbmi) SetOutputFormat;
				public function HRESULT(IAMLine21Decoder *self, uint32* pdwPhysColor) GetBackgroundColor;
				public function HRESULT(IAMLine21Decoder *self, uint32 dwPhysColor) SetBackgroundColor;
				public function HRESULT(IAMLine21Decoder *self, int32* lpbOption) GetRedrawAlways;
				public function HRESULT(IAMLine21Decoder *self, BOOL bOption) SetRedrawAlways;
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_DRAWBGMODE* lpMode) GetDrawBackgroundMode;
				public function HRESULT(IAMLine21Decoder *self, AM_LINE21_DRAWBGMODE Mode) SetDrawBackgroundMode;
			}
		}
		[CRepr]
		public struct IAMParse : IUnknown
		{
			public const new Guid IID = .(0xc47a3420, 0x005c, 0x11d2, 0x90, 0x38, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMParse *self, int64* prtCurrent) GetParseTime;
				public function HRESULT(IAMParse *self, int64 rtCurrent) SetParseTime;
				public function HRESULT(IAMParse *self) Flush;
			}
		}
		[CRepr]
		public struct IAMCollection : IDispatch
		{
			public const new Guid IID = .(0x56a868b9, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMCollection *self, int32* plCount) get_Count;
				public function HRESULT(IAMCollection *self, int32 lItem, IUnknown** ppUnk) Item;
				public function HRESULT(IAMCollection *self, IUnknown** ppUnk) get__NewEnum;
			}
		}
		[CRepr]
		public struct IMediaControl : IDispatch
		{
			public const new Guid IID = .(0x56a868b1, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMediaControl *self) Run;
				public function HRESULT(IMediaControl *self) Pause;
				public function HRESULT(IMediaControl *self) Stop;
				public function HRESULT(IMediaControl *self, int32 msTimeout, int32* pfs) GetState;
				public function HRESULT(IMediaControl *self, BSTR strFilename) RenderFile;
				public function HRESULT(IMediaControl *self, BSTR strFilename, IDispatch** ppUnk) AddSourceFilter;
				public function HRESULT(IMediaControl *self, IDispatch** ppUnk) get_FilterCollection;
				public function HRESULT(IMediaControl *self, IDispatch** ppUnk) get_RegFilterCollection;
				public function HRESULT(IMediaControl *self) StopWhenReady;
			}
		}
		[CRepr]
		public struct IMediaEvent : IDispatch
		{
			public const new Guid IID = .(0x56a868b6, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMediaEvent *self, int* hEvent) GetEventHandle;
				public function HRESULT(IMediaEvent *self, int32* lEventCode, int* lParam1, int* lParam2, int32 msTimeout) GetEvent;
				public function HRESULT(IMediaEvent *self, int32 msTimeout, int32* pEvCode) WaitForCompletion;
				public function HRESULT(IMediaEvent *self, int32 lEvCode) CancelDefaultHandling;
				public function HRESULT(IMediaEvent *self, int32 lEvCode) RestoreDefaultHandling;
				public function HRESULT(IMediaEvent *self, int32 lEvCode, int lParam1, int lParam2) FreeEventParams;
			}
		}
		[CRepr]
		public struct IMediaEventEx : IMediaEvent
		{
			public const new Guid IID = .(0x56a868c0, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaEvent.VTable
			{
				public function HRESULT(IMediaEventEx *self, int hwnd, int32 lMsg, int lInstanceData) SetNotifyWindow;
				public function HRESULT(IMediaEventEx *self, int32 lNoNotifyFlags) SetNotifyFlags;
				public function HRESULT(IMediaEventEx *self, int32* lplNoNotifyFlags) GetNotifyFlags;
			}
		}
		[CRepr]
		public struct IMediaPosition : IDispatch
		{
			public const new Guid IID = .(0x56a868b2, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMediaPosition *self, double* plength) get_Duration;
				public function HRESULT(IMediaPosition *self, double llTime) put_CurrentPosition;
				public function HRESULT(IMediaPosition *self, double* pllTime) get_CurrentPosition;
				public function HRESULT(IMediaPosition *self, double* pllTime) get_StopTime;
				public function HRESULT(IMediaPosition *self, double llTime) put_StopTime;
				public function HRESULT(IMediaPosition *self, double* pllTime) get_PrerollTime;
				public function HRESULT(IMediaPosition *self, double llTime) put_PrerollTime;
				public function HRESULT(IMediaPosition *self, double dRate) put_Rate;
				public function HRESULT(IMediaPosition *self, double* pdRate) get_Rate;
				public function HRESULT(IMediaPosition *self, int32* pCanSeekForward) CanSeekForward;
				public function HRESULT(IMediaPosition *self, int32* pCanSeekBackward) CanSeekBackward;
			}
		}
		[CRepr]
		public struct IBasicAudio : IDispatch
		{
			public const new Guid IID = .(0x56a868b3, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IBasicAudio *self, int32 lVolume) put_Volume;
				public function HRESULT(IBasicAudio *self, int32* plVolume) get_Volume;
				public function HRESULT(IBasicAudio *self, int32 lBalance) put_Balance;
				public function HRESULT(IBasicAudio *self, int32* plBalance) get_Balance;
			}
		}
		[CRepr]
		public struct IVideoWindow : IDispatch
		{
			public const new Guid IID = .(0x56a868b4, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IVideoWindow *self, BSTR strCaption) put_Caption;
				public function HRESULT(IVideoWindow *self, BSTR* strCaption) get_Caption;
				public function HRESULT(IVideoWindow *self, int32 WindowStyle) put_WindowStyle;
				public function HRESULT(IVideoWindow *self, int32* WindowStyle) get_WindowStyle;
				public function HRESULT(IVideoWindow *self, int32 WindowStyleEx) put_WindowStyleEx;
				public function HRESULT(IVideoWindow *self, int32* WindowStyleEx) get_WindowStyleEx;
				public function HRESULT(IVideoWindow *self, int32 AutoShow) put_AutoShow;
				public function HRESULT(IVideoWindow *self, int32* AutoShow) get_AutoShow;
				public function HRESULT(IVideoWindow *self, int32 WindowState) put_WindowState;
				public function HRESULT(IVideoWindow *self, int32* WindowState) get_WindowState;
				public function HRESULT(IVideoWindow *self, int32 BackgroundPalette) put_BackgroundPalette;
				public function HRESULT(IVideoWindow *self, int32* pBackgroundPalette) get_BackgroundPalette;
				public function HRESULT(IVideoWindow *self, int32 Visible) put_Visible;
				public function HRESULT(IVideoWindow *self, int32* pVisible) get_Visible;
				public function HRESULT(IVideoWindow *self, int32 Left) put_Left;
				public function HRESULT(IVideoWindow *self, int32* pLeft) get_Left;
				public function HRESULT(IVideoWindow *self, int32 Width) put_Width;
				public function HRESULT(IVideoWindow *self, int32* pWidth) get_Width;
				public function HRESULT(IVideoWindow *self, int32 Top) put_Top;
				public function HRESULT(IVideoWindow *self, int32* pTop) get_Top;
				public function HRESULT(IVideoWindow *self, int32 Height) put_Height;
				public function HRESULT(IVideoWindow *self, int32* pHeight) get_Height;
				public function HRESULT(IVideoWindow *self, int Owner) put_Owner;
				public function HRESULT(IVideoWindow *self, int* Owner) get_Owner;
				public function HRESULT(IVideoWindow *self, int Drain) put_MessageDrain;
				public function HRESULT(IVideoWindow *self, int* Drain) get_MessageDrain;
				public function HRESULT(IVideoWindow *self, int32* Color) get_BorderColor;
				public function HRESULT(IVideoWindow *self, int32 Color) put_BorderColor;
				public function HRESULT(IVideoWindow *self, int32* FullScreenMode) get_FullScreenMode;
				public function HRESULT(IVideoWindow *self, int32 FullScreenMode) put_FullScreenMode;
				public function HRESULT(IVideoWindow *self, int32 Focus) SetWindowForeground;
				public function HRESULT(IVideoWindow *self, int hwnd, int32 uMsg, int wParam, int lParam) NotifyOwnerMessage;
				public function HRESULT(IVideoWindow *self, int32 Left, int32 Top, int32 Width, int32 Height) SetWindowPosition;
				public function HRESULT(IVideoWindow *self, int32* pLeft, int32* pTop, int32* pWidth, int32* pHeight) GetWindowPosition;
				public function HRESULT(IVideoWindow *self, int32* pWidth, int32* pHeight) GetMinIdealImageSize;
				public function HRESULT(IVideoWindow *self, int32* pWidth, int32* pHeight) GetMaxIdealImageSize;
				public function HRESULT(IVideoWindow *self, int32* pLeft, int32* pTop, int32* pWidth, int32* pHeight) GetRestorePosition;
				public function HRESULT(IVideoWindow *self, OA_BOOL HideCursor) HideCursor;
				public function HRESULT(IVideoWindow *self, int32* CursorHidden) IsCursorHidden;
			}
		}
		[CRepr]
		public struct IBasicVideo : IDispatch
		{
			public const new Guid IID = .(0x56a868b5, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IBasicVideo *self, double* pAvgTimePerFrame) get_AvgTimePerFrame;
				public function HRESULT(IBasicVideo *self, int32* pBitRate) get_BitRate;
				public function HRESULT(IBasicVideo *self, int32* pBitErrorRate) get_BitErrorRate;
				public function HRESULT(IBasicVideo *self, int32* pVideoWidth) get_VideoWidth;
				public function HRESULT(IBasicVideo *self, int32* pVideoHeight) get_VideoHeight;
				public function HRESULT(IBasicVideo *self, int32 SourceLeft) put_SourceLeft;
				public function HRESULT(IBasicVideo *self, int32* pSourceLeft) get_SourceLeft;
				public function HRESULT(IBasicVideo *self, int32 SourceWidth) put_SourceWidth;
				public function HRESULT(IBasicVideo *self, int32* pSourceWidth) get_SourceWidth;
				public function HRESULT(IBasicVideo *self, int32 SourceTop) put_SourceTop;
				public function HRESULT(IBasicVideo *self, int32* pSourceTop) get_SourceTop;
				public function HRESULT(IBasicVideo *self, int32 SourceHeight) put_SourceHeight;
				public function HRESULT(IBasicVideo *self, int32* pSourceHeight) get_SourceHeight;
				public function HRESULT(IBasicVideo *self, int32 DestinationLeft) put_DestinationLeft;
				public function HRESULT(IBasicVideo *self, int32* pDestinationLeft) get_DestinationLeft;
				public function HRESULT(IBasicVideo *self, int32 DestinationWidth) put_DestinationWidth;
				public function HRESULT(IBasicVideo *self, int32* pDestinationWidth) get_DestinationWidth;
				public function HRESULT(IBasicVideo *self, int32 DestinationTop) put_DestinationTop;
				public function HRESULT(IBasicVideo *self, int32* pDestinationTop) get_DestinationTop;
				public function HRESULT(IBasicVideo *self, int32 DestinationHeight) put_DestinationHeight;
				public function HRESULT(IBasicVideo *self, int32* pDestinationHeight) get_DestinationHeight;
				public function HRESULT(IBasicVideo *self, int32 Left, int32 Top, int32 Width, int32 Height) SetSourcePosition;
				public function HRESULT(IBasicVideo *self, int32* pLeft, int32* pTop, int32* pWidth, int32* pHeight) GetSourcePosition;
				public function HRESULT(IBasicVideo *self) SetDefaultSourcePosition;
				public function HRESULT(IBasicVideo *self, int32 Left, int32 Top, int32 Width, int32 Height) SetDestinationPosition;
				public function HRESULT(IBasicVideo *self, int32* pLeft, int32* pTop, int32* pWidth, int32* pHeight) GetDestinationPosition;
				public function HRESULT(IBasicVideo *self) SetDefaultDestinationPosition;
				public function HRESULT(IBasicVideo *self, int32* pWidth, int32* pHeight) GetVideoSize;
				public function HRESULT(IBasicVideo *self, int32 StartIndex, int32 Entries, int32* pRetrieved, int32* pPalette) GetVideoPaletteEntries;
				public function HRESULT(IBasicVideo *self, int32* pBufferSize, int32* pDIBImage) GetCurrentImage;
				public function HRESULT(IBasicVideo *self) IsUsingDefaultSource;
				public function HRESULT(IBasicVideo *self) IsUsingDefaultDestination;
			}
		}
		[CRepr]
		public struct IBasicVideo2 : IBasicVideo
		{
			public const new Guid IID = .(0x329bb360, 0xf6ea, 0x11d1, 0x90, 0x38, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBasicVideo.VTable
			{
				public function HRESULT(IBasicVideo2 *self, int32* plAspectX, int32* plAspectY) GetPreferredAspectRatio;
			}
		}
		[CRepr]
		public struct IDeferredCommand : IUnknown
		{
			public const new Guid IID = .(0x56a868b8, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDeferredCommand *self) Cancel;
				public function HRESULT(IDeferredCommand *self, int32* pConfidence) Confidence;
				public function HRESULT(IDeferredCommand *self, double newtime) Postpone;
				public function HRESULT(IDeferredCommand *self, HRESULT* phrResult) GetHResult;
			}
		}
		[CRepr]
		public struct IQueueCommand : IUnknown
		{
			public const new Guid IID = .(0x56a868b7, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IQueueCommand *self, IDeferredCommand** pCmd, double time, Guid* iid, int32 dispidMethod, int16 wFlags, int32 cArgs, VARIANT* pDispParams, VARIANT* pvarResult, int16* puArgErr) InvokeAtStreamTime;
				public function HRESULT(IQueueCommand *self, IDeferredCommand** pCmd, double time, Guid* iid, int32 dispidMethod, int16 wFlags, int32 cArgs, VARIANT* pDispParams, VARIANT* pvarResult, int16* puArgErr) InvokeAtPresentationTime;
			}
		}
		[CRepr]
		public struct IFilterInfo : IDispatch
		{
			public const new Guid IID = .(0x56a868ba, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFilterInfo *self, BSTR strPinID, IDispatch** ppUnk) FindPin;
				public function HRESULT(IFilterInfo *self, BSTR* strName) get_Name;
				public function HRESULT(IFilterInfo *self, BSTR* strVendorInfo) get_VendorInfo;
				public function HRESULT(IFilterInfo *self, IUnknown** ppUnk) get_Filter;
				public function HRESULT(IFilterInfo *self, IDispatch** ppUnk) get_Pins;
				public function HRESULT(IFilterInfo *self, int32* pbIsSource) get_IsFileSource;
				public function HRESULT(IFilterInfo *self, BSTR* pstrFilename) get_Filename;
				public function HRESULT(IFilterInfo *self, BSTR strFilename) put_Filename;
			}
		}
		[CRepr]
		public struct IRegFilterInfo : IDispatch
		{
			public const new Guid IID = .(0x56a868bb, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRegFilterInfo *self, BSTR* strName) get_Name;
				public function HRESULT(IRegFilterInfo *self, IDispatch** ppUnk) Filter;
			}
		}
		[CRepr]
		public struct IMediaTypeInfo : IDispatch
		{
			public const new Guid IID = .(0x56a868bc, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMediaTypeInfo *self, BSTR* strType) get_Type;
				public function HRESULT(IMediaTypeInfo *self, BSTR* strType) get_Subtype;
			}
		}
		[CRepr]
		public struct IPinInfo : IDispatch
		{
			public const new Guid IID = .(0x56a868bd, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IPinInfo *self, IUnknown** ppUnk) get_Pin;
				public function HRESULT(IPinInfo *self, IDispatch** ppUnk) get_ConnectedTo;
				public function HRESULT(IPinInfo *self, IDispatch** ppUnk) get_ConnectionMediaType;
				public function HRESULT(IPinInfo *self, IDispatch** ppUnk) get_FilterInfo;
				public function HRESULT(IPinInfo *self, BSTR* ppUnk) get_Name;
				public function HRESULT(IPinInfo *self, int32* ppDirection) get_Direction;
				public function HRESULT(IPinInfo *self, BSTR* strPinID) get_PinID;
				public function HRESULT(IPinInfo *self, IDispatch** ppUnk) get_MediaTypes;
				public function HRESULT(IPinInfo *self, IUnknown* pPin) Connect;
				public function HRESULT(IPinInfo *self, IUnknown* pPin) ConnectDirect;
				public function HRESULT(IPinInfo *self, IUnknown* pPin, IDispatch* pMediaType) ConnectWithType;
				public function HRESULT(IPinInfo *self) Disconnect;
				public function HRESULT(IPinInfo *self) Render;
			}
		}
		[CRepr]
		public struct IAMStats : IDispatch
		{
			public const new Guid IID = .(0xbc9bcf80, 0xdcd2, 0x11d2, 0xab, 0xf6, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IAMStats *self) Reset;
				public function HRESULT(IAMStats *self, int32* plCount) get_Count;
				public function HRESULT(IAMStats *self, int32 lIndex, BSTR* szName, int32* lCount, double* dLast, double* dAverage, double* dStdDev, double* dMin, double* dMax) GetValueByIndex;
				public function HRESULT(IAMStats *self, BSTR szName, int32* lIndex, int32* lCount, double* dLast, double* dAverage, double* dStdDev, double* dMin, double* dMax) GetValueByName;
				public function HRESULT(IAMStats *self, BSTR szName, int32 lCreate, int32* plIndex) GetIndex;
				public function HRESULT(IAMStats *self, int32 lIndex, double dValue) AddValue;
			}
		}
		[CRepr]
		public struct IAMVideoAcceleratorNotify : IUnknown
		{
			public const new Guid IID = .(0x256a6a21, 0xfbad, 0x11d1, 0x82, 0xbf, 0x00, 0xa0, 0xc9, 0x69, 0x6c, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVideoAcceleratorNotify *self, Guid* pGuid, AMVAUncompBufferInfo* pUncompBufferInfo) GetUncompSurfacesInfo;
				public function HRESULT(IAMVideoAcceleratorNotify *self, uint32 dwActualUncompSurfacesAllocated) SetUncompSurfacesInfo;
				public function HRESULT(IAMVideoAcceleratorNotify *self, Guid* pGuid, uint32* pdwSizeMiscData, void** ppMiscData) GetCreateVideoAcceleratorData;
			}
		}
		[CRepr]
		public struct IAMVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0x256a6a22, 0xfbad, 0x11d1, 0x82, 0xbf, 0x00, 0xa0, 0xc9, 0x69, 0x6c, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMVideoAccelerator *self, uint32* pdwNumGuidsSupported, Guid* pGuidsSupported) GetVideoAcceleratorGUIDs;
				public function HRESULT(IAMVideoAccelerator *self, Guid* pGuid, uint32* pdwNumFormatsSupported, DDPIXELFORMAT* pFormatsSupported) GetUncompFormatsSupported;
				public function HRESULT(IAMVideoAccelerator *self, Guid* pGuid, AMVAUncompDataInfo* pamvaUncompDataInfo, AMVAInternalMemInfo* pamvaInternalMemInfo) GetInternalMemInfo;
				public function HRESULT(IAMVideoAccelerator *self, Guid* pGuid, AMVAUncompDataInfo* pamvaUncompDataInfo, uint32* pdwNumTypesCompBuffers, AMVACompBufferInfo* pamvaCompBufferInfo) GetCompBufferInfo;
				public function HRESULT(IAMVideoAccelerator *self, uint32* pdwNumTypesCompBuffers, AMVACompBufferInfo* pamvaCompBufferInfo) GetInternalCompBufferInfo;
				public function HRESULT(IAMVideoAccelerator *self, AMVABeginFrameInfo* amvaBeginFrameInfo) BeginFrame;
				public function HRESULT(IAMVideoAccelerator *self, AMVAEndFrameInfo* pEndFrameInfo) EndFrame;
				public function HRESULT(IAMVideoAccelerator *self, uint32 dwTypeIndex, uint32 dwBufferIndex, BOOL bReadOnly, void** ppBuffer, int32* lpStride) GetBuffer;
				public function HRESULT(IAMVideoAccelerator *self, uint32 dwTypeIndex, uint32 dwBufferIndex) ReleaseBuffer;
				public function HRESULT(IAMVideoAccelerator *self, uint32 dwFunction, void* lpPrivateInputData, uint32 cbPrivateInputData, void* lpPrivateOutputDat, uint32 cbPrivateOutputData, uint32 dwNumBuffers, AMVABUFFERINFO* pamvaBufferInfo) Execute;
				public function HRESULT(IAMVideoAccelerator *self, uint32 dwTypeIndex, uint32 dwBufferIndex, uint32 dwFlags) QueryRenderStatus;
				public function HRESULT(IAMVideoAccelerator *self, uint32 dwFlipToIndex, IMediaSample* pMediaSample) DisplayFrame;
			}
		}
		[CRepr]
		public struct IAMWstDecoder : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMWstDecoder *self, AM_WST_LEVEL* lpLevel) GetDecoderLevel;
				public function HRESULT(IAMWstDecoder *self, AM_WST_SERVICE* lpService) GetCurrentService;
				public function HRESULT(IAMWstDecoder *self, AM_WST_STATE* lpState) GetServiceState;
				public function HRESULT(IAMWstDecoder *self, AM_WST_STATE State) SetServiceState;
				public function HRESULT(IAMWstDecoder *self, BITMAPINFOHEADER* lpbmih) GetOutputFormat;
				public function HRESULT(IAMWstDecoder *self, BITMAPINFO* lpbmi) SetOutputFormat;
				public function HRESULT(IAMWstDecoder *self, uint32* pdwPhysColor) GetBackgroundColor;
				public function HRESULT(IAMWstDecoder *self, uint32 dwPhysColor) SetBackgroundColor;
				public function HRESULT(IAMWstDecoder *self, int32* lpbOption) GetRedrawAlways;
				public function HRESULT(IAMWstDecoder *self, BOOL bOption) SetRedrawAlways;
				public function HRESULT(IAMWstDecoder *self, AM_WST_DRAWBGMODE* lpMode) GetDrawBackgroundMode;
				public function HRESULT(IAMWstDecoder *self, AM_WST_DRAWBGMODE Mode) SetDrawBackgroundMode;
				public function HRESULT(IAMWstDecoder *self, BOOL bAnswer) SetAnswerMode;
				public function HRESULT(IAMWstDecoder *self, BOOL* pbAnswer) GetAnswerMode;
				public function HRESULT(IAMWstDecoder *self, BOOL bHoldPage) SetHoldPage;
				public function HRESULT(IAMWstDecoder *self, BOOL* pbHoldPage) GetHoldPage;
				public function HRESULT(IAMWstDecoder *self, AM_WST_PAGE* pWstPage) GetCurrentPage;
				public function HRESULT(IAMWstDecoder *self, AM_WST_PAGE WstPage) SetCurrentPage;
			}
		}
		[CRepr]
		public struct IKsTopologyInfo : IUnknown
		{
			public const new Guid IID = .(0x720d4ac0, 0x7533, 0x11d0, 0xa5, 0xd6, 0x28, 0xdb, 0x04, 0xc1, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IKsTopologyInfo *self, uint32* pdwNumCategories) get_NumCategories;
				public function HRESULT(IKsTopologyInfo *self, uint32 dwIndex, Guid* pCategory) get_Category;
				public function HRESULT(IKsTopologyInfo *self, uint32* pdwNumConnections) get_NumConnections;
				public function HRESULT(IKsTopologyInfo *self, uint32 dwIndex, KSTOPOLOGY_CONNECTION* pConnectionInfo) get_ConnectionInfo;
				public function HRESULT(IKsTopologyInfo *self, uint32 dwNodeId, PWSTR pwchNodeName, uint32 dwBufSize, uint32* pdwNameLen) get_NodeName;
				public function HRESULT(IKsTopologyInfo *self, uint32* pdwNumNodes) get_NumNodes;
				public function HRESULT(IKsTopologyInfo *self, uint32 dwNodeId, Guid* pNodeType) get_NodeType;
				public function HRESULT(IKsTopologyInfo *self, uint32 dwNodeId, Guid* iid, void** ppvObject) CreateNodeInstance;
			}
		}
		[CRepr]
		public struct ISelector : IUnknown
		{
			public const new Guid IID = .(0x1abdaeca, 0x68b6, 0x4f83, 0x93, 0x71, 0xb4, 0x13, 0x90, 0x7c, 0x7b, 0x9f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISelector *self, uint32* pdwNumSources) get_NumSources;
				public function HRESULT(ISelector *self, uint32* pdwPinId) get_SourceNodeId;
				public function HRESULT(ISelector *self, uint32 dwPinId) put_SourceNodeId;
			}
		}
		[CRepr]
		public struct ICameraControl : IUnknown
		{
			public const new Guid IID = .(0x2ba1785d, 0x4d1b, 0x44ef, 0x85, 0xe8, 0xc7, 0xf1, 0xd3, 0xf2, 0x01, 0x84);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Exposure;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Exposure;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Exposure;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Focus;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Focus;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Focus;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Iris;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Iris;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Iris;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Zoom;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Zoom;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Zoom;
				public function HRESULT(ICameraControl *self, int32* plOcularFocalLength, int32* plObjectiveFocalLengthMin, int32* plObjectiveFocalLengthMax) get_FocalLengths;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Pan;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Pan;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Pan;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Tilt;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Tilt;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Tilt;
				public function HRESULT(ICameraControl *self, int32* pPanValue, int32* pTiltValue, int32* pFlags) get_PanTilt;
				public function HRESULT(ICameraControl *self, int32 PanValue, int32 TiltValue, int32 Flags) put_PanTilt;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_Roll;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_Roll;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Roll;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_ExposureRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_ExposureRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_ExposureRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_FocusRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_FocusRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_FocusRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_IrisRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_IrisRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_IrisRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_ZoomRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_ZoomRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_ZoomRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_PanRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_PanRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_TiltRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_TiltRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_TiltRelative;
				public function HRESULT(ICameraControl *self, int32* pPanValue, int32* pTiltValue, int32* pFlags) get_PanTiltRelative;
				public function HRESULT(ICameraControl *self, int32 PanValue, int32 TiltValue, int32 Flags) put_PanTiltRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_PanRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_RollRelative;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_RollRelative;
				public function HRESULT(ICameraControl *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_RollRelative;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_ScanMode;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_ScanMode;
				public function HRESULT(ICameraControl *self, int32* pValue, int32* pFlags) get_PrivacyMode;
				public function HRESULT(ICameraControl *self, int32 Value, int32 Flags) put_PrivacyMode;
			}
		}
		[CRepr]
		public struct IVideoProcAmp : IUnknown
		{
			public const new Guid IID = .(0x4050560e, 0x42a7, 0x413a, 0x85, 0xc2, 0x09, 0x26, 0x9a, 0x2d, 0x0f, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_BacklightCompensation;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_BacklightCompensation;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_BacklightCompensation;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Brightness;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Brightness;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Brightness;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_ColorEnable;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_ColorEnable;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_ColorEnable;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Contrast;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Contrast;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Contrast;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Gamma;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Gamma;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Gamma;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Saturation;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Saturation;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Saturation;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Sharpness;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Sharpness;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Sharpness;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_WhiteBalance;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_WhiteBalance;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_WhiteBalance;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Gain;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Gain;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Gain;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_Hue;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_Hue;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_Hue;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_DigitalMultiplier;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_DigitalMultiplier;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_DigitalMultiplier;
				public function HRESULT(IVideoProcAmp *self, int32* pValue, int32* pFlags) get_PowerlineFrequency;
				public function HRESULT(IVideoProcAmp *self, int32 Value, int32 Flags) put_PowerlineFrequency;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_PowerlineFrequency;
				public function HRESULT(IVideoProcAmp *self, int32* pValue1, int32* pValue2, int32* pFlags) get_WhiteBalanceComponent;
				public function HRESULT(IVideoProcAmp *self, int32 Value1, int32 Value2, int32 Flags) put_WhiteBalanceComponent;
				public function HRESULT(IVideoProcAmp *self, int32* pMin, int32* pMax, int32* pSteppingDelta, int32* pDefault, int32* pCapsFlag) getRange_WhiteBalanceComponent;
			}
		}
		[CRepr]
		public struct IKsNodeControl : IUnknown
		{
			public const new Guid IID = .(0x11737c14, 0x24a7, 0x4bb5, 0x81, 0xa0, 0x0d, 0x00, 0x38, 0x13, 0xb0, 0xc4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IKsNodeControl *self, uint32 dwNodeId) put_NodeId;
				public function HRESULT(IKsNodeControl *self, void* pKsControl) put_KsControl;
			}
		}
		[CRepr]
		public struct IConfigAsfWriter : IUnknown
		{
			public const new Guid IID = .(0x45086030, 0xf7e4, 0x486a, 0xb5, 0x04, 0x82, 0x6b, 0xb5, 0x79, 0x2a, 0x3b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConfigAsfWriter *self, uint32 dwProfileId) ConfigureFilterUsingProfileId;
				public function HRESULT(IConfigAsfWriter *self, uint32* pdwProfileId) GetCurrentProfileId;
				public function HRESULT(IConfigAsfWriter *self, Guid* guidProfile) ConfigureFilterUsingProfileGuid;
				public function HRESULT(IConfigAsfWriter *self, Guid* pProfileGuid) GetCurrentProfileGuid;
				public function HRESULT(IConfigAsfWriter *self, IWMProfile* pProfile) ConfigureFilterUsingProfile;
				public function HRESULT(IConfigAsfWriter *self, IWMProfile** ppProfile) GetCurrentProfile;
				public function HRESULT(IConfigAsfWriter *self, BOOL bIndexFile) SetIndexMode;
				public function HRESULT(IConfigAsfWriter *self, BOOL* pbIndexFile) GetIndexMode;
			}
		}
		[CRepr]
		public struct IConfigAsfWriter2 : IConfigAsfWriter
		{
			public const new Guid IID = .(0x7989ccaa, 0x53f0, 0x44f0, 0x88, 0x4a, 0xf3, 0xb0, 0x3f, 0x6a, 0xe0, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IConfigAsfWriter.VTable
			{
				public function HRESULT(IConfigAsfWriter2 *self, IPin* pPin, uint16* pwStreamNum) StreamNumFromPin;
				public function HRESULT(IConfigAsfWriter2 *self, uint32 dwParam, uint32 dwParam1, uint32 dwParam2) SetParam;
				public function HRESULT(IConfigAsfWriter2 *self, uint32 dwParam, uint32* pdwParam1, uint32* pdwParam2) GetParam;
				public function HRESULT(IConfigAsfWriter2 *self) ResetMultiPassState;
			}
		}
		[CRepr]
		public struct IMultiMediaStream : IUnknown
		{
			public const new Guid IID = .(0xb502d1bc, 0x9a57, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMultiMediaStream *self, MMSSF_GET_INFORMATION_FLAGS* pdwFlags, STREAM_TYPE* pStreamType) GetInformation;
				public function HRESULT(IMultiMediaStream *self, Guid* idPurpose, IMediaStream** ppMediaStream) GetMediaStream;
				public function HRESULT(IMultiMediaStream *self, int32 Index, IMediaStream** ppMediaStream) EnumMediaStreams;
				public function HRESULT(IMultiMediaStream *self, STREAM_STATE* pCurrentState) GetState;
				public function HRESULT(IMultiMediaStream *self, STREAM_STATE NewState) SetState;
				public function HRESULT(IMultiMediaStream *self, int64* pCurrentTime) GetTime;
				public function HRESULT(IMultiMediaStream *self, int64* pDuration) GetDuration;
				public function HRESULT(IMultiMediaStream *self, int64 SeekTime) Seek;
				public function HRESULT(IMultiMediaStream *self, HANDLE* phEOS) GetEndOfStreamEventHandle;
			}
		}
		[CRepr]
		public struct IMediaStream : IUnknown
		{
			public const new Guid IID = .(0xb502d1bd, 0x9a57, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaStream *self, IMultiMediaStream** ppMultiMediaStream) GetMultiMediaStream;
				public function HRESULT(IMediaStream *self, Guid* pPurposeId, STREAM_TYPE* pType) GetInformation;
				public function HRESULT(IMediaStream *self, IMediaStream* pStreamThatHasDesiredFormat, uint32 dwFlags) SetSameFormat;
				public function HRESULT(IMediaStream *self, uint32 dwFlags, IStreamSample** ppSample) AllocateSample;
				public function HRESULT(IMediaStream *self, IStreamSample* pExistingSample, uint32 dwFlags, IStreamSample** ppNewSample) CreateSharedSample;
				public function HRESULT(IMediaStream *self, uint32 dwFlags) SendEndOfStream;
			}
		}
		[CRepr]
		public struct IStreamSample : IUnknown
		{
			public const new Guid IID = .(0xb502d1be, 0x9a57, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamSample *self, IMediaStream** ppMediaStream) GetMediaStream;
				public function HRESULT(IStreamSample *self, int64* pStartTime, int64* pEndTime, int64* pCurrentTime) GetSampleTimes;
				public function HRESULT(IStreamSample *self, int64* pStartTime, int64* pEndTime) SetSampleTimes;
				public function HRESULT(IStreamSample *self, uint32 dwFlags, HANDLE hEvent, PAPCFUNC pfnAPC, uint dwAPCData) Update;
				public function HRESULT(IStreamSample *self, uint32 dwFlags, uint32 dwMilliseconds) CompletionStatus;
			}
		}
		[CRepr]
		public struct IDirectDrawMediaStream : IMediaStream
		{
			public const new Guid IID = .(0xf4104fce, 0x9a70, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaStream.VTable
			{
				public function HRESULT(IDirectDrawMediaStream *self, DDSURFACEDESC* pDDSDCurrent, IDirectDrawPalette** ppDirectDrawPalette, DDSURFACEDESC* pDDSDDesired, uint32* pdwFlags) GetFormat;
				public function HRESULT(IDirectDrawMediaStream *self, DDSURFACEDESC* pDDSurfaceDesc, IDirectDrawPalette* pDirectDrawPalette) SetFormat;
				public function HRESULT(IDirectDrawMediaStream *self, IDirectDraw** ppDirectDraw) GetDirectDraw;
				public function HRESULT(IDirectDrawMediaStream *self, IDirectDraw* pDirectDraw) SetDirectDraw;
				public function HRESULT(IDirectDrawMediaStream *self, IDirectDrawSurface* pSurface, RECT* pRect, uint32 dwFlags, IDirectDrawStreamSample** ppSample) CreateSample;
				public function HRESULT(IDirectDrawMediaStream *self, int64* pFrameTime) GetTimePerFrame;
			}
		}
		[CRepr]
		public struct IDirectDrawStreamSample : IStreamSample
		{
			public const new Guid IID = .(0xf4104fcf, 0x9a70, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamSample.VTable
			{
				public function HRESULT(IDirectDrawStreamSample *self, IDirectDrawSurface** ppDirectDrawSurface, RECT* pRect) GetSurface;
				public function HRESULT(IDirectDrawStreamSample *self, RECT* pRect) SetRect;
			}
		}
		[CRepr]
		public struct IAudioMediaStream : IMediaStream
		{
			public const new Guid IID = .(0xf7537560, 0xa3be, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaStream.VTable
			{
				public function HRESULT(IAudioMediaStream *self, WAVEFORMATEX* pWaveFormatCurrent) GetFormat;
				public function HRESULT(IAudioMediaStream *self, WAVEFORMATEX* lpWaveFormat) SetFormat;
				public function HRESULT(IAudioMediaStream *self, IAudioData* pAudioData, uint32 dwFlags, IAudioStreamSample** ppSample) CreateSample;
			}
		}
		[CRepr]
		public struct IAudioStreamSample : IStreamSample
		{
			public const new Guid IID = .(0x345fee00, 0xaba5, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamSample.VTable
			{
				public function HRESULT(IAudioStreamSample *self, IAudioData** ppAudio) GetAudioData;
			}
		}
		[CRepr]
		public struct IMemoryData : IUnknown
		{
			public const new Guid IID = .(0x327fc560, 0xaf60, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMemoryData *self, uint32 cbSize, uint8* pbData, uint32 dwFlags) SetBuffer;
				public function HRESULT(IMemoryData *self, uint32* pdwLength, uint8** ppbData, uint32* pcbActualData) GetInfo;
				public function HRESULT(IMemoryData *self, uint32 cbDataValid) SetActual;
			}
		}
		[CRepr]
		public struct IAudioData : IMemoryData
		{
			public const new Guid IID = .(0x54c719c0, 0xaf60, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMemoryData.VTable
			{
				public function HRESULT(IAudioData *self, WAVEFORMATEX* pWaveFormatCurrent) GetFormat;
				public function HRESULT(IAudioData *self, WAVEFORMATEX* lpWaveFormat) SetFormat;
			}
		}
		[CRepr]
		public struct IAMMultiMediaStream : IMultiMediaStream
		{
			public const new Guid IID = .(0xbebe595c, 0x9a6f, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMultiMediaStream.VTable
			{
				public function HRESULT(IAMMultiMediaStream *self, STREAM_TYPE StreamType, AMMSF_MMS_INIT_FLAGS dwFlags, IGraphBuilder* pFilterGraph) Initialize;
				public function HRESULT(IAMMultiMediaStream *self, IGraphBuilder** ppGraphBuilder) GetFilterGraph;
				public function HRESULT(IAMMultiMediaStream *self, IMediaStreamFilter** ppFilter) GetFilter;
				public function HRESULT(IAMMultiMediaStream *self, IUnknown* pStreamObject, Guid* PurposeId, AMMSF_MS_FLAGS dwFlags, IMediaStream** ppNewStream) AddMediaStream;
				public function HRESULT(IAMMultiMediaStream *self, PWSTR pszFileName, uint32 dwFlags) OpenFile;
				public function HRESULT(IAMMultiMediaStream *self, IBindCtx* pCtx, IMoniker* pMoniker, uint32 dwFlags) OpenMoniker;
				public function HRESULT(IAMMultiMediaStream *self, uint32 dwFlags) Render;
			}
		}
		[CRepr]
		public struct IAMMediaStream : IMediaStream
		{
			public const new Guid IID = .(0xbebe595d, 0x9a6f, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaStream.VTable
			{
				public function HRESULT(IAMMediaStream *self, IUnknown* pSourceObject, uint32 dwFlags, Guid* PurposeId, STREAM_TYPE StreamType) Initialize;
				public function HRESULT(IAMMediaStream *self, FILTER_STATE State) SetState;
				public function HRESULT(IAMMediaStream *self, IAMMultiMediaStream* pAMMultiMediaStream) JoinAMMultiMediaStream;
				public function HRESULT(IAMMediaStream *self, IMediaStreamFilter* pMediaStreamFilter) JoinFilter;
				public function HRESULT(IAMMediaStream *self, IFilterGraph* pFilterGraph) JoinFilterGraph;
			}
		}
		[CRepr]
		public struct IMediaStreamFilter : IBaseFilter
		{
			public const new Guid IID = .(0xbebe595e, 0x9a6f, 0x11d0, 0x8f, 0xde, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBaseFilter.VTable
			{
				public function HRESULT(IMediaStreamFilter *self, IAMMediaStream* pAMMediaStream) AddMediaStream;
				public function HRESULT(IMediaStreamFilter *self, Guid* idPurpose, IMediaStream** ppMediaStream) GetMediaStream;
				public function HRESULT(IMediaStreamFilter *self, int32 Index, IMediaStream** ppMediaStream) EnumMediaStreams;
				public function HRESULT(IMediaStreamFilter *self, BOOL bRenderer) SupportSeeking;
				public function HRESULT(IMediaStreamFilter *self, int64* pTime) ReferenceTimeToStreamTime;
				public function HRESULT(IMediaStreamFilter *self, int64* pCurrentStreamTime) GetCurrentStreamTime;
				public function HRESULT(IMediaStreamFilter *self, int64 WaitStreamTime) WaitUntil;
				public function HRESULT(IMediaStreamFilter *self, BOOL bCancelEOS) Flush;
				public function HRESULT(IMediaStreamFilter *self) EndOfStream;
			}
		}
		[CRepr]
		public struct IDirectDrawMediaSampleAllocator : IUnknown
		{
			public const new Guid IID = .(0xab6b4afc, 0xf6e4, 0x11d0, 0x90, 0x0d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDirectDrawMediaSampleAllocator *self, IDirectDraw** ppDirectDraw) GetDirectDraw;
			}
		}
		[CRepr]
		public struct IDirectDrawMediaSample : IUnknown
		{
			public const new Guid IID = .(0xab6b4afe, 0xf6e4, 0x11d0, 0x90, 0x0d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDirectDrawMediaSample *self, IDirectDrawSurface** ppDirectDrawSurface, RECT* pRect) GetSurfaceAndReleaseLock;
				public function HRESULT(IDirectDrawMediaSample *self) LockMediaSamplePointer;
			}
		}
		[CRepr]
		public struct IAMMediaTypeStream : IMediaStream
		{
			public const new Guid IID = .(0xab6b4afa, 0xf6e4, 0x11d0, 0x90, 0x0d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaStream.VTable
			{
				public function HRESULT(IAMMediaTypeStream *self, AM_MEDIA_TYPE* pMediaType, uint32 dwFlags) GetFormat;
				public function HRESULT(IAMMediaTypeStream *self, AM_MEDIA_TYPE* pMediaType, uint32 dwFlags) SetFormat;
				public function HRESULT(IAMMediaTypeStream *self, int32 lSampleSize, uint8* pbBuffer, uint32 dwFlags, IUnknown* pUnkOuter, IAMMediaTypeSample** ppAMMediaTypeSample) CreateSample;
				public function HRESULT(IAMMediaTypeStream *self, ALLOCATOR_PROPERTIES* pProps) GetStreamAllocatorRequirements;
				public function HRESULT(IAMMediaTypeStream *self, ALLOCATOR_PROPERTIES* pProps) SetStreamAllocatorRequirements;
			}
		}
		[CRepr]
		public struct IAMMediaTypeSample : IStreamSample
		{
			public const new Guid IID = .(0xab6b4afb, 0xf6e4, 0x11d0, 0x90, 0x0d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamSample.VTable
			{
				public function HRESULT(IAMMediaTypeSample *self, uint8* pBuffer, int32 lSize) SetPointer;
				public function HRESULT(IAMMediaTypeSample *self, uint8** ppBuffer) GetPointer;
				public function int32(IAMMediaTypeSample *self) GetSize;
				public function HRESULT(IAMMediaTypeSample *self, int64* pTimeStart, int64* pTimeEnd) GetTime;
				public function HRESULT(IAMMediaTypeSample *self, int64* pTimeStart, int64* pTimeEnd) SetTime;
				public function HRESULT(IAMMediaTypeSample *self) IsSyncPoint;
				public function HRESULT(IAMMediaTypeSample *self, BOOL bIsSyncPoint) SetSyncPoint;
				public function HRESULT(IAMMediaTypeSample *self) IsPreroll;
				public function HRESULT(IAMMediaTypeSample *self, BOOL bIsPreroll) SetPreroll;
				public function int32(IAMMediaTypeSample *self) GetActualDataLength;
				public function HRESULT(IAMMediaTypeSample *self, int32 __MIDL__IAMMediaTypeSample0000) SetActualDataLength;
				public function HRESULT(IAMMediaTypeSample *self, AM_MEDIA_TYPE** ppMediaType) GetMediaType;
				public function HRESULT(IAMMediaTypeSample *self, AM_MEDIA_TYPE* pMediaType) SetMediaType;
				public function HRESULT(IAMMediaTypeSample *self) IsDiscontinuity;
				public function HRESULT(IAMMediaTypeSample *self, BOOL bDiscontinuity) SetDiscontinuity;
				public function HRESULT(IAMMediaTypeSample *self, int64* pTimeStart, int64* pTimeEnd) GetMediaTime;
				public function HRESULT(IAMMediaTypeSample *self, int64* pTimeStart, int64* pTimeEnd) SetMediaTime;
			}
		}
		[CRepr]
		public struct IDirectDrawVideo : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDirectDrawVideo *self, uint32* pSwitches) GetSwitches;
				public function HRESULT(IDirectDrawVideo *self, uint32 Switches) SetSwitches;
				public function HRESULT(IDirectDrawVideo *self, DDCAPS_DX7* pCaps) GetCaps;
				public function HRESULT(IDirectDrawVideo *self, DDCAPS_DX7* pCaps) GetEmulatedCaps;
				public function HRESULT(IDirectDrawVideo *self, DDSURFACEDESC* pSurfaceDesc) GetSurfaceDesc;
				public function HRESULT(IDirectDrawVideo *self, uint32* pCount, uint32* pCodes) GetFourCCCodes;
				public function HRESULT(IDirectDrawVideo *self, IDirectDraw* pDirectDraw) SetDirectDraw;
				public function HRESULT(IDirectDrawVideo *self, IDirectDraw** ppDirectDraw) GetDirectDraw;
				public function HRESULT(IDirectDrawVideo *self, uint32* pSurfaceType) GetSurfaceType;
				public function HRESULT(IDirectDrawVideo *self) SetDefault;
				public function HRESULT(IDirectDrawVideo *self, int32 UseScanLine) UseScanLine;
				public function HRESULT(IDirectDrawVideo *self, int32* UseScanLine) CanUseScanLine;
				public function HRESULT(IDirectDrawVideo *self, int32 UseOverlayStretch) UseOverlayStretch;
				public function HRESULT(IDirectDrawVideo *self, int32* UseOverlayStretch) CanUseOverlayStretch;
				public function HRESULT(IDirectDrawVideo *self, int32 UseWhenFullScreen) UseWhenFullScreen;
				public function HRESULT(IDirectDrawVideo *self, int32* UseWhenFullScreen) WillUseFullScreen;
			}
		}
		[CRepr]
		public struct IQualProp : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IQualProp *self, int32* pcFrames) get_FramesDroppedInRenderer;
				public function HRESULT(IQualProp *self, int32* pcFramesDrawn) get_FramesDrawn;
				public function HRESULT(IQualProp *self, int32* piAvgFrameRate) get_AvgFrameRate;
				public function HRESULT(IQualProp *self, int32* iJitter) get_Jitter;
				public function HRESULT(IQualProp *self, int32* piAvg) get_AvgSyncOffset;
				public function HRESULT(IQualProp *self, int32* piDev) get_DevSyncOffset;
			}
		}
		[CRepr]
		public struct IFullScreenVideo : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IFullScreenVideo *self, int32* pModes) CountModes;
				public function HRESULT(IFullScreenVideo *self, int32 Mode, int32* pWidth, int32* pHeight, int32* pDepth) GetModeInfo;
				public function HRESULT(IFullScreenVideo *self, int32* pMode) GetCurrentMode;
				public function HRESULT(IFullScreenVideo *self, int32 Mode) IsModeAvailable;
				public function HRESULT(IFullScreenVideo *self, int32 Mode) IsModeEnabled;
				public function HRESULT(IFullScreenVideo *self, int32 Mode, int32 bEnabled) SetEnabled;
				public function HRESULT(IFullScreenVideo *self, int32* pClipFactor) GetClipFactor;
				public function HRESULT(IFullScreenVideo *self, int32 ClipFactor) SetClipFactor;
				public function HRESULT(IFullScreenVideo *self, HWND hwnd) SetMessageDrain;
				public function HRESULT(IFullScreenVideo *self, HWND* hwnd) GetMessageDrain;
				public function HRESULT(IFullScreenVideo *self, int32 Monitor) SetMonitor;
				public function HRESULT(IFullScreenVideo *self, int32* Monitor) GetMonitor;
				public function HRESULT(IFullScreenVideo *self, int32 Hide) HideOnDeactivate;
				public function HRESULT(IFullScreenVideo *self) IsHideOnDeactivate;
				public function HRESULT(IFullScreenVideo *self, BSTR strCaption) SetCaption;
				public function HRESULT(IFullScreenVideo *self, BSTR* pstrCaption) GetCaption;
				public function HRESULT(IFullScreenVideo *self) SetDefault;
			}
		}
		[CRepr]
		public struct IFullScreenVideoEx : IFullScreenVideo
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFullScreenVideo.VTable
			{
				public function HRESULT(IFullScreenVideoEx *self, HWND hwnd, HACCEL hAccel) SetAcceleratorTable;
				public function HRESULT(IFullScreenVideoEx *self, HWND* phwnd, HACCEL* phAccel) GetAcceleratorTable;
				public function HRESULT(IFullScreenVideoEx *self, int32 KeepAspect) KeepPixelAspectRatio;
				public function HRESULT(IFullScreenVideoEx *self, int32* pKeepAspect) IsKeepPixelAspectRatio;
			}
		}
		[CRepr]
		public struct IBaseVideoMixer : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBaseVideoMixer *self, int32 iPin) SetLeadPin;
				public function HRESULT(IBaseVideoMixer *self, int32* piPin) GetLeadPin;
				public function HRESULT(IBaseVideoMixer *self, int32* piPinCount) GetInputPinCount;
				public function HRESULT(IBaseVideoMixer *self, int32* pbValue) IsUsingClock;
				public function HRESULT(IBaseVideoMixer *self, int32 bValue) SetUsingClock;
				public function HRESULT(IBaseVideoMixer *self, int32* pbValue) GetClockPeriod;
				public function HRESULT(IBaseVideoMixer *self, int32 bValue) SetClockPeriod;
			}
		}
		[CRepr]
		public struct IDMOWrapperFilter : IUnknown
		{
			public const new Guid IID = .(0x52d6f586, 0x9f0f, 0x4824, 0x8f, 0xc8, 0xe3, 0x2c, 0xa0, 0x49, 0x30, 0xc2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDMOWrapperFilter *self, Guid* clsidDMO, Guid* catDMO) Init;
			}
		}
		[CRepr]
		public struct IMixerOCXNotify : IUnknown
		{
			public const new Guid IID = .(0x81a3bd31, 0xdee1, 0x11d1, 0x85, 0x08, 0x00, 0xa0, 0xc9, 0x1f, 0x9c, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMixerOCXNotify *self, RECT* lpcRect) OnInvalidateRect;
				public function HRESULT(IMixerOCXNotify *self, uint32 ulStatusFlags) OnStatusChange;
				public function HRESULT(IMixerOCXNotify *self, uint32 ulDataFlags) OnDataChange;
			}
		}
		[CRepr]
		public struct IMixerOCX : IUnknown
		{
			public const new Guid IID = .(0x81a3bd32, 0xdee1, 0x11d1, 0x85, 0x08, 0x00, 0xa0, 0xc9, 0x1f, 0x9c, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMixerOCX *self, uint32 ulBitsPerPixel, uint32 ulScreenWidth, uint32 ulScreenHeight) OnDisplayChange;
				public function HRESULT(IMixerOCX *self, uint32* pdwPictAspectRatioX, uint32* pdwPictAspectRatioY) GetAspectRatio;
				public function HRESULT(IMixerOCX *self, uint32* pdwVideoWidth, uint32* pdwVideoHeight) GetVideoSize;
				public function HRESULT(IMixerOCX *self, uint32** pdwStatus) GetStatus;
				public function HRESULT(IMixerOCX *self, HDC hdcDraw, RECT* prcDraw) OnDraw;
				public function HRESULT(IMixerOCX *self, POINT* lpptTopLeftSC, RECT* prcDrawCC, RECT* lprcClip) SetDrawRegion;
				public function HRESULT(IMixerOCX *self, IMixerOCXNotify* pmdns) Advise;
				public function HRESULT(IMixerOCX *self) UnAdvise;
			}
		}
		[CRepr]
		public struct IMixerPinConfig : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMixerPinConfig *self, uint32 dwLeft, uint32 dwTop, uint32 dwRight, uint32 dwBottom) SetRelativePosition;
				public function HRESULT(IMixerPinConfig *self, uint32* pdwLeft, uint32* pdwTop, uint32* pdwRight, uint32* pdwBottom) GetRelativePosition;
				public function HRESULT(IMixerPinConfig *self, uint32 dwZOrder) SetZOrder;
				public function HRESULT(IMixerPinConfig *self, uint32* pdwZOrder) GetZOrder;
				public function HRESULT(IMixerPinConfig *self, COLORKEY* pColorKey) SetColorKey;
				public function HRESULT(IMixerPinConfig *self, COLORKEY* pColorKey, uint32* pColor) GetColorKey;
				public function HRESULT(IMixerPinConfig *self, uint32 dwBlendingParameter) SetBlendingParameter;
				public function HRESULT(IMixerPinConfig *self, uint32* pdwBlendingParameter) GetBlendingParameter;
				public function HRESULT(IMixerPinConfig *self, AM_ASPECT_RATIO_MODE amAspectRatioMode) SetAspectRatioMode;
				public function HRESULT(IMixerPinConfig *self, AM_ASPECT_RATIO_MODE* pamAspectRatioMode) GetAspectRatioMode;
				public function HRESULT(IMixerPinConfig *self, BOOL bStreamTransparent) SetStreamTransparent;
				public function HRESULT(IMixerPinConfig *self, BOOL* pbStreamTransparent) GetStreamTransparent;
			}
		}
		[CRepr]
		public struct IMixerPinConfig2 : IMixerPinConfig
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMixerPinConfig.VTable
			{
				public function HRESULT(IMixerPinConfig2 *self, DDCOLORCONTROL* pColorControl) SetOverlaySurfaceColorControls;
				public function HRESULT(IMixerPinConfig2 *self, DDCOLORCONTROL* pColorControl) GetOverlaySurfaceColorControls;
			}
		}
		[CRepr]
		public struct IMpegAudioDecoder : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMpegAudioDecoder *self, uint32* pDivider) get_FrequencyDivider;
				public function HRESULT(IMpegAudioDecoder *self, uint32 Divider) put_FrequencyDivider;
				public function HRESULT(IMpegAudioDecoder *self, uint32* pAccuracy) get_DecoderAccuracy;
				public function HRESULT(IMpegAudioDecoder *self, uint32 Accuracy) put_DecoderAccuracy;
				public function HRESULT(IMpegAudioDecoder *self, uint32* pStereo) get_Stereo;
				public function HRESULT(IMpegAudioDecoder *self, uint32 Stereo) put_Stereo;
				public function HRESULT(IMpegAudioDecoder *self, uint32* pWordSize) get_DecoderWordSize;
				public function HRESULT(IMpegAudioDecoder *self, uint32 WordSize) put_DecoderWordSize;
				public function HRESULT(IMpegAudioDecoder *self, uint32* pIntDecode) get_IntegerDecode;
				public function HRESULT(IMpegAudioDecoder *self, uint32 IntDecode) put_IntegerDecode;
				public function HRESULT(IMpegAudioDecoder *self, uint32* pIntDecode) get_DualMode;
				public function HRESULT(IMpegAudioDecoder *self, uint32 IntDecode) put_DualMode;
				public function HRESULT(IMpegAudioDecoder *self, MPEG1WAVEFORMAT* lpFmt) get_AudioFormat;
			}
		}
		[CRepr]
		public struct IVMRImagePresenter9 : IUnknown
		{
			public const new Guid IID = .(0x69188c61, 0x12a3, 0x40f0, 0x8f, 0xfc, 0x34, 0x2e, 0x7b, 0x43, 0x3f, 0xd7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRImagePresenter9 *self, uint dwUserID) StartPresenting;
				public function HRESULT(IVMRImagePresenter9 *self, uint dwUserID) StopPresenting;
				public function HRESULT(IVMRImagePresenter9 *self, uint dwUserID, VMR9PresentationInfo* lpPresInfo) PresentImage;
			}
		}
		[CRepr]
		public struct IVMRSurfaceAllocator9 : IUnknown
		{
			public const new Guid IID = .(0x8d5148ea, 0x3f5d, 0x46cf, 0x9d, 0xf1, 0xd1, 0xb8, 0x96, 0xee, 0xdb, 0x1f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRSurfaceAllocator9 *self, uint dwUserID, VMR9AllocationInfo* lpAllocInfo, uint32* lpNumBuffers) InitializeDevice;
				public function HRESULT(IVMRSurfaceAllocator9 *self, uint dwID) TerminateDevice;
				public function HRESULT(IVMRSurfaceAllocator9 *self, uint dwUserID, uint32 SurfaceIndex, uint32 SurfaceFlags, IDirect3DSurface9** lplpSurface) GetSurface;
				public function HRESULT(IVMRSurfaceAllocator9 *self, IVMRSurfaceAllocatorNotify9* lpIVMRSurfAllocNotify) AdviseNotify;
			}
		}
		[CRepr]
		public struct IVMRSurfaceAllocatorEx9 : IVMRSurfaceAllocator9
		{
			public const new Guid IID = .(0x6de9a68a, 0xa928, 0x4522, 0xbf, 0x57, 0x65, 0x5a, 0xe3, 0x86, 0x64, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVMRSurfaceAllocator9.VTable
			{
				public function HRESULT(IVMRSurfaceAllocatorEx9 *self, uint dwUserID, uint32 SurfaceIndex, uint32 SurfaceFlags, IDirect3DSurface9** lplpSurface, RECT* lprcDst) GetSurfaceEx;
			}
		}
		[CRepr]
		public struct IVMRSurfaceAllocatorNotify9 : IUnknown
		{
			public const new Guid IID = .(0xdca3f5df, 0xbb3a, 0x4d03, 0xbd, 0x81, 0x84, 0x61, 0x4b, 0xfb, 0xfa, 0x0c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRSurfaceAllocatorNotify9 *self, uint dwUserID, IVMRSurfaceAllocator9* lpIVRMSurfaceAllocator) AdviseSurfaceAllocator;
				public function HRESULT(IVMRSurfaceAllocatorNotify9 *self, IDirect3DDevice9* lpD3DDevice, HMONITOR hMonitor) SetD3DDevice;
				public function HRESULT(IVMRSurfaceAllocatorNotify9 *self, IDirect3DDevice9* lpD3DDevice, HMONITOR hMonitor) ChangeD3DDevice;
				public function HRESULT(IVMRSurfaceAllocatorNotify9 *self, VMR9AllocationInfo* lpAllocInfo, uint32* lpNumBuffers, IDirect3DSurface9** lplpSurface) AllocateSurfaceHelper;
				public function HRESULT(IVMRSurfaceAllocatorNotify9 *self, int32 EventCode, int Param1, int Param2) NotifyEvent;
			}
		}
		[CRepr]
		public struct IVMRWindowlessControl9 : IUnknown
		{
			public const new Guid IID = .(0x8f537d09, 0xf85e, 0x4414, 0xb2, 0x3b, 0x50, 0x2e, 0x54, 0xc7, 0x99, 0x27);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRWindowlessControl9 *self, int32* lpWidth, int32* lpHeight, int32* lpARWidth, int32* lpARHeight) GetNativeVideoSize;
				public function HRESULT(IVMRWindowlessControl9 *self, int32* lpWidth, int32* lpHeight) GetMinIdealVideoSize;
				public function HRESULT(IVMRWindowlessControl9 *self, int32* lpWidth, int32* lpHeight) GetMaxIdealVideoSize;
				public function HRESULT(IVMRWindowlessControl9 *self, RECT* lpSRCRect, RECT* lpDSTRect) SetVideoPosition;
				public function HRESULT(IVMRWindowlessControl9 *self, RECT* lpSRCRect, RECT* lpDSTRect) GetVideoPosition;
				public function HRESULT(IVMRWindowlessControl9 *self, uint32* lpAspectRatioMode) GetAspectRatioMode;
				public function HRESULT(IVMRWindowlessControl9 *self, uint32 AspectRatioMode) SetAspectRatioMode;
				public function HRESULT(IVMRWindowlessControl9 *self, HWND hwnd) SetVideoClippingWindow;
				public function HRESULT(IVMRWindowlessControl9 *self, HWND hwnd, HDC hdc) RepaintVideo;
				public function HRESULT(IVMRWindowlessControl9 *self) DisplayModeChanged;
				public function HRESULT(IVMRWindowlessControl9 *self, uint8** lpDib) GetCurrentImage;
				public function HRESULT(IVMRWindowlessControl9 *self, uint32 Clr) SetBorderColor;
				public function HRESULT(IVMRWindowlessControl9 *self, uint32* lpClr) GetBorderColor;
			}
		}
		[CRepr]
		public struct IVMRMixerControl9 : IUnknown
		{
			public const new Guid IID = .(0x1a777eaa, 0x47c8, 0x4930, 0xb2, 0xc9, 0x8f, 0xee, 0x1c, 0x1b, 0x0f, 0x3b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, float Alpha) SetAlpha;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, float* pAlpha) GetAlpha;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, uint32 dwZ) SetZOrder;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, uint32* pZ) GetZOrder;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, VMR9NormalizedRect* pRect) SetOutputRect;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, VMR9NormalizedRect* pRect) GetOutputRect;
				public function HRESULT(IVMRMixerControl9 *self, uint32 ClrBkg) SetBackgroundClr;
				public function HRESULT(IVMRMixerControl9 *self, uint32* lpClrBkg) GetBackgroundClr;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwMixerPrefs) SetMixingPrefs;
				public function HRESULT(IVMRMixerControl9 *self, uint32* pdwMixerPrefs) GetMixingPrefs;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, VMR9ProcAmpControl* lpClrControl) SetProcAmpControl;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, VMR9ProcAmpControl* lpClrControl) GetProcAmpControl;
				public function HRESULT(IVMRMixerControl9 *self, uint32 dwStreamID, VMR9ProcAmpControlRange* lpClrControl) GetProcAmpControlRange;
			}
		}
		[CRepr]
		public struct IVMRMixerBitmap9 : IUnknown
		{
			public const new Guid IID = .(0xced175e5, 0x1935, 0x4820, 0x81, 0xbd, 0xff, 0x6a, 0xd0, 0x0c, 0x91, 0x08);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRMixerBitmap9 *self, VMR9AlphaBitmap* pBmpParms) SetAlphaBitmap;
				public function HRESULT(IVMRMixerBitmap9 *self, VMR9AlphaBitmap* pBmpParms) UpdateAlphaBitmapParameters;
				public function HRESULT(IVMRMixerBitmap9 *self, VMR9AlphaBitmap* pBmpParms) GetAlphaBitmapParameters;
			}
		}
		[CRepr]
		public struct IVMRSurface9 : IUnknown
		{
			public const new Guid IID = .(0xdfc581a1, 0x6e1f, 0x4c3a, 0x8d, 0x0a, 0x5e, 0x97, 0x92, 0xea, 0x2a, 0xfc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRSurface9 *self) IsSurfaceLocked;
				public function HRESULT(IVMRSurface9 *self, uint8** lpSurface) LockSurface;
				public function HRESULT(IVMRSurface9 *self) UnlockSurface;
				public function HRESULT(IVMRSurface9 *self, IDirect3DSurface9** lplpSurface) GetSurface;
			}
		}
		[CRepr]
		public struct IVMRImagePresenterConfig9 : IUnknown
		{
			public const new Guid IID = .(0x45c15cab, 0x6e22, 0x420a, 0x80, 0x43, 0xae, 0x1f, 0x0a, 0xc0, 0x2c, 0x7d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRImagePresenterConfig9 *self, uint32 dwRenderFlags) SetRenderingPrefs;
				public function HRESULT(IVMRImagePresenterConfig9 *self, uint32* dwRenderFlags) GetRenderingPrefs;
			}
		}
		[CRepr]
		public struct IVMRVideoStreamControl9 : IUnknown
		{
			public const new Guid IID = .(0xd0cfe38b, 0x93e7, 0x4772, 0x89, 0x57, 0x04, 0x00, 0xc4, 0x9a, 0x44, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRVideoStreamControl9 *self, BOOL fActive) SetStreamActiveState;
				public function HRESULT(IVMRVideoStreamControl9 *self, BOOL* lpfActive) GetStreamActiveState;
			}
		}
		[CRepr]
		public struct IVMRFilterConfig9 : IUnknown
		{
			public const new Guid IID = .(0x5a804648, 0x4f66, 0x4867, 0x9c, 0x43, 0x4f, 0x5c, 0x82, 0x2c, 0xf1, 0xb8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRFilterConfig9 *self, IVMRImageCompositor9* lpVMRImgCompositor) SetImageCompositor;
				public function HRESULT(IVMRFilterConfig9 *self, uint32 dwMaxStreams) SetNumberOfStreams;
				public function HRESULT(IVMRFilterConfig9 *self, uint32* pdwMaxStreams) GetNumberOfStreams;
				public function HRESULT(IVMRFilterConfig9 *self, uint32 dwRenderFlags) SetRenderingPrefs;
				public function HRESULT(IVMRFilterConfig9 *self, uint32* pdwRenderFlags) GetRenderingPrefs;
				public function HRESULT(IVMRFilterConfig9 *self, uint32 Mode) SetRenderingMode;
				public function HRESULT(IVMRFilterConfig9 *self, uint32* pMode) GetRenderingMode;
			}
		}
		[CRepr]
		public struct IVMRAspectRatioControl9 : IUnknown
		{
			public const new Guid IID = .(0x00d96c29, 0xbbde, 0x4efc, 0x99, 0x01, 0xbb, 0x50, 0x36, 0x39, 0x21, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRAspectRatioControl9 *self, uint32* lpdwARMode) GetAspectRatioMode;
				public function HRESULT(IVMRAspectRatioControl9 *self, uint32 dwARMode) SetAspectRatioMode;
			}
		}
		[CRepr]
		public struct IVMRMonitorConfig9 : IUnknown
		{
			public const new Guid IID = .(0x46c2e457, 0x8ba0, 0x4eef, 0xb8, 0x0b, 0x06, 0x80, 0xf0, 0x97, 0x87, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRMonitorConfig9 *self, uint32 uDev) SetMonitor;
				public function HRESULT(IVMRMonitorConfig9 *self, uint32* puDev) GetMonitor;
				public function HRESULT(IVMRMonitorConfig9 *self, uint32 uDev) SetDefaultMonitor;
				public function HRESULT(IVMRMonitorConfig9 *self, uint32* puDev) GetDefaultMonitor;
				public function HRESULT(IVMRMonitorConfig9 *self, VMR9MonitorInfo* pInfo, uint32 dwMaxInfoArraySize, uint32* pdwNumDevices) GetAvailableMonitors;
			}
		}
		[CRepr]
		public struct IVMRDeinterlaceControl9 : IUnknown
		{
			public const new Guid IID = .(0xa215fb8d, 0x13c2, 0x4f7f, 0x99, 0x3c, 0x00, 0x3d, 0x62, 0x71, 0xa4, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRDeinterlaceControl9 *self, VMR9VideoDesc* lpVideoDescription, uint32* lpdwNumDeinterlaceModes, Guid* lpDeinterlaceModes) GetNumberOfDeinterlaceModes;
				public function HRESULT(IVMRDeinterlaceControl9 *self, Guid* lpDeinterlaceMode, VMR9VideoDesc* lpVideoDescription, VMR9DeinterlaceCaps* lpDeinterlaceCaps) GetDeinterlaceModeCaps;
				public function HRESULT(IVMRDeinterlaceControl9 *self, uint32 dwStreamID, Guid* lpDeinterlaceMode) GetDeinterlaceMode;
				public function HRESULT(IVMRDeinterlaceControl9 *self, uint32 dwStreamID, Guid* lpDeinterlaceMode) SetDeinterlaceMode;
				public function HRESULT(IVMRDeinterlaceControl9 *self, uint32* lpdwDeinterlacePrefs) GetDeinterlacePrefs;
				public function HRESULT(IVMRDeinterlaceControl9 *self, uint32 dwDeinterlacePrefs) SetDeinterlacePrefs;
				public function HRESULT(IVMRDeinterlaceControl9 *self, uint32 dwStreamID, Guid* lpDeinterlaceMode) GetActualDeinterlaceMode;
			}
		}
		[CRepr]
		public struct IVMRImageCompositor9 : IUnknown
		{
			public const new Guid IID = .(0x4a5c89eb, 0xdf51, 0x4654, 0xac, 0x2a, 0xe4, 0x8e, 0x02, 0xbb, 0xab, 0xf6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVMRImageCompositor9 *self, IUnknown* pD3DDevice) InitCompositionDevice;
				public function HRESULT(IVMRImageCompositor9 *self, IUnknown* pD3DDevice) TermCompositionDevice;
				public function HRESULT(IVMRImageCompositor9 *self, uint32 dwStrmID, AM_MEDIA_TYPE* pmt, BOOL fTexture) SetStreamMediaType;
				public function HRESULT(IVMRImageCompositor9 *self, IUnknown* pD3DDevice, IDirect3DSurface9* pddsRenderTarget, AM_MEDIA_TYPE* pmtRenderTarget, int64 rtStart, int64 rtEnd, uint32 dwClrBkGnd, VMR9VideoStreamInfo* pVideoStreamInfo, uint32 cStreams) CompositeImage;
			}
		}
		[CRepr]
		public struct IVPBaseConfig : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVPBaseConfig *self, uint32* pdwNumConnectInfo, DDVIDEOPORTCONNECT* pddVPConnectInfo) GetConnectInfo;
				public function HRESULT(IVPBaseConfig *self, uint32 dwChosenEntry) SetConnectInfo;
				public function HRESULT(IVPBaseConfig *self, AMVPDATAINFO* pamvpDataInfo) GetVPDataInfo;
				public function HRESULT(IVPBaseConfig *self, AMVPSIZE* pamvpSize, uint32* pdwMaxPixelsPerSecond) GetMaxPixelRate;
				public function HRESULT(IVPBaseConfig *self, uint32 dwNumFormats, DDPIXELFORMAT* pDDPixelFormats) InformVPInputFormats;
				public function HRESULT(IVPBaseConfig *self, uint32* pdwNumFormats, DDPIXELFORMAT* pddPixelFormats) GetVideoFormats;
				public function HRESULT(IVPBaseConfig *self, uint32 dwChosenEntry) SetVideoFormat;
				public function HRESULT(IVPBaseConfig *self) SetInvertPolarity;
				public function HRESULT(IVPBaseConfig *self, IDirectDrawSurface** ppddOverlaySurface) GetOverlaySurface;
				public function HRESULT(IVPBaseConfig *self, uint dwDDKernelHandle) SetDirectDrawKernelHandle;
				public function HRESULT(IVPBaseConfig *self, uint32 dwVideoPortID) SetVideoPortID;
				public function HRESULT(IVPBaseConfig *self, uint32 cHandles, uint* rgDDKernelHandles) SetDDSurfaceKernelHandles;
				public function HRESULT(IVPBaseConfig *self, uint32 dwPitch, uint32 dwXOrigin, uint32 dwYOrigin) SetSurfaceParameters;
			}
		}
		[CRepr]
		public struct IVPConfig : IVPBaseConfig
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVPBaseConfig.VTable
			{
				public function HRESULT(IVPConfig *self, int32* pbIsDecimationAllowed) IsVPDecimationAllowed;
				public function HRESULT(IVPConfig *self, AMVPSIZE* pamvpSize) SetScalingFactors;
			}
		}
		[CRepr]
		public struct IVPVBIConfig : IVPBaseConfig
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVPBaseConfig.VTable
			{
			}
		}
		[CRepr]
		public struct IVPBaseNotify : IUnknown
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVPBaseNotify *self) RenegotiateVPParameters;
			}
		}
		[CRepr]
		public struct IVPNotify : IVPBaseNotify
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVPBaseNotify.VTable
			{
				public function HRESULT(IVPNotify *self, AMVP_MODE mode) SetDeinterlaceMode;
				public function HRESULT(IVPNotify *self, AMVP_MODE* pMode) GetDeinterlaceMode;
			}
		}
		[CRepr]
		public struct IVPNotify2 : IVPNotify
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVPNotify.VTable
			{
				public function HRESULT(IVPNotify2 *self, BOOL bVPSyncMaster) SetVPSyncMaster;
				public function HRESULT(IVPNotify2 *self, BOOL* pbVPSyncMaster) GetVPSyncMaster;
			}
		}
		[CRepr]
		public struct IVPVBINotify : IVPBaseNotify
		{
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVPBaseNotify.VTable
			{
			}
		}
		[CRepr]
		public struct IMediaParamInfo : IUnknown
		{
			public const new Guid IID = .(0x6d6cbb60, 0xa223, 0x44aa, 0x84, 0x2f, 0xa2, 0xf0, 0x67, 0x50, 0xbe, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaParamInfo *self, uint32* pdwParams) GetParamCount;
				public function HRESULT(IMediaParamInfo *self, uint32 dwParamIndex, MP_PARAMINFO* pInfo) GetParamInfo;
				public function HRESULT(IMediaParamInfo *self, uint32 dwParamIndex, uint16** ppwchText) GetParamText;
				public function HRESULT(IMediaParamInfo *self, uint32* pdwNumTimeFormats) GetNumTimeFormats;
				public function HRESULT(IMediaParamInfo *self, uint32 dwFormatIndex, Guid* pguidTimeFormat) GetSupportedTimeFormat;
				public function HRESULT(IMediaParamInfo *self, Guid* pguidTimeFormat, uint32* pTimeData) GetCurrentTimeFormat;
			}
		}
		[CRepr]
		public struct IMediaParams : IUnknown
		{
			public const new Guid IID = .(0x6d6cbb61, 0xa223, 0x44aa, 0x84, 0x2f, 0xa2, 0xf0, 0x67, 0x50, 0xbe, 0x6e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMediaParams *self, uint32 dwParamIndex, float* pValue) GetParam;
				public function HRESULT(IMediaParams *self, uint32 dwParamIndex, float value) SetParam;
				public function HRESULT(IMediaParams *self, uint32 dwParamIndex, uint32 cSegments, MP_ENVELOPE_SEGMENT* pEnvelopeSegments) AddEnvelope;
				public function HRESULT(IMediaParams *self, uint32 dwParamIndex, int64 refTimeStart, int64 refTimeEnd) FlushEnvelope;
				public function HRESULT(IMediaParams *self, Guid guidTimeFormat, uint32 mpTimeData) SetTimeFormat;
			}
		}
		[CRepr]
		public struct IAMPlayListItem : IUnknown
		{
			public const new Guid IID = .(0x56a868ff, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMPlayListItem *self, uint32* pdwFlags) GetFlags;
				public function HRESULT(IAMPlayListItem *self, uint32* pdwSources) GetSourceCount;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, BSTR* pbstrURL) GetSourceURL;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, int64* prtStart) GetSourceStart;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, int64* prtDuration) GetSourceDuration;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, uint32* pdwMarker) GetSourceStartMarker;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, uint32* pdwMarker) GetSourceEndMarker;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, BSTR* pbstrStartMarker) GetSourceStartMarkerName;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, BSTR* pbstrEndMarker) GetSourceEndMarkerName;
				public function HRESULT(IAMPlayListItem *self, BSTR* pbstrURL) GetLinkURL;
				public function HRESULT(IAMPlayListItem *self, uint32 dwSourceIndex, int64* prtScanDuration) GetScanDuration;
			}
		}
		[CRepr]
		public struct IAMPlayList : IUnknown
		{
			public const new Guid IID = .(0x56a868fe, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMPlayList *self, uint32* pdwFlags) GetFlags;
				public function HRESULT(IAMPlayList *self, uint32* pdwItems) GetItemCount;
				public function HRESULT(IAMPlayList *self, uint32 dwItemIndex, IAMPlayListItem** ppItem) GetItem;
				public function HRESULT(IAMPlayList *self, PWSTR pwszEventName, uint32 dwItemIndex, IAMPlayListItem** ppItem, uint32* pdwFlags) GetNamedEvent;
				public function HRESULT(IAMPlayList *self, uint32* pdwRepeatCount, uint32* pdwRepeatStart, uint32* pdwRepeatEnd) GetRepeatInfo;
			}
		}
		[CRepr]
		public struct ISpecifyParticularPages : IUnknown
		{
			public const new Guid IID = .(0x4c437b91, 0x6e9e, 0x11d1, 0xa7, 0x04, 0x00, 0x60, 0x97, 0xc4, 0xe4, 0x76);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISpecifyParticularPages *self, Guid* guidWhatPages, CAUUID* pPages) GetPages;
			}
		}
		[CRepr]
		public struct IAMRebuild : IUnknown
		{
			public const new Guid IID = .(0x02ef04dd, 0x7580, 0x11d1, 0xbe, 0xce, 0x00, 0xc0, 0x4f, 0xb6, 0xe9, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAMRebuild *self) RebuildNow;
			}
		}
		[CRepr]
		public struct IBufferingTime : IUnknown
		{
			public const new Guid IID = .(0x1e00486a, 0x78dd, 0x11d2, 0x8d, 0xd3, 0x00, 0x60, 0x97, 0xc9, 0xa2, 0xb2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBufferingTime *self, uint32* pdwMilliseconds) GetBufferingTime;
				public function HRESULT(IBufferingTime *self, uint32 dwMilliseconds) SetBufferingTime;
			}
		}
		[CRepr]
		public struct ICreatePropBagOnRegKey : IUnknown
		{
			public const new Guid IID = .(0x8a674b48, 0x1f63, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICreatePropBagOnRegKey *self, HKEY hkey, PWSTR subkey, uint32 ulOptions, uint32 samDesired, Guid* iid, void** ppBag) Create;
			}
		}
		[CRepr]
		public struct ITuningSpaces : IDispatch
		{
			public const new Guid IID = .(0x901284e4, 0x33fe, 0x4b69, 0x8d, 0x63, 0x63, 0x4a, 0x59, 0x6f, 0x37, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ITuningSpaces *self, int32* Count) get_Count;
				public function HRESULT(ITuningSpaces *self, IEnumVARIANT** NewEnum) get__NewEnum;
				public function HRESULT(ITuningSpaces *self, VARIANT varIndex, ITuningSpace** TuningSpace) get_Item;
				public function HRESULT(ITuningSpaces *self, IEnumTuningSpaces** NewEnum) get_EnumTuningSpaces;
			}
		}
		[CRepr]
		public struct ITuningSpaceContainer : IDispatch
		{
			public const new Guid IID = .(0x5b692e84, 0xe2f1, 0x11d2, 0x94, 0x93, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ITuningSpaceContainer *self, int32* Count) get_Count;
				public function HRESULT(ITuningSpaceContainer *self, IEnumVARIANT** NewEnum) get__NewEnum;
				public function HRESULT(ITuningSpaceContainer *self, VARIANT varIndex, ITuningSpace** TuningSpace) get_Item;
				public function HRESULT(ITuningSpaceContainer *self, VARIANT varIndex, ITuningSpace* TuningSpace) put_Item;
				public function HRESULT(ITuningSpaceContainer *self, BSTR SpaceCLSID, ITuningSpaces** NewColl) TuningSpacesForCLSID;
				public function HRESULT(ITuningSpaceContainer *self, Guid* SpaceCLSID, ITuningSpaces** NewColl) _TuningSpacesForCLSID2;
				public function HRESULT(ITuningSpaceContainer *self, BSTR Name, ITuningSpaces** NewColl) TuningSpacesForName;
				public function HRESULT(ITuningSpaceContainer *self, ITuningSpace* TuningSpace, int32* ID) FindID;
				public function HRESULT(ITuningSpaceContainer *self, ITuningSpace* TuningSpace, VARIANT* NewIndex) Add;
				public function HRESULT(ITuningSpaceContainer *self, IEnumTuningSpaces** ppEnum) get_EnumTuningSpaces;
				public function HRESULT(ITuningSpaceContainer *self, VARIANT Index) Remove;
				public function HRESULT(ITuningSpaceContainer *self, int32* MaxCount) get_MaxCount;
				public function HRESULT(ITuningSpaceContainer *self, int32 MaxCount) put_MaxCount;
			}
		}
		[CRepr]
		public struct ITuningSpace : IDispatch
		{
			public const new Guid IID = .(0x061c6e30, 0xe622, 0x11d2, 0x94, 0x93, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ITuningSpace *self, BSTR* Name) get_UniqueName;
				public function HRESULT(ITuningSpace *self, BSTR Name) put_UniqueName;
				public function HRESULT(ITuningSpace *self, BSTR* Name) get_FriendlyName;
				public function HRESULT(ITuningSpace *self, BSTR Name) put_FriendlyName;
				public function HRESULT(ITuningSpace *self, BSTR* SpaceCLSID) get_CLSID;
				public function HRESULT(ITuningSpace *self, BSTR* NetworkTypeGuid) get_NetworkType;
				public function HRESULT(ITuningSpace *self, BSTR NetworkTypeGuid) put_NetworkType;
				public function HRESULT(ITuningSpace *self, Guid* NetworkTypeGuid) get__NetworkType;
				public function HRESULT(ITuningSpace *self, Guid* NetworkTypeGuid) put__NetworkType;
				public function HRESULT(ITuningSpace *self, ITuneRequest** TuneRequest) CreateTuneRequest;
				public function HRESULT(ITuningSpace *self, IEnumGUID** ppEnum) EnumCategoryGUIDs;
				public function HRESULT(ITuningSpace *self, IEnumMoniker** ppEnum) EnumDeviceMonikers;
				public function HRESULT(ITuningSpace *self, IComponentTypes** ComponentTypes) get_DefaultPreferredComponentTypes;
				public function HRESULT(ITuningSpace *self, IComponentTypes* NewComponentTypes) put_DefaultPreferredComponentTypes;
				public function HRESULT(ITuningSpace *self, BSTR* pMapping) get_FrequencyMapping;
				public function HRESULT(ITuningSpace *self, BSTR Mapping) put_FrequencyMapping;
				public function HRESULT(ITuningSpace *self, ILocator** LocatorVal) get_DefaultLocator;
				public function HRESULT(ITuningSpace *self, ILocator* LocatorVal) put_DefaultLocator;
				public function HRESULT(ITuningSpace *self, ITuningSpace** NewTS) Clone;
			}
		}
		[CRepr]
		public struct IEnumTuningSpaces : IUnknown
		{
			public const new Guid IID = .(0x8b8eb248, 0xfc2b, 0x11d2, 0x9d, 0x8c, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumTuningSpaces *self, uint32 celt, ITuningSpace** rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumTuningSpaces *self, uint32 celt) Skip;
				public function HRESULT(IEnumTuningSpaces *self) Reset;
				public function HRESULT(IEnumTuningSpaces *self, IEnumTuningSpaces** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IDVBTuningSpace : ITuningSpace
		{
			public const new Guid IID = .(0xada0b268, 0x3b19, 0x4e5b, 0xac, 0xc4, 0x49, 0xf8, 0x52, 0xbe, 0x13, 0xba);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuningSpace.VTable
			{
				public function HRESULT(IDVBTuningSpace *self, DVBSystemType* SysType) get_SystemType;
				public function HRESULT(IDVBTuningSpace *self, DVBSystemType SysType) put_SystemType;
			}
		}
		[CRepr]
		public struct IDVBTuningSpace2 : IDVBTuningSpace
		{
			public const new Guid IID = .(0x843188b4, 0xce62, 0x43db, 0x96, 0x6b, 0x81, 0x45, 0xa0, 0x94, 0xe0, 0x40);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVBTuningSpace.VTable
			{
				public function HRESULT(IDVBTuningSpace2 *self, int32* NetworkID) get_NetworkID;
				public function HRESULT(IDVBTuningSpace2 *self, int32 NetworkID) put_NetworkID;
			}
		}
		[CRepr]
		public struct IDVBSTuningSpace : IDVBTuningSpace2
		{
			public const new Guid IID = .(0xcdf7be60, 0xd954, 0x42fd, 0xa9, 0x72, 0x78, 0x97, 0x19, 0x58, 0xe4, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVBTuningSpace2.VTable
			{
				public function HRESULT(IDVBSTuningSpace *self, int32* LowOscillator) get_LowOscillator;
				public function HRESULT(IDVBSTuningSpace *self, int32 LowOscillator) put_LowOscillator;
				public function HRESULT(IDVBSTuningSpace *self, int32* HighOscillator) get_HighOscillator;
				public function HRESULT(IDVBSTuningSpace *self, int32 HighOscillator) put_HighOscillator;
				public function HRESULT(IDVBSTuningSpace *self, int32* LNBSwitch) get_LNBSwitch;
				public function HRESULT(IDVBSTuningSpace *self, int32 LNBSwitch) put_LNBSwitch;
				public function HRESULT(IDVBSTuningSpace *self, BSTR* InputRange) get_InputRange;
				public function HRESULT(IDVBSTuningSpace *self, BSTR InputRange) put_InputRange;
				public function HRESULT(IDVBSTuningSpace *self, SpectralInversion* SpectralInversionVal) get_SpectralInversion;
				public function HRESULT(IDVBSTuningSpace *self, SpectralInversion SpectralInversionVal) put_SpectralInversion;
			}
		}
		[CRepr]
		public struct IAuxInTuningSpace : ITuningSpace
		{
			public const new Guid IID = .(0xe48244b8, 0x7e17, 0x4f76, 0xa7, 0x63, 0x50, 0x90, 0xff, 0x1e, 0x2f, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuningSpace.VTable
			{
			}
		}
		[CRepr]
		public struct IAuxInTuningSpace2 : IAuxInTuningSpace
		{
			public const new Guid IID = .(0xb10931ed, 0x8bfe, 0x4ab0, 0x9d, 0xce, 0xe4, 0x69, 0xc2, 0x9a, 0x97, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAuxInTuningSpace.VTable
			{
				public function HRESULT(IAuxInTuningSpace2 *self, int32* CountryCodeVal) get_CountryCode;
				public function HRESULT(IAuxInTuningSpace2 *self, int32 NewCountryCodeVal) put_CountryCode;
			}
		}
		[CRepr]
		public struct IAnalogTVTuningSpace : ITuningSpace
		{
			public const new Guid IID = .(0x2a6e293c, 0x2595, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuningSpace.VTable
			{
				public function HRESULT(IAnalogTVTuningSpace *self, int32* MinChannelVal) get_MinChannel;
				public function HRESULT(IAnalogTVTuningSpace *self, int32 NewMinChannelVal) put_MinChannel;
				public function HRESULT(IAnalogTVTuningSpace *self, int32* MaxChannelVal) get_MaxChannel;
				public function HRESULT(IAnalogTVTuningSpace *self, int32 NewMaxChannelVal) put_MaxChannel;
				public function HRESULT(IAnalogTVTuningSpace *self, TunerInputType* InputTypeVal) get_InputType;
				public function HRESULT(IAnalogTVTuningSpace *self, TunerInputType NewInputTypeVal) put_InputType;
				public function HRESULT(IAnalogTVTuningSpace *self, int32* CountryCodeVal) get_CountryCode;
				public function HRESULT(IAnalogTVTuningSpace *self, int32 NewCountryCodeVal) put_CountryCode;
			}
		}
		[CRepr]
		public struct IATSCTuningSpace : IAnalogTVTuningSpace
		{
			public const new Guid IID = .(0x0369b4e2, 0x45b6, 0x11d3, 0xb6, 0x50, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAnalogTVTuningSpace.VTable
			{
				public function HRESULT(IATSCTuningSpace *self, int32* MinMinorChannelVal) get_MinMinorChannel;
				public function HRESULT(IATSCTuningSpace *self, int32 NewMinMinorChannelVal) put_MinMinorChannel;
				public function HRESULT(IATSCTuningSpace *self, int32* MaxMinorChannelVal) get_MaxMinorChannel;
				public function HRESULT(IATSCTuningSpace *self, int32 NewMaxMinorChannelVal) put_MaxMinorChannel;
				public function HRESULT(IATSCTuningSpace *self, int32* MinPhysicalChannelVal) get_MinPhysicalChannel;
				public function HRESULT(IATSCTuningSpace *self, int32 NewMinPhysicalChannelVal) put_MinPhysicalChannel;
				public function HRESULT(IATSCTuningSpace *self, int32* MaxPhysicalChannelVal) get_MaxPhysicalChannel;
				public function HRESULT(IATSCTuningSpace *self, int32 NewMaxPhysicalChannelVal) put_MaxPhysicalChannel;
			}
		}
		[CRepr]
		public struct IDigitalCableTuningSpace : IATSCTuningSpace
		{
			public const new Guid IID = .(0x013f9f9c, 0xb449, 0x4ec7, 0xa6, 0xd2, 0x9d, 0x4f, 0x2f, 0xc7, 0x0a, 0xe5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IATSCTuningSpace.VTable
			{
				public function HRESULT(IDigitalCableTuningSpace *self, int32* MinMajorChannelVal) get_MinMajorChannel;
				public function HRESULT(IDigitalCableTuningSpace *self, int32 NewMinMajorChannelVal) put_MinMajorChannel;
				public function HRESULT(IDigitalCableTuningSpace *self, int32* MaxMajorChannelVal) get_MaxMajorChannel;
				public function HRESULT(IDigitalCableTuningSpace *self, int32 NewMaxMajorChannelVal) put_MaxMajorChannel;
				public function HRESULT(IDigitalCableTuningSpace *self, int32* MinSourceIDVal) get_MinSourceID;
				public function HRESULT(IDigitalCableTuningSpace *self, int32 NewMinSourceIDVal) put_MinSourceID;
				public function HRESULT(IDigitalCableTuningSpace *self, int32* MaxSourceIDVal) get_MaxSourceID;
				public function HRESULT(IDigitalCableTuningSpace *self, int32 NewMaxSourceIDVal) put_MaxSourceID;
			}
		}
		[CRepr]
		public struct IAnalogRadioTuningSpace : ITuningSpace
		{
			public const new Guid IID = .(0x2a6e293b, 0x2595, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuningSpace.VTable
			{
				public function HRESULT(IAnalogRadioTuningSpace *self, int32* MinFrequencyVal) get_MinFrequency;
				public function HRESULT(IAnalogRadioTuningSpace *self, int32 NewMinFrequencyVal) put_MinFrequency;
				public function HRESULT(IAnalogRadioTuningSpace *self, int32* MaxFrequencyVal) get_MaxFrequency;
				public function HRESULT(IAnalogRadioTuningSpace *self, int32 NewMaxFrequencyVal) put_MaxFrequency;
				public function HRESULT(IAnalogRadioTuningSpace *self, int32* StepVal) get_Step;
				public function HRESULT(IAnalogRadioTuningSpace *self, int32 NewStepVal) put_Step;
			}
		}
		[CRepr]
		public struct IAnalogRadioTuningSpace2 : IAnalogRadioTuningSpace
		{
			public const new Guid IID = .(0x39dd45da, 0x2da8, 0x46ba, 0x8a, 0x8a, 0x87, 0xe2, 0xb7, 0x3d, 0x98, 0x3a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAnalogRadioTuningSpace.VTable
			{
				public function HRESULT(IAnalogRadioTuningSpace2 *self, int32* CountryCodeVal) get_CountryCode;
				public function HRESULT(IAnalogRadioTuningSpace2 *self, int32 NewCountryCodeVal) put_CountryCode;
			}
		}
		[CRepr]
		public struct ITuneRequest : IDispatch
		{
			public const new Guid IID = .(0x07ddc146, 0xfc3d, 0x11d2, 0x9d, 0x8c, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ITuneRequest *self, ITuningSpace** TuningSpace) get_TuningSpace;
				public function HRESULT(ITuneRequest *self, IComponents** Components) get_Components;
				public function HRESULT(ITuneRequest *self, ITuneRequest** NewTuneRequest) Clone;
				public function HRESULT(ITuneRequest *self, ILocator** Locator) get_Locator;
				public function HRESULT(ITuneRequest *self, ILocator* Locator) put_Locator;
			}
		}
		[CRepr]
		public struct IChannelIDTuneRequest : ITuneRequest
		{
			public const new Guid IID = .(0x156eff60, 0x86f4, 0x4e28, 0x89, 0xfc, 0x10, 0x97, 0x99, 0xfd, 0x57, 0xee);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuneRequest.VTable
			{
				public function HRESULT(IChannelIDTuneRequest *self, BSTR* ChannelID) get_ChannelID;
				public function HRESULT(IChannelIDTuneRequest *self, BSTR ChannelID) put_ChannelID;
			}
		}
		[CRepr]
		public struct IChannelTuneRequest : ITuneRequest
		{
			public const new Guid IID = .(0x0369b4e0, 0x45b6, 0x11d3, 0xb6, 0x50, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuneRequest.VTable
			{
				public function HRESULT(IChannelTuneRequest *self, int32* Channel) get_Channel;
				public function HRESULT(IChannelTuneRequest *self, int32 Channel) put_Channel;
			}
		}
		[CRepr]
		public struct IATSCChannelTuneRequest : IChannelTuneRequest
		{
			public const new Guid IID = .(0x0369b4e1, 0x45b6, 0x11d3, 0xb6, 0x50, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IChannelTuneRequest.VTable
			{
				public function HRESULT(IATSCChannelTuneRequest *self, int32* MinorChannel) get_MinorChannel;
				public function HRESULT(IATSCChannelTuneRequest *self, int32 MinorChannel) put_MinorChannel;
			}
		}
		[CRepr]
		public struct IDigitalCableTuneRequest : IATSCChannelTuneRequest
		{
			public const new Guid IID = .(0xbad7753b, 0x6b37, 0x4810, 0xae, 0x57, 0x3c, 0xe0, 0xc4, 0xa9, 0xe6, 0xcb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IATSCChannelTuneRequest.VTable
			{
				public function HRESULT(IDigitalCableTuneRequest *self, int32* pMajorChannel) get_MajorChannel;
				public function HRESULT(IDigitalCableTuneRequest *self, int32 MajorChannel) put_MajorChannel;
				public function HRESULT(IDigitalCableTuneRequest *self, int32* pSourceID) get_SourceID;
				public function HRESULT(IDigitalCableTuneRequest *self, int32 SourceID) put_SourceID;
			}
		}
		[CRepr]
		public struct IDVBTuneRequest : ITuneRequest
		{
			public const new Guid IID = .(0x0d6f567e, 0xa636, 0x42bb, 0x83, 0xba, 0xce, 0x4c, 0x17, 0x04, 0xaf, 0xa2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuneRequest.VTable
			{
				public function HRESULT(IDVBTuneRequest *self, int32* ONID) get_ONID;
				public function HRESULT(IDVBTuneRequest *self, int32 ONID) put_ONID;
				public function HRESULT(IDVBTuneRequest *self, int32* TSID) get_TSID;
				public function HRESULT(IDVBTuneRequest *self, int32 TSID) put_TSID;
				public function HRESULT(IDVBTuneRequest *self, int32* SID) get_SID;
				public function HRESULT(IDVBTuneRequest *self, int32 SID) put_SID;
			}
		}
		[CRepr]
		public struct IMPEG2TuneRequest : ITuneRequest
		{
			public const new Guid IID = .(0xeb7d987f, 0x8a01, 0x42ad, 0xb8, 0xae, 0x57, 0x4d, 0xee, 0xe4, 0x4d, 0x1a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuneRequest.VTable
			{
				public function HRESULT(IMPEG2TuneRequest *self, int32* TSID) get_TSID;
				public function HRESULT(IMPEG2TuneRequest *self, int32 TSID) put_TSID;
				public function HRESULT(IMPEG2TuneRequest *self, int32* ProgNo) get_ProgNo;
				public function HRESULT(IMPEG2TuneRequest *self, int32 ProgNo) put_ProgNo;
			}
		}
		[CRepr]
		public struct IMPEG2TuneRequestFactory : IDispatch
		{
			public const new Guid IID = .(0x14e11abd, 0xee37, 0x4893, 0x9e, 0xa1, 0x69, 0x64, 0xde, 0x93, 0x3e, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMPEG2TuneRequestFactory *self, ITuningSpace* TuningSpace, IMPEG2TuneRequest** TuneRequest) CreateTuneRequest;
			}
		}
		[CRepr]
		public struct IMPEG2TuneRequestSupport : IUnknown
		{
			public const new Guid IID = .(0x1b9d5fc3, 0x5bbc, 0x4b6c, 0xbb, 0x18, 0xb9, 0xd1, 0x0e, 0x3e, 0xee, 0xbf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct ITunerCap : IUnknown
		{
			public const new Guid IID = .(0xe60dfa45, 0x8d56, 0x4e65, 0xa8, 0xab, 0xd6, 0xbe, 0x94, 0x12, 0xc2, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITunerCap *self, uint32 ulcNetworkTypesMax, uint32* pulcNetworkTypes, Guid* pguidNetworkTypes) get_SupportedNetworkTypes;
				public function HRESULT(ITunerCap *self, uint32* pulAMTunerModeType, uint32* pulAnalogVideoStandard) get_SupportedVideoFormats;
				public function HRESULT(ITunerCap *self, uint32* pulCompositeCount, uint32* pulSvideoCount) get_AuxInputCount;
			}
		}
		[CRepr]
		public struct ITunerCapEx : IUnknown
		{
			public const new Guid IID = .(0xed3e0c66, 0x18c8, 0x4ea6, 0x93, 0x00, 0xf6, 0x84, 0x1f, 0xdd, 0x35, 0xdc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITunerCapEx *self, int16* pbHasCaption) get_Has608_708Caption;
			}
		}
		[CRepr]
		public struct ITuner : IUnknown
		{
			public const new Guid IID = .(0x28c52640, 0x018a, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITuner *self, ITuningSpace** TuningSpace) get_TuningSpace;
				public function HRESULT(ITuner *self, ITuningSpace* TuningSpace) put_TuningSpace;
				public function HRESULT(ITuner *self, IEnumTuningSpaces** ppEnum) EnumTuningSpaces;
				public function HRESULT(ITuner *self, ITuneRequest** TuneRequest) get_TuneRequest;
				public function HRESULT(ITuner *self, ITuneRequest* TuneRequest) put_TuneRequest;
				public function HRESULT(ITuner *self, ITuneRequest* TuneRequest) Validate;
				public function HRESULT(ITuner *self, IComponentTypes** ComponentTypes) get_PreferredComponentTypes;
				public function HRESULT(ITuner *self, IComponentTypes* ComponentTypes) put_PreferredComponentTypes;
				public function HRESULT(ITuner *self, int32* Strength) get_SignalStrength;
				public function HRESULT(ITuner *self, int32 Interval) TriggerSignalEvents;
			}
		}
		[CRepr]
		public struct IScanningTuner : ITuner
		{
			public const new Guid IID = .(0x1dfd0a5c, 0x0284, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuner.VTable
			{
				public function HRESULT(IScanningTuner *self) SeekUp;
				public function HRESULT(IScanningTuner *self) SeekDown;
				public function HRESULT(IScanningTuner *self, int32 MillisecondsPause) ScanUp;
				public function HRESULT(IScanningTuner *self, int32 MillisecondsPause) ScanDown;
				public function HRESULT(IScanningTuner *self) AutoProgram;
			}
		}
		[CRepr]
		public struct IScanningTunerEx : IScanningTuner
		{
			public const new Guid IID = .(0x04bbd195, 0x0e2d, 0x4593, 0x9b, 0xd5, 0x4f, 0x90, 0x8b, 0xc3, 0x3c, 0xf5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IScanningTuner.VTable
			{
				public function HRESULT(IScanningTunerEx *self, ILocator** pILocator) GetCurrentLocator;
				public function HRESULT(IScanningTunerEx *self, int32 dwLowerFreq, int32 dwHigherFreq, int16 bFineTune, uint hEvent) PerformExhaustiveScan;
				public function HRESULT(IScanningTunerEx *self, int32* pcurrentFreq) TerminateCurrentScan;
				public function HRESULT(IScanningTunerEx *self, uint hEvent) ResumeCurrentScan;
				public function HRESULT(IScanningTunerEx *self, int32* HardwareAssistedScanning, int32* NumStandardsSupported, Guid* BroadcastStandards) GetTunerScanningCapability;
				public function HRESULT(IScanningTunerEx *self, int32* SecondsLeft, int32* CurrentLockType, int32* AutoDetect, int32* CurrentFreq) GetTunerStatus;
				public function HRESULT(IScanningTunerEx *self, Guid CurrentBroadcastStandard, int32* SettlingTime, int32* TvStandardsSupported) GetCurrentTunerStandardCapability;
				public function HRESULT(IScanningTunerEx *self, int32 ScanModulationTypes, int32 AnalogVideoStandard) SetScanSignalTypeFilter;
			}
		}
		[CRepr]
		public struct IComponentType : IDispatch
		{
			public const new Guid IID = .(0x6a340dc0, 0x0311, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IComponentType *self, ComponentCategory* Category) get_Category;
				public function HRESULT(IComponentType *self, ComponentCategory Category) put_Category;
				public function HRESULT(IComponentType *self, BSTR* MediaMajorType) get_MediaMajorType;
				public function HRESULT(IComponentType *self, BSTR MediaMajorType) put_MediaMajorType;
				public function HRESULT(IComponentType *self, Guid* MediaMajorTypeGuid) get__MediaMajorType;
				public function HRESULT(IComponentType *self, Guid* MediaMajorTypeGuid) put__MediaMajorType;
				public function HRESULT(IComponentType *self, BSTR* MediaSubType) get_MediaSubType;
				public function HRESULT(IComponentType *self, BSTR MediaSubType) put_MediaSubType;
				public function HRESULT(IComponentType *self, Guid* MediaSubTypeGuid) get__MediaSubType;
				public function HRESULT(IComponentType *self, Guid* MediaSubTypeGuid) put__MediaSubType;
				public function HRESULT(IComponentType *self, BSTR* MediaFormatType) get_MediaFormatType;
				public function HRESULT(IComponentType *self, BSTR MediaFormatType) put_MediaFormatType;
				public function HRESULT(IComponentType *self, Guid* MediaFormatTypeGuid) get__MediaFormatType;
				public function HRESULT(IComponentType *self, Guid* MediaFormatTypeGuid) put__MediaFormatType;
				public function HRESULT(IComponentType *self, AM_MEDIA_TYPE* MediaType) get_MediaType;
				public function HRESULT(IComponentType *self, AM_MEDIA_TYPE* MediaType) put_MediaType;
				public function HRESULT(IComponentType *self, IComponentType** NewCT) Clone;
			}
		}
		[CRepr]
		public struct ILanguageComponentType : IComponentType
		{
			public const new Guid IID = .(0xb874c8ba, 0x0fa2, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IComponentType.VTable
			{
				public function HRESULT(ILanguageComponentType *self, int32* LangID) get_LangID;
				public function HRESULT(ILanguageComponentType *self, int32 LangID) put_LangID;
			}
		}
		[CRepr]
		public struct IMPEG2ComponentType : ILanguageComponentType
		{
			public const new Guid IID = .(0x2c073d84, 0xb51c, 0x48c9, 0xaa, 0x9f, 0x68, 0x97, 0x1e, 0x1f, 0x6e, 0x38);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ILanguageComponentType.VTable
			{
				public function HRESULT(IMPEG2ComponentType *self, MPEG2StreamType* MP2StreamType) get_StreamType;
				public function HRESULT(IMPEG2ComponentType *self, MPEG2StreamType MP2StreamType) put_StreamType;
			}
		}
		[CRepr]
		public struct IATSCComponentType : IMPEG2ComponentType
		{
			public const new Guid IID = .(0xfc189e4d, 0x7bd4, 0x4125, 0xb3, 0xb3, 0x3a, 0x76, 0xa3, 0x32, 0xcc, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMPEG2ComponentType.VTable
			{
				public function HRESULT(IATSCComponentType *self, int32* Flags) get_Flags;
				public function HRESULT(IATSCComponentType *self, int32 flags) put_Flags;
			}
		}
		[CRepr]
		public struct IEnumComponentTypes : IUnknown
		{
			public const new Guid IID = .(0x8a674b4a, 0x1f63, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumComponentTypes *self, uint32 celt, IComponentType** rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumComponentTypes *self, uint32 celt) Skip;
				public function HRESULT(IEnumComponentTypes *self) Reset;
				public function HRESULT(IEnumComponentTypes *self, IEnumComponentTypes** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IComponentTypes : IDispatch
		{
			public const new Guid IID = .(0x0dc13d4a, 0x0313, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IComponentTypes *self, int32* Count) get_Count;
				public function HRESULT(IComponentTypes *self, IEnumVARIANT** ppNewEnum) get__NewEnum;
				public function HRESULT(IComponentTypes *self, IEnumComponentTypes** ppNewEnum) EnumComponentTypes;
				public function HRESULT(IComponentTypes *self, VARIANT Index, IComponentType** ComponentType) get_Item;
				public function HRESULT(IComponentTypes *self, VARIANT Index, IComponentType* ComponentType) put_Item;
				public function HRESULT(IComponentTypes *self, IComponentType* ComponentType, VARIANT* NewIndex) Add;
				public function HRESULT(IComponentTypes *self, VARIANT Index) Remove;
				public function HRESULT(IComponentTypes *self, IComponentTypes** NewList) Clone;
			}
		}
		[CRepr]
		public struct IComponent : IDispatch
		{
			public const new Guid IID = .(0x1a5576fc, 0x0e19, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IComponent *self, IComponentType** CT) get_Type;
				public function HRESULT(IComponent *self, IComponentType* CT) put_Type;
				public function HRESULT(IComponent *self, int32* LangID) get_DescLangID;
				public function HRESULT(IComponent *self, int32 LangID) put_DescLangID;
				public function HRESULT(IComponent *self, ComponentStatus* Status) get_Status;
				public function HRESULT(IComponent *self, ComponentStatus Status) put_Status;
				public function HRESULT(IComponent *self, BSTR* Description) get_Description;
				public function HRESULT(IComponent *self, BSTR Description) put_Description;
				public function HRESULT(IComponent *self, IComponent** NewComponent) Clone;
			}
		}
		[CRepr]
		public struct IAnalogAudioComponentType : IComponentType
		{
			public const new Guid IID = .(0x2cfeb2a8, 0x1787, 0x4a24, 0xa9, 0x41, 0xc6, 0xea, 0xec, 0x39, 0xc8, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IComponentType.VTable
			{
				public function HRESULT(IAnalogAudioComponentType *self, TVAudioMode* Mode) get_AnalogAudioMode;
				public function HRESULT(IAnalogAudioComponentType *self, TVAudioMode Mode) put_AnalogAudioMode;
			}
		}
		[CRepr]
		public struct IMPEG2Component : IComponent
		{
			public const new Guid IID = .(0x1493e353, 0x1eb6, 0x473c, 0x80, 0x2d, 0x8e, 0x6b, 0x8e, 0xc9, 0xd2, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IComponent.VTable
			{
				public function HRESULT(IMPEG2Component *self, int32* PID) get_PID;
				public function HRESULT(IMPEG2Component *self, int32 PID) put_PID;
				public function HRESULT(IMPEG2Component *self, int32* PCRPID) get_PCRPID;
				public function HRESULT(IMPEG2Component *self, int32 PCRPID) put_PCRPID;
				public function HRESULT(IMPEG2Component *self, int32* ProgramNumber) get_ProgramNumber;
				public function HRESULT(IMPEG2Component *self, int32 ProgramNumber) put_ProgramNumber;
			}
		}
		[CRepr]
		public struct IEnumComponents : IUnknown
		{
			public const new Guid IID = .(0x2a6e2939, 0x2595, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumComponents *self, uint32 celt, IComponent** rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumComponents *self, uint32 celt) Skip;
				public function HRESULT(IEnumComponents *self) Reset;
				public function HRESULT(IEnumComponents *self, IEnumComponents** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IComponents : IDispatch
		{
			public const new Guid IID = .(0x39a48091, 0xfffe, 0x4182, 0xa1, 0x61, 0x3f, 0xf8, 0x02, 0x64, 0x0e, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IComponents *self, int32* Count) get_Count;
				public function HRESULT(IComponents *self, IEnumVARIANT** ppNewEnum) get__NewEnum;
				public function HRESULT(IComponents *self, IEnumComponents** ppNewEnum) EnumComponents;
				public function HRESULT(IComponents *self, VARIANT Index, IComponent** ppComponent) get_Item;
				public function HRESULT(IComponents *self, IComponent* Component, VARIANT* NewIndex) Add;
				public function HRESULT(IComponents *self, VARIANT Index) Remove;
				public function HRESULT(IComponents *self, IComponents** NewList) Clone;
				public function HRESULT(IComponents *self, VARIANT Index, IComponent* ppComponent) put_Item;
			}
		}
		[CRepr]
		public struct IComponentsOld : IDispatch
		{
			public const new Guid IID = .(0xfcd01846, 0x0e19, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IComponentsOld *self, int32* Count) get_Count;
				public function HRESULT(IComponentsOld *self, IEnumVARIANT** ppNewEnum) get__NewEnum;
				public function HRESULT(IComponentsOld *self, IEnumComponents** ppNewEnum) EnumComponents;
				public function HRESULT(IComponentsOld *self, VARIANT Index, IComponent** ppComponent) get_Item;
				public function HRESULT(IComponentsOld *self, IComponent* Component, VARIANT* NewIndex) Add;
				public function HRESULT(IComponentsOld *self, VARIANT Index) Remove;
				public function HRESULT(IComponentsOld *self, IComponents** NewList) Clone;
			}
		}
		[CRepr]
		public struct ILocator : IDispatch
		{
			public const new Guid IID = .(0x286d7f89, 0x760c, 0x4f89, 0x80, 0xc4, 0x66, 0x84, 0x1d, 0x25, 0x07, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ILocator *self, int32* Frequency) get_CarrierFrequency;
				public function HRESULT(ILocator *self, int32 Frequency) put_CarrierFrequency;
				public function HRESULT(ILocator *self, FECMethod* FEC) get_InnerFEC;
				public function HRESULT(ILocator *self, FECMethod FEC) put_InnerFEC;
				public function HRESULT(ILocator *self, BinaryConvolutionCodeRate* FEC) get_InnerFECRate;
				public function HRESULT(ILocator *self, BinaryConvolutionCodeRate FEC) put_InnerFECRate;
				public function HRESULT(ILocator *self, FECMethod* FEC) get_OuterFEC;
				public function HRESULT(ILocator *self, FECMethod FEC) put_OuterFEC;
				public function HRESULT(ILocator *self, BinaryConvolutionCodeRate* FEC) get_OuterFECRate;
				public function HRESULT(ILocator *self, BinaryConvolutionCodeRate FEC) put_OuterFECRate;
				public function HRESULT(ILocator *self, ModulationType* Modulation) get_Modulation;
				public function HRESULT(ILocator *self, ModulationType Modulation) put_Modulation;
				public function HRESULT(ILocator *self, int32* Rate) get_SymbolRate;
				public function HRESULT(ILocator *self, int32 Rate) put_SymbolRate;
				public function HRESULT(ILocator *self, ILocator** NewLocator) Clone;
			}
		}
		[CRepr]
		public struct IAnalogLocator : ILocator
		{
			public const new Guid IID = .(0x34d1f26b, 0xe339, 0x430d, 0xab, 0xce, 0x73, 0x8c, 0xb4, 0x89, 0x84, 0xdc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ILocator.VTable
			{
				public function HRESULT(IAnalogLocator *self, AnalogVideoStandard* AVS) get_VideoStandard;
				public function HRESULT(IAnalogLocator *self, AnalogVideoStandard AVS) put_VideoStandard;
			}
		}
		[CRepr]
		public struct IDigitalLocator : ILocator
		{
			public const new Guid IID = .(0x19b595d8, 0x839a, 0x47f0, 0x96, 0xdf, 0x4f, 0x19, 0x4f, 0x3c, 0x76, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ILocator.VTable
			{
			}
		}
		[CRepr]
		public struct IATSCLocator : IDigitalLocator
		{
			public const new Guid IID = .(0xbf8d986f, 0x8c2b, 0x4131, 0x94, 0xd7, 0x4d, 0x3d, 0x9f, 0xcc, 0x21, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDigitalLocator.VTable
			{
				public function HRESULT(IATSCLocator *self, int32* PhysicalChannel) get_PhysicalChannel;
				public function HRESULT(IATSCLocator *self, int32 PhysicalChannel) put_PhysicalChannel;
				public function HRESULT(IATSCLocator *self, int32* TSID) get_TSID;
				public function HRESULT(IATSCLocator *self, int32 TSID) put_TSID;
			}
		}
		[CRepr]
		public struct IATSCLocator2 : IATSCLocator
		{
			public const new Guid IID = .(0x612aa885, 0x66cf, 0x4090, 0xba, 0x0a, 0x56, 0x6f, 0x53, 0x12, 0xe4, 0xca);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IATSCLocator.VTable
			{
				public function HRESULT(IATSCLocator2 *self, int32* ProgramNumber) get_ProgramNumber;
				public function HRESULT(IATSCLocator2 *self, int32 ProgramNumber) put_ProgramNumber;
			}
		}
		[CRepr]
		public struct IDigitalCableLocator : IATSCLocator2
		{
			public const new Guid IID = .(0x48f66a11, 0x171a, 0x419a, 0x95, 0x25, 0xbe, 0xee, 0xcd, 0x51, 0x58, 0x4c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IATSCLocator2.VTable
			{
			}
		}
		[CRepr]
		public struct IDVBTLocator : IDigitalLocator
		{
			public const new Guid IID = .(0x8664da16, 0xdda2, 0x42ac, 0x92, 0x6a, 0xc1, 0x8f, 0x91, 0x27, 0xc3, 0x02);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDigitalLocator.VTable
			{
				public function HRESULT(IDVBTLocator *self, int32* BandWidthVal) get_Bandwidth;
				public function HRESULT(IDVBTLocator *self, int32 BandwidthVal) put_Bandwidth;
				public function HRESULT(IDVBTLocator *self, FECMethod* FEC) get_LPInnerFEC;
				public function HRESULT(IDVBTLocator *self, FECMethod FEC) put_LPInnerFEC;
				public function HRESULT(IDVBTLocator *self, BinaryConvolutionCodeRate* FEC) get_LPInnerFECRate;
				public function HRESULT(IDVBTLocator *self, BinaryConvolutionCodeRate FEC) put_LPInnerFECRate;
				public function HRESULT(IDVBTLocator *self, HierarchyAlpha* Alpha) get_HAlpha;
				public function HRESULT(IDVBTLocator *self, HierarchyAlpha Alpha) put_HAlpha;
				public function HRESULT(IDVBTLocator *self, GuardInterval* GI) get_Guard;
				public function HRESULT(IDVBTLocator *self, GuardInterval GI) put_Guard;
				public function HRESULT(IDVBTLocator *self, TransmissionMode* mode) get_Mode;
				public function HRESULT(IDVBTLocator *self, TransmissionMode mode) put_Mode;
				public function HRESULT(IDVBTLocator *self, int16* OtherFrequencyInUseVal) get_OtherFrequencyInUse;
				public function HRESULT(IDVBTLocator *self, int16 OtherFrequencyInUseVal) put_OtherFrequencyInUse;
			}
		}
		[CRepr]
		public struct IDVBTLocator2 : IDVBTLocator
		{
			public const new Guid IID = .(0x448a2edf, 0xae95, 0x4b43, 0xa3, 0xcc, 0x74, 0x78, 0x43, 0xc4, 0x53, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVBTLocator.VTable
			{
				public function HRESULT(IDVBTLocator2 *self, int32* PhysicalLayerPipeIdVal) get_PhysicalLayerPipeId;
				public function HRESULT(IDVBTLocator2 *self, int32 PhysicalLayerPipeIdVal) put_PhysicalLayerPipeId;
			}
		}
		[CRepr]
		public struct IDVBSLocator : IDigitalLocator
		{
			public const new Guid IID = .(0x3d7c353c, 0x0d04, 0x45f1, 0xa7, 0x42, 0xf9, 0x7c, 0xc1, 0x18, 0x8d, 0xc8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDigitalLocator.VTable
			{
				public function HRESULT(IDVBSLocator *self, Polarisation* PolarisationVal) get_SignalPolarisation;
				public function HRESULT(IDVBSLocator *self, Polarisation PolarisationVal) put_SignalPolarisation;
				public function HRESULT(IDVBSLocator *self, int16* WestLongitude) get_WestPosition;
				public function HRESULT(IDVBSLocator *self, int16 WestLongitude) put_WestPosition;
				public function HRESULT(IDVBSLocator *self, int32* longitude) get_OrbitalPosition;
				public function HRESULT(IDVBSLocator *self, int32 longitude) put_OrbitalPosition;
				public function HRESULT(IDVBSLocator *self, int32* Azimuth) get_Azimuth;
				public function HRESULT(IDVBSLocator *self, int32 Azimuth) put_Azimuth;
				public function HRESULT(IDVBSLocator *self, int32* Elevation) get_Elevation;
				public function HRESULT(IDVBSLocator *self, int32 Elevation) put_Elevation;
			}
		}
		[CRepr]
		public struct IDVBSLocator2 : IDVBSLocator
		{
			public const new Guid IID = .(0x6044634a, 0x1733, 0x4f99, 0xb9, 0x82, 0x5f, 0xb1, 0x2a, 0xfc, 0xe4, 0xf0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVBSLocator.VTable
			{
				public function HRESULT(IDVBSLocator2 *self, LNB_Source* DiseqLNBSourceVal) get_DiseqLNBSource;
				public function HRESULT(IDVBSLocator2 *self, LNB_Source DiseqLNBSourceVal) put_DiseqLNBSource;
				public function HRESULT(IDVBSLocator2 *self, int32* LocalOscillatorOverrideLowVal) get_LocalOscillatorOverrideLow;
				public function HRESULT(IDVBSLocator2 *self, int32 LocalOscillatorOverrideLowVal) put_LocalOscillatorOverrideLow;
				public function HRESULT(IDVBSLocator2 *self, int32* LocalOscillatorOverrideHighVal) get_LocalOscillatorOverrideHigh;
				public function HRESULT(IDVBSLocator2 *self, int32 LocalOscillatorOverrideHighVal) put_LocalOscillatorOverrideHigh;
				public function HRESULT(IDVBSLocator2 *self, int32* LocalLNBSwitchOverrideVal) get_LocalLNBSwitchOverride;
				public function HRESULT(IDVBSLocator2 *self, int32 LocalLNBSwitchOverrideVal) put_LocalLNBSwitchOverride;
				public function HRESULT(IDVBSLocator2 *self, SpectralInversion* LocalSpectralInversionOverrideVal) get_LocalSpectralInversionOverride;
				public function HRESULT(IDVBSLocator2 *self, SpectralInversion LocalSpectralInversionOverrideVal) put_LocalSpectralInversionOverride;
				public function HRESULT(IDVBSLocator2 *self, RollOff* RollOffVal) get_SignalRollOff;
				public function HRESULT(IDVBSLocator2 *self, RollOff RollOffVal) put_SignalRollOff;
				public function HRESULT(IDVBSLocator2 *self, Pilot* PilotVal) get_SignalPilot;
				public function HRESULT(IDVBSLocator2 *self, Pilot PilotVal) put_SignalPilot;
			}
		}
		[CRepr]
		public struct IDVBCLocator : IDigitalLocator
		{
			public const new Guid IID = .(0x6e42f36e, 0x1dd2, 0x43c4, 0x9f, 0x78, 0x69, 0xd2, 0x5a, 0xe3, 0x90, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDigitalLocator.VTable
			{
			}
		}
		[CRepr]
		public struct IISDBSLocator : IDVBSLocator
		{
			public const new Guid IID = .(0xc9897087, 0xe29c, 0x473f, 0x9e, 0x4b, 0x70, 0x72, 0x12, 0x3d, 0xea, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVBSLocator.VTable
			{
			}
		}
		[CRepr]
		public struct IESOpenMmiEvent : IESEvent
		{
			public const new Guid IID = .(0xba4b6526, 0x1a35, 0x4635, 0x8b, 0x56, 0x3e, 0xc6, 0x12, 0x74, 0x6a, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESOpenMmiEvent *self, uint32* pDialogRequest, uint32* pDialogNumber) GetDialogNumber;
				public function HRESULT(IESOpenMmiEvent *self, Guid* guidDialogType) GetDialogType;
				public function HRESULT(IESOpenMmiEvent *self, SAFEARRAY** pbData) GetDialogData;
				public function HRESULT(IESOpenMmiEvent *self, BSTR* pbstrBaseUrl, BSTR* pbstrData) GetDialogStringData;
			}
		}
		[CRepr]
		public struct IESCloseMmiEvent : IESEvent
		{
			public const new Guid IID = .(0x6b80e96f, 0x55e2, 0x45aa, 0xb7, 0x54, 0x0c, 0x23, 0xc8, 0xe7, 0xd5, 0xc1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESCloseMmiEvent *self, uint32* pDialogNumber) GetDialogNumber;
			}
		}
		[CRepr]
		public struct IESValueUpdatedEvent : IESEvent
		{
			public const new Guid IID = .(0x8a24c46e, 0xbb63, 0x4664, 0x86, 0x02, 0x5d, 0x9c, 0x71, 0x8c, 0x14, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESValueUpdatedEvent *self, SAFEARRAY** pbstrNames) GetValueNames;
			}
		}
		[CRepr]
		public struct IESRequestTunerEvent : IESEvent
		{
			public const new Guid IID = .(0x54c7a5e8, 0xc3bb, 0x4f51, 0xaf, 0x14, 0xe0, 0xe2, 0xc0, 0xe3, 0x4c, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESRequestTunerEvent *self, uint8* pbyPriority) GetPriority;
				public function HRESULT(IESRequestTunerEvent *self, uint8* pbyReason) GetReason;
				public function HRESULT(IESRequestTunerEvent *self, uint8* pbyConsequences) GetConsequences;
				public function HRESULT(IESRequestTunerEvent *self, uint32* pdwEstimatedTime) GetEstimatedTime;
			}
		}
		[CRepr]
		public struct IESIsdbCasResponseEvent : IESEvent
		{
			public const new Guid IID = .(0x2017cb03, 0xdc0f, 0x4c24, 0x83, 0xca, 0x36, 0x30, 0x7b, 0x2c, 0xd1, 0x9f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESIsdbCasResponseEvent *self, uint32* pRequestId) GetRequestId;
				public function HRESULT(IESIsdbCasResponseEvent *self, uint32* pStatus) GetStatus;
				public function HRESULT(IESIsdbCasResponseEvent *self, uint32* pRequestLength) GetDataLength;
				public function HRESULT(IESIsdbCasResponseEvent *self, SAFEARRAY** pbData) GetResponseData;
			}
		}
		[CRepr]
		public struct IGpnvsCommonBase : IUnknown
		{
			public const new Guid IID = .(0x907e0b5c, 0xe42d, 0x4f04, 0x91, 0xf0, 0x26, 0xf4, 0x01, 0xf3, 0x69, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGpnvsCommonBase *self, BSTR* pbstrName) GetValueUpdateName;
			}
		}
		[CRepr]
		public struct IESEventFactory : IUnknown
		{
			public const new Guid IID = .(0x506a09b8, 0x7f86, 0x4e04, 0xac, 0x05, 0x33, 0x03, 0xbf, 0xe8, 0xfc, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IESEventFactory *self, IUnknown* pServiceProvider, uint32 dwEventId, Guid guidEventType, uint32 dwEventDataLength, uint8* pEventData, BSTR bstrBaseUrl, IUnknown* pInitContext, IESEvent** ppESEvent) CreateESEvent;
			}
		}
		[CRepr]
		public struct IESLicenseRenewalResultEvent : IESEvent
		{
			public const new Guid IID = .(0xd5a48ef5, 0xa81b, 0x4df0, 0xac, 0xaa, 0x5e, 0x35, 0xe7, 0xea, 0x45, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESLicenseRenewalResultEvent *self, uint32* pdwCallersId) GetCallersId;
				public function HRESULT(IESLicenseRenewalResultEvent *self, BSTR* pbstrFilename) GetFileName;
				public function HRESULT(IESLicenseRenewalResultEvent *self, BOOL* pfRenewalSuccessful) IsRenewalSuccessful;
				public function HRESULT(IESLicenseRenewalResultEvent *self, BOOL* pfCheckEntTokenCallNeeded) IsCheckEntitlementCallRequired;
				public function HRESULT(IESLicenseRenewalResultEvent *self, uint32* pDescrambledStatus) GetDescrambledStatus;
				public function HRESULT(IESLicenseRenewalResultEvent *self, uint32* pdwRenewalResultCode) GetRenewalResultCode;
				public function HRESULT(IESLicenseRenewalResultEvent *self, uint32* pdwCASFailureCode) GetCASFailureCode;
				public function HRESULT(IESLicenseRenewalResultEvent *self, HRESULT* phr) GetRenewalHResult;
				public function HRESULT(IESLicenseRenewalResultEvent *self, uint32* pdwLength) GetEntitlementTokenLength;
				public function HRESULT(IESLicenseRenewalResultEvent *self, SAFEARRAY** pbData) GetEntitlementToken;
				public function HRESULT(IESLicenseRenewalResultEvent *self, uint64* pqwExpiryDate) GetExpiryDate;
			}
		}
		[CRepr]
		public struct IESFileExpiryDateEvent : IESEvent
		{
			public const new Guid IID = .(0xba9edcb6, 0x4d36, 0x4cfe, 0x8c, 0x56, 0x87, 0xa6, 0xb0, 0xca, 0x48, 0xe1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IESEvent.VTable
			{
				public function HRESULT(IESFileExpiryDateEvent *self, Guid* pguidTunerId) GetTunerId;
				public function HRESULT(IESFileExpiryDateEvent *self, uint64* pqwExpiryDate) GetExpiryDate;
				public function HRESULT(IESFileExpiryDateEvent *self, uint64* pqwExpiryDate) GetFinalExpiryDate;
				public function HRESULT(IESFileExpiryDateEvent *self, uint32* dwMaxRenewalCount) GetMaxRenewalCount;
				public function HRESULT(IESFileExpiryDateEvent *self, BOOL* pfEntTokenPresent) IsEntitlementTokenPresent;
				public function HRESULT(IESFileExpiryDateEvent *self, BOOL* pfExpireAfterFirstUse) DoesExpireAfterFirstUse;
			}
		}
		[CRepr]
		public struct IESEventService : IUnknown
		{
			public const new Guid IID = .(0xed89a619, 0x4c06, 0x4b2f, 0x99, 0xeb, 0xc7, 0x66, 0x9b, 0x13, 0x04, 0x7c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IESEventService *self, IESEvent* pESEvent) FireESEvent;
			}
		}
		[CRepr]
		public struct IESEventServiceConfiguration : IUnknown
		{
			public const new Guid IID = .(0x33b9daae, 0x9309, 0x491d, 0xa0, 0x51, 0xbc, 0xad, 0x2a, 0x70, 0xcd, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IESEventServiceConfiguration *self, IESEventService* pEventService) SetParent;
				public function HRESULT(IESEventServiceConfiguration *self) RemoveParent;
				public function HRESULT(IESEventServiceConfiguration *self, IESEvents* pESEvents) SetOwner;
				public function HRESULT(IESEventServiceConfiguration *self) RemoveOwner;
				public function HRESULT(IESEventServiceConfiguration *self, IFilterGraph* pGraph) SetGraph;
				public function HRESULT(IESEventServiceConfiguration *self, IFilterGraph* pGraph) RemoveGraph;
			}
		}
		[CRepr]
		public struct IRegisterTuner : IUnknown
		{
			public const new Guid IID = .(0x359b3901, 0x572c, 0x4854, 0xbb, 0x49, 0xcd, 0xef, 0x66, 0x60, 0x6a, 0x25);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRegisterTuner *self, ITuner* pTuner, IGraphBuilder* pGraph) Register;
				public function HRESULT(IRegisterTuner *self) Unregister;
			}
		}
		[CRepr]
		public struct IBDAComparable : IUnknown
		{
			public const new Guid IID = .(0xb34505e0, 0x2f0e, 0x497b, 0x80, 0xbc, 0xd4, 0x3f, 0x3b, 0x24, 0xed, 0x7f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDAComparable *self, IDispatch* CompareTo, int32* Result) CompareExact;
				public function HRESULT(IBDAComparable *self, IDispatch* CompareTo, uint32 dwFlags, int32* Result) CompareEquivalent;
				public function HRESULT(IBDAComparable *self, int64* Result) HashExact;
				public function HRESULT(IBDAComparable *self, int64 PartialResult, int64* Result) HashExactIncremental;
				public function HRESULT(IBDAComparable *self, uint32 dwFlags, int64* Result) HashEquivalent;
				public function HRESULT(IBDAComparable *self, int64 PartialResult, uint32 dwFlags, int64* Result) HashEquivalentIncremental;
			}
		}
		[CRepr]
		public struct IPersistTuneXml : IPersist
		{
			public const new Guid IID = .(0x0754cd31, 0x8d15, 0x47a9, 0x82, 0x15, 0xd2, 0x00, 0x64, 0x15, 0x72, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IPersistTuneXml *self) InitNew;
				public function HRESULT(IPersistTuneXml *self, VARIANT varValue) Load;
				public function HRESULT(IPersistTuneXml *self, VARIANT* pvarFragment) Save;
			}
		}
		[CRepr]
		public struct IPersistTuneXmlUtility : IUnknown
		{
			public const new Guid IID = .(0x990237ae, 0xac11, 0x4614, 0xbe, 0x8f, 0xdd, 0x21, 0x7a, 0x4c, 0xb4, 0xcb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPersistTuneXmlUtility *self, VARIANT varValue, IUnknown** ppObject) Deserialize;
			}
		}
		[CRepr]
		public struct IPersistTuneXmlUtility2 : IPersistTuneXmlUtility
		{
			public const new Guid IID = .(0x992e165f, 0xea24, 0x4b2f, 0x9a, 0x1d, 0x00, 0x9d, 0x92, 0x12, 0x04, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersistTuneXmlUtility.VTable
			{
				public function HRESULT(IPersistTuneXmlUtility2 *self, ITuneRequest* piTuneRequest, BSTR* pString) Serialize;
			}
		}
		[CRepr]
		public struct IBDACreateTuneRequestEx : IUnknown
		{
			public const new Guid IID = .(0xc0a4a1d4, 0x2b3c, 0x491a, 0xba, 0x22, 0x49, 0x9f, 0xba, 0xdd, 0x4d, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDACreateTuneRequestEx *self, Guid* TuneRequestIID, ITuneRequest** TuneRequest) CreateTuneRequestEx;
			}
		}
		[CRepr]
		public struct IETFilterConfig : IUnknown
		{
			public const new Guid IID = .(0xc4c4c4d1, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IETFilterConfig *self, int32 LicenseId) InitLicense;
				public function HRESULT(IETFilterConfig *self, IUnknown** ppUnkDRMSecureChannel) GetSecureChannelObject;
			}
		}
		[CRepr]
		public struct IDTFilterConfig : IUnknown
		{
			public const new Guid IID = .(0xc4c4c4d2, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDTFilterConfig *self, IUnknown** ppUnkDRMSecureChannel) GetSecureChannelObject;
			}
		}
		[CRepr]
		public struct IXDSCodecConfig : IUnknown
		{
			public const new Guid IID = .(0xc4c4c4d3, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXDSCodecConfig *self, IUnknown** ppUnkDRMSecureChannel) GetSecureChannelObject;
				public function HRESULT(IXDSCodecConfig *self, uint32 dwPauseBufferTime) SetPauseBufferTime;
			}
		}
		[CRepr]
		public struct IDTFilterLicenseRenewal : IUnknown
		{
			public const new Guid IID = .(0x8a78b317, 0xe405, 0x4a43, 0x99, 0x4a, 0x62, 0x0d, 0x8f, 0x5c, 0xe2, 0x5e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDTFilterLicenseRenewal *self, PWSTR* ppwszFileName, PWSTR* ppwszExpiredKid, PWSTR* ppwszTunerId) GetLicenseRenewalData;
			}
		}
		[CRepr]
		public struct IPTFilterLicenseRenewal : IUnknown
		{
			public const new Guid IID = .(0x26d836a5, 0x0c15, 0x44c7, 0xac, 0x59, 0xb0, 0xda, 0x87, 0x28, 0xf2, 0x40);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPTFilterLicenseRenewal *self, PWSTR wszFileName, PWSTR wszExpiredKid, uint32 dwCallersId, BOOL bHighPriority) RenewLicenses;
				public function HRESULT(IPTFilterLicenseRenewal *self) CancelLicenseRenewal;
			}
		}
		[CRepr]
		public struct IMceBurnerControl : IUnknown
		{
			public const new Guid IID = .(0x5a86b91a, 0xe71e, 0x46c1, 0x88, 0xa9, 0x9b, 0xb3, 0x38, 0x71, 0x05, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMceBurnerControl *self) GetBurnerNoDecryption;
			}
		}
		[CRepr]
		public struct IETFilter : IUnknown
		{
			public const new Guid IID = .(0xc4c4c4b1, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IETFilter *self, HRESULT* pHrCoCreateRetVal) get_EvalRatObjOK;
				public function HRESULT(IETFilter *self, EnTvRat_System* pEnSystem, EnTvRat_GenericLevel* pEnRating, int32* plbfEnAttr) GetCurrRating;
				public function HRESULT(IETFilter *self, ProtType* protType, int32* lpDateTime) GetCurrLicenseExpDate;
				public function HRESULT(IETFilter *self) GetLastErrorCode;
				public function HRESULT(IETFilter *self, BOOL fRecState) SetRecordingOn;
			}
		}
		[CRepr]
		public struct IETFilterEvents : IDispatch
		{
			public const new Guid IID = .(0xc4c4c4c1, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IDTFilter : IUnknown
		{
			public const new Guid IID = .(0xc4c4c4b2, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDTFilter *self, HRESULT* pHrCoCreateRetVal) get_EvalRatObjOK;
				public function HRESULT(IDTFilter *self, EnTvRat_System* pEnSystem, EnTvRat_GenericLevel* pEnRating, int32* plbfEnAttr) GetCurrRating;
				public function HRESULT(IDTFilter *self, EnTvRat_System enSystem, EnTvRat_GenericLevel enLevel, int32* plbfEnAttr) get_BlockedRatingAttributes;
				public function HRESULT(IDTFilter *self, EnTvRat_System enSystem, EnTvRat_GenericLevel enLevel, int32 lbfAttrs) put_BlockedRatingAttributes;
				public function HRESULT(IDTFilter *self, BOOL* pfBlockUnRatedShows) get_BlockUnRated;
				public function HRESULT(IDTFilter *self, BOOL fBlockUnRatedShows) put_BlockUnRated;
				public function HRESULT(IDTFilter *self, int32* pmsecsDelayBeforeBlock) get_BlockUnRatedDelay;
				public function HRESULT(IDTFilter *self, int32 msecsDelayBeforeBlock) put_BlockUnRatedDelay;
			}
		}
		[CRepr]
		public struct IDTFilter2 : IDTFilter
		{
			public const new Guid IID = .(0xc4c4c4b4, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDTFilter.VTable
			{
				public function HRESULT(IDTFilter2 *self, BSTR* pbstrChallengeUrl) get_ChallengeUrl;
				public function HRESULT(IDTFilter2 *self, ProtType* protType, int32* lpDateTime) GetCurrLicenseExpDate;
				public function HRESULT(IDTFilter2 *self) GetLastErrorCode;
			}
		}
		[CRepr]
		public struct IDTFilter3 : IDTFilter2
		{
			public const new Guid IID = .(0x513998cc, 0xe929, 0x4cdf, 0x9f, 0xbd, 0xba, 0xd1, 0xe0, 0x31, 0x48, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDTFilter2.VTable
			{
				public function HRESULT(IDTFilter3 *self, ProtType* pProtectionType) GetProtectionType;
				public function HRESULT(IDTFilter3 *self, BOOL* pfLicenseHasExpirationDate) LicenseHasExpirationDate;
				public function HRESULT(IDTFilter3 *self, BSTR bstrRights) SetRights;
			}
		}
		[CRepr]
		public struct IDTFilterEvents : IDispatch
		{
			public const new Guid IID = .(0xc4c4c4c2, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IXDSCodec : IUnknown
		{
			public const new Guid IID = .(0xc4c4c4b3, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXDSCodec *self, HRESULT* pHrCoCreateRetVal) get_XDSToRatObjOK;
				public function HRESULT(IXDSCodec *self, int32 SubstreamMask) put_CCSubstreamService;
				public function HRESULT(IXDSCodec *self, int32* pSubstreamMask) get_CCSubstreamService;
				public function HRESULT(IXDSCodec *self, int32* pRat, int32* pPktSeqID, int32* pCallSeqID, int64* pTimeStart, int64* pTimeEnd) GetContentAdvisoryRating;
				public function HRESULT(IXDSCodec *self, int32* pXDSClassPkt, int32* pXDSTypePkt, BSTR* pBstrXDSPkt, int32* pPktSeqID, int32* pCallSeqID, int64* pTimeStart, int64* pTimeEnd) GetXDSPacket;
				public function HRESULT(IXDSCodec *self, ProtType* protType, int32* lpDateTime) GetCurrLicenseExpDate;
				public function HRESULT(IXDSCodec *self) GetLastErrorCode;
			}
		}
		[CRepr]
		public struct IXDSCodecEvents : IDispatch
		{
			public const new Guid IID = .(0xc4c4c4c3, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IXDSToRat : IDispatch
		{
			public const new Guid IID = .(0xc5c5c5b0, 0x3abc, 0x11d6, 0xb2, 0x5b, 0x00, 0xc0, 0x4f, 0xa0, 0xc0, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IXDSToRat *self) Init;
				public function HRESULT(IXDSToRat *self, uint8 byte1, uint8 byte2, EnTvRat_System* pEnSystem, EnTvRat_GenericLevel* pEnLevel, int32* plBfEnAttributes) ParseXDSBytePair;
			}
		}
		[CRepr]
		public struct IEvalRat : IDispatch
		{
			public const new Guid IID = .(0xc5c5c5b1, 0x3abc, 0x11d6, 0xb2, 0x5b, 0x00, 0xc0, 0x4f, 0xa0, 0xc0, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IEvalRat *self, EnTvRat_System enSystem, EnTvRat_GenericLevel enLevel, int32* plbfAttrs) get_BlockedRatingAttributes;
				public function HRESULT(IEvalRat *self, EnTvRat_System enSystem, EnTvRat_GenericLevel enLevel, int32 lbfAttrs) put_BlockedRatingAttributes;
				public function HRESULT(IEvalRat *self, BOOL* pfBlockUnRatedShows) get_BlockUnRated;
				public function HRESULT(IEvalRat *self, BOOL fBlockUnRatedShows) put_BlockUnRated;
				public function HRESULT(IEvalRat *self, EnTvRat_System enSystem1, EnTvRat_GenericLevel enEnLevel1, int32 lbfEnAttr1, EnTvRat_System enSystem2, EnTvRat_GenericLevel enEnLevel2, int32 lbfEnAttr2, EnTvRat_System* penSystem, EnTvRat_GenericLevel* penEnLevel, int32* plbfEnAttr) MostRestrictiveRating;
				public function HRESULT(IEvalRat *self, EnTvRat_System enShowSystem, EnTvRat_GenericLevel enShowLevel, int32 lbfEnShowAttributes) TestRating;
			}
		}
		[CRepr]
		public struct IMSVidRect : IDispatch
		{
			public const new Guid IID = .(0x7f5000a6, 0xa440, 0x47ca, 0x8a, 0xcc, 0xc0, 0xe7, 0x55, 0x31, 0xa2, 0xc2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidRect *self, int32* TopVal) get_Top;
				public function HRESULT(IMSVidRect *self, int32 TopVal) put_Top;
				public function HRESULT(IMSVidRect *self, int32* LeftVal) get_Left;
				public function HRESULT(IMSVidRect *self, int32 LeftVal) put_Left;
				public function HRESULT(IMSVidRect *self, int32* WidthVal) get_Width;
				public function HRESULT(IMSVidRect *self, int32 WidthVal) put_Width;
				public function HRESULT(IMSVidRect *self, int32* HeightVal) get_Height;
				public function HRESULT(IMSVidRect *self, int32 HeightVal) put_Height;
				public function HRESULT(IMSVidRect *self, HWND* HWndVal) get_HWnd;
				public function HRESULT(IMSVidRect *self, HWND HWndVal) put_HWnd;
				public function HRESULT(IMSVidRect *self, IMSVidRect* RectVal) put_Rect;
			}
		}
		[CRepr]
		public struct IMSVidGraphSegmentContainer : IUnknown
		{
			public const new Guid IID = .(0x3dd2903d, 0xe0aa, 0x11d2, 0xb6, 0x3a, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMSVidGraphSegmentContainer *self, IGraphBuilder** ppGraph) get_Graph;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IMSVidGraphSegment** ppInput) get_Input;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IEnumMSVidGraphSegment** ppOutputs) get_Outputs;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IMSVidGraphSegment** ppVR) get_VideoRenderer;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IMSVidGraphSegment** ppAR) get_AudioRenderer;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IEnumMSVidGraphSegment** ppFeatures) get_Features;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IEnumMSVidGraphSegment** ppComposites) get_Composites;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IUnknown** ppContainer) get_ParentContainer;
				public function HRESULT(IMSVidGraphSegmentContainer *self, IMSVidGraphSegment* pSegment) Decompose;
				public function HRESULT(IMSVidGraphSegmentContainer *self) IsWindowless;
				public function HRESULT(IMSVidGraphSegmentContainer *self) GetFocus;
			}
		}
		[CRepr]
		public struct IMSVidGraphSegment : IPersist
		{
			public const new Guid IID = .(0x238dec54, 0xadeb, 0x4005, 0xa3, 0x49, 0xf7, 0x72, 0xb9, 0xaf, 0xeb, 0xc4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IMSVidGraphSegment *self, IUnknown** pInit) get_Init;
				public function HRESULT(IMSVidGraphSegment *self, IUnknown* pInit) put_Init;
				public function HRESULT(IMSVidGraphSegment *self, IEnumFilters** pNewEnum) EnumFilters;
				public function HRESULT(IMSVidGraphSegment *self, IMSVidGraphSegmentContainer** ppCtl) get_Container;
				public function HRESULT(IMSVidGraphSegment *self, IMSVidGraphSegmentContainer* pCtl) put_Container;
				public function HRESULT(IMSVidGraphSegment *self, MSVidSegmentType* pType) get_Type;
				public function HRESULT(IMSVidGraphSegment *self, Guid* pGuid) get_Category;
				public function HRESULT(IMSVidGraphSegment *self) Build;
				public function HRESULT(IMSVidGraphSegment *self) PostBuild;
				public function HRESULT(IMSVidGraphSegment *self) PreRun;
				public function HRESULT(IMSVidGraphSegment *self) PostRun;
				public function HRESULT(IMSVidGraphSegment *self) PreStop;
				public function HRESULT(IMSVidGraphSegment *self) PostStop;
				public function HRESULT(IMSVidGraphSegment *self, int32 lEventCode, int lEventParm1, int lEventParm2) OnEventNotify;
				public function HRESULT(IMSVidGraphSegment *self) Decompose;
			}
		}
		[CRepr]
		public struct IMSVidGraphSegmentUserInput : IUnknown
		{
			public const new Guid IID = .(0x301c060e, 0x20d9, 0x4587, 0x9b, 0x03, 0xf8, 0x2e, 0xd9, 0xa9, 0x94, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMSVidGraphSegmentUserInput *self) Click;
				public function HRESULT(IMSVidGraphSegmentUserInput *self) DblClick;
				public function HRESULT(IMSVidGraphSegmentUserInput *self, int16* KeyCode, int16 ShiftState) KeyDown;
				public function HRESULT(IMSVidGraphSegmentUserInput *self, int16* KeyAscii) KeyPress;
				public function HRESULT(IMSVidGraphSegmentUserInput *self, int16* KeyCode, int16 ShiftState) KeyUp;
				public function HRESULT(IMSVidGraphSegmentUserInput *self, int16 ButtonState, int16 ShiftState, int32 x, int32 y) MouseDown;
				public function HRESULT(IMSVidGraphSegmentUserInput *self, int16 ButtonState, int16 ShiftState, int32 x, int32 y) MouseMove;
				public function HRESULT(IMSVidGraphSegmentUserInput *self, int16 ButtonState, int16 ShiftState, int32 x, int32 y) MouseUp;
			}
		}
		[CRepr]
		public struct IMSVidCompositionSegment : IMSVidGraphSegment
		{
			public const new Guid IID = .(0x1c15d483, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidGraphSegment.VTable
			{
				public function HRESULT(IMSVidCompositionSegment *self, IMSVidGraphSegment* upstream, IMSVidGraphSegment* downstream) Compose;
				public function HRESULT(IMSVidCompositionSegment *self, IMSVidGraphSegment** upstream) get_Up;
				public function HRESULT(IMSVidCompositionSegment *self, IMSVidGraphSegment** downstream) get_Down;
			}
		}
		[CRepr]
		public struct IEnumMSVidGraphSegment : IUnknown
		{
			public const new Guid IID = .(0x3dd2903e, 0xe0aa, 0x11d2, 0xb6, 0x3a, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumMSVidGraphSegment *self, uint32 celt, IMSVidGraphSegment** rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumMSVidGraphSegment *self, uint32 celt) Skip;
				public function HRESULT(IEnumMSVidGraphSegment *self) Reset;
				public function HRESULT(IEnumMSVidGraphSegment *self, IEnumMSVidGraphSegment** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IMSVidVRGraphSegment : IMSVidGraphSegment
		{
			public const new Guid IID = .(0xdd47de3f, 0x9874, 0x4f7b, 0x8b, 0x22, 0x7c, 0xb2, 0x68, 0x84, 0x61, 0xe7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidGraphSegment.VTable
			{
				public function HRESULT(IMSVidVRGraphSegment *self, int32 dwMode) put__VMRendererMode;
				public function HRESULT(IMSVidVRGraphSegment *self, HWND Window) put_Owner;
				public function HRESULT(IMSVidVRGraphSegment *self, HWND* Window) get_Owner;
				public function HRESULT(IMSVidVRGraphSegment *self, int16* UseOverlayVal) get_UseOverlay;
				public function HRESULT(IMSVidVRGraphSegment *self, int16 UseOverlayVal) put_UseOverlay;
				public function HRESULT(IMSVidVRGraphSegment *self, int16* Visible) get_Visible;
				public function HRESULT(IMSVidVRGraphSegment *self, int16 Visible) put_Visible;
				public function HRESULT(IMSVidVRGraphSegment *self, uint32* ColorKey) get_ColorKey;
				public function HRESULT(IMSVidVRGraphSegment *self, uint32 ColorKey) put_ColorKey;
				public function HRESULT(IMSVidVRGraphSegment *self, RECT* r) get_Source;
				public function HRESULT(IMSVidVRGraphSegment *self, RECT r) put_Source;
				public function HRESULT(IMSVidVRGraphSegment *self, RECT* r) get_Destination;
				public function HRESULT(IMSVidVRGraphSegment *self, RECT r) put_Destination;
				public function HRESULT(IMSVidVRGraphSegment *self, SIZE* sizeval, SIZE* aspectratio) get_NativeSize;
				public function HRESULT(IMSVidVRGraphSegment *self, uint32* color) get_BorderColor;
				public function HRESULT(IMSVidVRGraphSegment *self, uint32 color) put_BorderColor;
				public function HRESULT(IMSVidVRGraphSegment *self, int16* fMaintain) get_MaintainAspectRatio;
				public function HRESULT(IMSVidVRGraphSegment *self, int16 fMaintain) put_MaintainAspectRatio;
				public function HRESULT(IMSVidVRGraphSegment *self) Refresh;
				public function HRESULT(IMSVidVRGraphSegment *self) DisplayChange;
				public function HRESULT(IMSVidVRGraphSegment *self, HDC hdc) RePaint;
			}
		}
		[CRepr]
		public struct IMSVidDevice : IDispatch
		{
			public const new Guid IID = .(0x1c15d47c, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidDevice *self, BSTR* Name) get_Name;
				public function HRESULT(IMSVidDevice *self, int32* Status) get_Status;
				public function HRESULT(IMSVidDevice *self, int16 Power) put_Power;
				public function HRESULT(IMSVidDevice *self, int16* Power) get_Power;
				public function HRESULT(IMSVidDevice *self, BSTR* Guid) get_Category;
				public function HRESULT(IMSVidDevice *self, BSTR* Clsid) get_ClassID;
				public function HRESULT(IMSVidDevice *self, Guid* Guid) get__Category;
				public function HRESULT(IMSVidDevice *self, Guid* Clsid) get__ClassID;
				public function HRESULT(IMSVidDevice *self, IMSVidDevice* Device, int16* IsEqual) IsEqualDevice;
			}
		}
		[CRepr]
		public struct IMSVidDevice2 : IUnknown
		{
			public const new Guid IID = .(0x87bd2783, 0xebc0, 0x478c, 0xb4, 0xa0, 0xe8, 0xe7, 0xf4, 0x3a, 0xb7, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMSVidDevice2 *self, BSTR* DevPath) get_DevicePath;
			}
		}
		[CRepr]
		public struct IMSVidInputDevice : IMSVidDevice
		{
			public const new Guid IID = .(0x37b0353d, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidDevice.VTable
			{
				public function HRESULT(IMSVidInputDevice *self, VARIANT* v, int16* pfViewable) IsViewable;
				public function HRESULT(IMSVidInputDevice *self, VARIANT* v) View;
			}
		}
		[CRepr]
		public struct IMSVidDeviceEvent : IDispatch
		{
			public const new Guid IID = .(0x1c15d480, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidDeviceEvent *self, IMSVidDevice* lpd, int32 oldState, int32 newState) StateChange;
			}
		}
		[CRepr]
		public struct IMSVidInputDeviceEvent : IDispatch
		{
			public const new Guid IID = .(0x37b0353e, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidVideoInputDevice : IMSVidInputDevice
		{
			public const new Guid IID = .(0x1c15d47f, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidInputDevice.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidPlayback : IMSVidInputDevice
		{
			public const new Guid IID = .(0x37b03538, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidInputDevice.VTable
			{
				public function HRESULT(IMSVidPlayback *self, int16* pVal) get_EnableResetOnStop;
				public function HRESULT(IMSVidPlayback *self, int16 newVal) put_EnableResetOnStop;
				public function HRESULT(IMSVidPlayback *self) Run;
				public function HRESULT(IMSVidPlayback *self) Pause;
				public function HRESULT(IMSVidPlayback *self) Stop;
				public function HRESULT(IMSVidPlayback *self, int16 fBackwards, int16* pfCan) get_CanStep;
				public function HRESULT(IMSVidPlayback *self, int32 lStep) Step;
				public function HRESULT(IMSVidPlayback *self, double plRate) put_Rate;
				public function HRESULT(IMSVidPlayback *self, double* plRate) get_Rate;
				public function HRESULT(IMSVidPlayback *self, int32 lPosition) put_CurrentPosition;
				public function HRESULT(IMSVidPlayback *self, int32* lPosition) get_CurrentPosition;
				public function HRESULT(IMSVidPlayback *self, PositionModeList lPositionMode) put_PositionMode;
				public function HRESULT(IMSVidPlayback *self, PositionModeList* lPositionMode) get_PositionMode;
				public function HRESULT(IMSVidPlayback *self, int32* lLength) get_Length;
			}
		}
		[CRepr]
		public struct IMSVidPlaybackEvent : IMSVidInputDeviceEvent
		{
			public const new Guid IID = .(0x37b0353b, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidInputDeviceEvent.VTable
			{
				public function HRESULT(IMSVidPlaybackEvent *self, IMSVidPlayback* lpd) EndOfMedia;
			}
		}
		[CRepr]
		public struct IMSVidTuner : IMSVidVideoInputDevice
		{
			public const new Guid IID = .(0x1c15d47d, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidVideoInputDevice.VTable
			{
				public function HRESULT(IMSVidTuner *self, ITuneRequest** ppTR) get_Tune;
				public function HRESULT(IMSVidTuner *self, ITuneRequest* pTR) put_Tune;
				public function HRESULT(IMSVidTuner *self, ITuningSpace** plTS) get_TuningSpace;
				public function HRESULT(IMSVidTuner *self, ITuningSpace* plTS) put_TuningSpace;
			}
		}
		[CRepr]
		public struct IMSVidTunerEvent : IMSVidInputDeviceEvent
		{
			public const new Guid IID = .(0x1c15d485, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidInputDeviceEvent.VTable
			{
				public function HRESULT(IMSVidTunerEvent *self, IMSVidTuner* lpd) TuneChanged;
			}
		}
		[CRepr]
		public struct IMSVidAnalogTuner : IMSVidTuner
		{
			public const new Guid IID = .(0x1c15d47e, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidTuner.VTable
			{
				public function HRESULT(IMSVidAnalogTuner *self, int32* Channel) get_Channel;
				public function HRESULT(IMSVidAnalogTuner *self, int32 Channel) put_Channel;
				public function HRESULT(IMSVidAnalogTuner *self, int32* lcc) get_VideoFrequency;
				public function HRESULT(IMSVidAnalogTuner *self, int32* lcc) get_AudioFrequency;
				public function HRESULT(IMSVidAnalogTuner *self, int32* lcc) get_CountryCode;
				public function HRESULT(IMSVidAnalogTuner *self, int32 lcc) put_CountryCode;
				public function HRESULT(IMSVidAnalogTuner *self, int16* pfSapOn) get_SAP;
				public function HRESULT(IMSVidAnalogTuner *self, int16 fSapOn) put_SAP;
				public function HRESULT(IMSVidAnalogTuner *self, int32 nChannel, int32* SignalStrength, int16* fSignalPresent) ChannelAvailable;
			}
		}
		[CRepr]
		public struct IMSVidAnalogTuner2 : IMSVidAnalogTuner
		{
			public const new Guid IID = .(0x37647bf7, 0x3dde, 0x4cc8, 0xa4, 0xdc, 0x0d, 0x53, 0x4d, 0x3d, 0x00, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidAnalogTuner.VTable
			{
				public function HRESULT(IMSVidAnalogTuner2 *self, int32* Formats) get_TVFormats;
				public function HRESULT(IMSVidAnalogTuner2 *self, int32* Modes) get_TunerModes;
				public function HRESULT(IMSVidAnalogTuner2 *self, int32* Inputs) get_NumAuxInputs;
			}
		}
		[CRepr]
		public struct IMSVidAnalogTunerEvent : IMSVidTunerEvent
		{
			public const new Guid IID = .(0x1c15d486, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidTunerEvent.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidFilePlayback : IMSVidPlayback
		{
			public const new Guid IID = .(0x37b03539, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidPlayback.VTable
			{
				public function HRESULT(IMSVidFilePlayback *self, BSTR* FileName) get_FileName;
				public function HRESULT(IMSVidFilePlayback *self, BSTR FileName) put_FileName;
			}
		}
		[CRepr]
		public struct IMSVidFilePlayback2 : IMSVidFilePlayback
		{
			public const new Guid IID = .(0x2f7e44af, 0x6e52, 0x4660, 0xbc, 0x08, 0xd8, 0xd5, 0x42, 0x58, 0x7d, 0x72);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFilePlayback.VTable
			{
				public function HRESULT(IMSVidFilePlayback2 *self, BSTR FileName) put__SourceFilter;
				public function HRESULT(IMSVidFilePlayback2 *self, Guid FileName) put___SourceFilter;
			}
		}
		[CRepr]
		public struct IMSVidFilePlaybackEvent : IMSVidPlaybackEvent
		{
			public const new Guid IID = .(0x37b0353a, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidPlaybackEvent.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidWebDVD : IMSVidPlayback
		{
			public const new Guid IID = .(0xcf45f88b, 0xac56, 0x4ee2, 0xa7, 0x3a, 0xed, 0x04, 0xe2, 0x88, 0x5d, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidPlayback.VTable
			{
				public function HRESULT(IMSVidWebDVD *self, int32 lEvent, int lParam1, int lParam2) OnDVDEvent;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle) PlayTitle;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle, int32 lChapter) PlayChapterInTitle;
				public function HRESULT(IMSVidWebDVD *self, int32 lChapter) PlayChapter;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle, int32 lstrChapter, int32 lChapterCount) PlayChaptersAutoStop;
				public function HRESULT(IMSVidWebDVD *self, BSTR strTime) PlayAtTime;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle, BSTR strTime) PlayAtTimeInTitle;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle, BSTR strStartTime, BSTR strEndTime) PlayPeriodInTitleAutoStop;
				public function HRESULT(IMSVidWebDVD *self) ReplayChapter;
				public function HRESULT(IMSVidWebDVD *self) PlayPrevChapter;
				public function HRESULT(IMSVidWebDVD *self) PlayNextChapter;
				public function HRESULT(IMSVidWebDVD *self) StillOff;
				public function HRESULT(IMSVidWebDVD *self, int32 lStream, int16 fFormat, BSTR* strAudioLang) get_AudioLanguage;
				public function HRESULT(IMSVidWebDVD *self, DVDMenuIDConstants MenuID) ShowMenu;
				public function HRESULT(IMSVidWebDVD *self) Resume;
				public function HRESULT(IMSVidWebDVD *self) ReturnFromSubmenu;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_ButtonsAvailable;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentButton;
				public function HRESULT(IMSVidWebDVD *self, int32 lButton) SelectAndActivateButton;
				public function HRESULT(IMSVidWebDVD *self) ActivateButton;
				public function HRESULT(IMSVidWebDVD *self) SelectRightButton;
				public function HRESULT(IMSVidWebDVD *self) SelectLeftButton;
				public function HRESULT(IMSVidWebDVD *self) SelectLowerButton;
				public function HRESULT(IMSVidWebDVD *self) SelectUpperButton;
				public function HRESULT(IMSVidWebDVD *self, int32 xPos, int32 yPos) ActivateAtPosition;
				public function HRESULT(IMSVidWebDVD *self, int32 xPos, int32 yPos) SelectAtPosition;
				public function HRESULT(IMSVidWebDVD *self, int32 xPos, int32 yPos, int32* plButton) get_ButtonAtPosition;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle, int32* pVal) get_NumberOfChapters;
				public function HRESULT(IMSVidWebDVD *self, BSTR* pVal) get_TotalTitleTime;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_TitlesAvailable;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_VolumesAvailable;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentVolume;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentDiscSide;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentDomain;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentChapter;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentTitle;
				public function HRESULT(IMSVidWebDVD *self, BSTR* pVal) get_CurrentTime;
				public function HRESULT(IMSVidWebDVD *self, int32 timeCode, BSTR* pTimeStr) DVDTimeCode2bstr;
				public function HRESULT(IMSVidWebDVD *self, BSTR* pVal) get_DVDDirectory;
				public function HRESULT(IMSVidWebDVD *self, BSTR newVal) put_DVDDirectory;
				public function HRESULT(IMSVidWebDVD *self, int32 lstream, int16* fEnabled) IsSubpictureStreamEnabled;
				public function HRESULT(IMSVidWebDVD *self, int32 lstream, int16* fEnabled) IsAudioStreamEnabled;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentSubpictureStream;
				public function HRESULT(IMSVidWebDVD *self, int32 newVal) put_CurrentSubpictureStream;
				public function HRESULT(IMSVidWebDVD *self, int32 lStream, BSTR* strLanguage) get_SubpictureLanguage;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentAudioStream;
				public function HRESULT(IMSVidWebDVD *self, int32 newVal) put_CurrentAudioStream;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_AudioStreamsAvailable;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_AnglesAvailable;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_CurrentAngle;
				public function HRESULT(IMSVidWebDVD *self, int32 newVal) put_CurrentAngle;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_SubpictureStreamsAvailable;
				public function HRESULT(IMSVidWebDVD *self, int16* pVal) get_SubpictureOn;
				public function HRESULT(IMSVidWebDVD *self, int16 newVal) put_SubpictureOn;
				public function HRESULT(IMSVidWebDVD *self, BSTR* pVal) get_DVDUniqueID;
				public function HRESULT(IMSVidWebDVD *self, int16 fAccept, BSTR strUserName, BSTR strPassword) AcceptParentalLevelChange;
				public function HRESULT(IMSVidWebDVD *self, int16 newVal) NotifyParentalLevelChange;
				public function HRESULT(IMSVidWebDVD *self, int32 lCountry, BSTR strUserName, BSTR strPassword) SelectParentalCountry;
				public function HRESULT(IMSVidWebDVD *self, int32 lParentalLevel, BSTR strUserName, BSTR strPassword) SelectParentalLevel;
				public function HRESULT(IMSVidWebDVD *self, int32 lTitle, int32* plParentalLevels) get_TitleParentalLevels;
				public function HRESULT(IMSVidWebDVD *self, int32* plCountryCode) get_PlayerParentalCountry;
				public function HRESULT(IMSVidWebDVD *self, int32* plParentalLevel) get_PlayerParentalLevel;
				public function HRESULT(IMSVidWebDVD *self) Eject;
				public function HRESULT(IMSVidWebDVD *self, int32 lUOP, int16* pfValid) UOPValid;
				public function HRESULT(IMSVidWebDVD *self, int32 lIndex, int16* psSPRM) get_SPRM;
				public function HRESULT(IMSVidWebDVD *self, int32 lIndex, int16* psSPRM) get_GPRM;
				public function HRESULT(IMSVidWebDVD *self, int32 lIndex, int16 sValue) put_GPRM;
				public function HRESULT(IMSVidWebDVD *self, int32 lLangIndex, int32 lStringIndex, DVDTextStringType* pType) get_DVDTextStringType;
				public function HRESULT(IMSVidWebDVD *self, int32 lLangIndex, int32 lStringIndex, BSTR* pstrText) get_DVDTextString;
				public function HRESULT(IMSVidWebDVD *self, int32 lLangIndex, int32* plNumOfStrings) get_DVDTextNumberOfStrings;
				public function HRESULT(IMSVidWebDVD *self, int32* plNumOfLangs) get_DVDTextNumberOfLanguages;
				public function HRESULT(IMSVidWebDVD *self, int32 lLangIndex, int32* lcid) get_DVDTextLanguageLCID;
				public function HRESULT(IMSVidWebDVD *self) RegionChange;
				public function HRESULT(IMSVidWebDVD *self, IDispatch** pVal) get_DVDAdm;
				public function HRESULT(IMSVidWebDVD *self) DeleteBookmark;
				public function HRESULT(IMSVidWebDVD *self) RestoreBookmark;
				public function HRESULT(IMSVidWebDVD *self) SaveBookmark;
				public function HRESULT(IMSVidWebDVD *self, int32 lang, int32 ext) SelectDefaultAudioLanguage;
				public function HRESULT(IMSVidWebDVD *self, int32 lang, DVDSPExt ext) SelectDefaultSubpictureLanguage;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_PreferredSubpictureStream;
				public function HRESULT(IMSVidWebDVD *self, int32* lang) get_DefaultMenuLanguage;
				public function HRESULT(IMSVidWebDVD *self, int32 lang) put_DefaultMenuLanguage;
				public function HRESULT(IMSVidWebDVD *self, int32* lang) get_DefaultSubpictureLanguage;
				public function HRESULT(IMSVidWebDVD *self, int32* lang) get_DefaultAudioLanguage;
				public function HRESULT(IMSVidWebDVD *self, DVDSPExt* ext) get_DefaultSubpictureLanguageExt;
				public function HRESULT(IMSVidWebDVD *self, int32* ext) get_DefaultAudioLanguageExt;
				public function HRESULT(IMSVidWebDVD *self, int32 lcid, BSTR* lang) get_LanguageFromLCID;
				public function HRESULT(IMSVidWebDVD *self, int32* pVal) get_KaraokeAudioPresentationMode;
				public function HRESULT(IMSVidWebDVD *self, int32 newVal) put_KaraokeAudioPresentationMode;
				public function HRESULT(IMSVidWebDVD *self, int32 lStream, int32 lChan, int32* lContent) get_KaraokeChannelContent;
				public function HRESULT(IMSVidWebDVD *self, int32 lStream, int32* lChannelAssignment) get_KaraokeChannelAssignment;
				public function HRESULT(IMSVidWebDVD *self) RestorePreferredSettings;
				public function HRESULT(IMSVidWebDVD *self, int32 lButton, IMSVidRect** pRect) get_ButtonRect;
				public function HRESULT(IMSVidWebDVD *self, IMSVidRect** ppRect) get_DVDScreenInMouseCoordinates;
				public function HRESULT(IMSVidWebDVD *self, IMSVidRect* pRect) put_DVDScreenInMouseCoordinates;
			}
		}
		[CRepr]
		public struct IMSVidWebDVD2 : IMSVidWebDVD
		{
			public const new Guid IID = .(0x7027212f, 0xee9a, 0x4a7c, 0x8b, 0x67, 0xf0, 0x23, 0x71, 0x4c, 0xda, 0xff);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidWebDVD.VTable
			{
				public function HRESULT(IMSVidWebDVD2 *self, uint8** ppData, uint32* pDataLength) get_Bookmark;
				public function HRESULT(IMSVidWebDVD2 *self, uint8* pData, uint32 dwDataLength) put_Bookmark;
			}
		}
		[CRepr]
		public struct IMSVidWebDVDEvent : IMSVidPlaybackEvent
		{
			public const new Guid IID = .(0xb4f7a674, 0x9b83, 0x49cb, 0xa3, 0x57, 0xc6, 0x3b, 0x87, 0x1b, 0xe9, 0x58);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidPlaybackEvent.VTable
			{
				public function HRESULT(IMSVidWebDVDEvent *self, int32 lEventCode, VARIANT lParam1, VARIANT lParam2) DVDNotify;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayForwards;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayBackwards;
				public function HRESULT(IMSVidWebDVDEvent *self, DVDMenuIDConstants MenuID, int16 bEnabled) ShowMenu;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) Resume;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) SelectOrActivateButton;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) StillOff;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PauseOn;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ChangeCurrentAudioStream;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ChangeCurrentSubpictureStream;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ChangeCurrentAngle;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayAtTimeInTitle;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayAtTime;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayChapterInTitle;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayChapter;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ReplayChapter;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayNextChapter;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) Stop;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ReturnFromSubmenu;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayTitle;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) PlayPrevChapter;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ChangeKaraokePresMode;
				public function HRESULT(IMSVidWebDVDEvent *self, int16 bEnabled) ChangeVideoPresMode;
			}
		}
		[CRepr]
		public struct IMSVidWebDVDAdm : IDispatch
		{
			public const new Guid IID = .(0xb8be681a, 0xeb2c, 0x47f0, 0xb4, 0x15, 0x94, 0xd5, 0x45, 0x2f, 0x0e, 0x05);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidWebDVDAdm *self, BSTR strUserName, BSTR strOld, BSTR strNew) ChangePassword;
				public function HRESULT(IMSVidWebDVDAdm *self, int32 level, BSTR strUserName, BSTR strPassword) SaveParentalLevel;
				public function HRESULT(IMSVidWebDVDAdm *self, int32 country, BSTR strUserName, BSTR strPassword) SaveParentalCountry;
				public function HRESULT(IMSVidWebDVDAdm *self, BSTR strUserName, BSTR strPassword, int16* pVal) ConfirmPassword;
				public function HRESULT(IMSVidWebDVDAdm *self, int32* lLevel) GetParentalLevel;
				public function HRESULT(IMSVidWebDVDAdm *self, int32* lCountry) GetParentalCountry;
				public function HRESULT(IMSVidWebDVDAdm *self, int32* pVal) get_DefaultAudioLCID;
				public function HRESULT(IMSVidWebDVDAdm *self, int32 newVal) put_DefaultAudioLCID;
				public function HRESULT(IMSVidWebDVDAdm *self, int32* pVal) get_DefaultSubpictureLCID;
				public function HRESULT(IMSVidWebDVDAdm *self, int32 newVal) put_DefaultSubpictureLCID;
				public function HRESULT(IMSVidWebDVDAdm *self, int32* pVal) get_DefaultMenuLCID;
				public function HRESULT(IMSVidWebDVDAdm *self, int32 newVal) put_DefaultMenuLCID;
				public function HRESULT(IMSVidWebDVDAdm *self, int16* pVal) get_BookmarkOnStop;
				public function HRESULT(IMSVidWebDVDAdm *self, int16 newVal) put_BookmarkOnStop;
			}
		}
		[CRepr]
		public struct IMSVidOutputDevice : IMSVidDevice
		{
			public const new Guid IID = .(0x37b03546, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidDevice.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidOutputDeviceEvent : IMSVidDeviceEvent
		{
			public const new Guid IID = .(0x2e6a14e2, 0x571c, 0x11d3, 0xb6, 0x52, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidDeviceEvent.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidFeature : IMSVidDevice
		{
			public const new Guid IID = .(0x37b03547, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidDevice.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidFeatureEvent : IMSVidDeviceEvent
		{
			public const new Guid IID = .(0x3dd2903c, 0xe0aa, 0x11d2, 0xb6, 0x3a, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidDeviceEvent.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidEncoder : IMSVidFeature
		{
			public const new Guid IID = .(0xc0020fd4, 0xbee7, 0x43d9, 0xa4, 0x95, 0x9f, 0x21, 0x31, 0x17, 0x10, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFeature.VTable
			{
				public function HRESULT(IMSVidEncoder *self, IUnknown** ppEncInt) get_VideoEncoderInterface;
				public function HRESULT(IMSVidEncoder *self, IUnknown** ppEncInt) get_AudioEncoderInterface;
			}
		}
		[CRepr]
		public struct IMSVidClosedCaptioning : IMSVidFeature
		{
			public const new Guid IID = .(0x99652ea1, 0xc1f7, 0x414f, 0xbb, 0x7b, 0x1c, 0x96, 0x7d, 0xe7, 0x59, 0x83);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFeature.VTable
			{
				public function HRESULT(IMSVidClosedCaptioning *self, int16* On) get_Enable;
				public function HRESULT(IMSVidClosedCaptioning *self, int16 On) put_Enable;
			}
		}
		[CRepr]
		public struct IMSVidClosedCaptioning2 : IMSVidClosedCaptioning
		{
			public const new Guid IID = .(0xe00cb864, 0xa029, 0x4310, 0x99, 0x87, 0xa8, 0x73, 0xf5, 0x88, 0x7d, 0x97);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidClosedCaptioning.VTable
			{
				public function HRESULT(IMSVidClosedCaptioning2 *self, MSVidCCService* On) get_Service;
				public function HRESULT(IMSVidClosedCaptioning2 *self, MSVidCCService On) put_Service;
			}
		}
		[CRepr]
		public struct IMSVidClosedCaptioning3 : IMSVidClosedCaptioning2
		{
			public const new Guid IID = .(0xc8638e8a, 0x7625, 0x4c51, 0x93, 0x66, 0x2f, 0x40, 0xa9, 0x83, 0x1f, 0xc0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidClosedCaptioning2.VTable
			{
				public function HRESULT(IMSVidClosedCaptioning3 *self, IUnknown** punkTTFilter) get_TeleTextFilter;
			}
		}
		[CRepr]
		public struct IMSVidXDS : IMSVidFeature
		{
			public const new Guid IID = .(0x11ebc158, 0xe712, 0x4d1f, 0x8b, 0xb3, 0x01, 0xed, 0x52, 0x74, 0xc4, 0xce);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFeature.VTable
			{
				public function HRESULT(IMSVidXDS *self, IUnknown** punkCC) get_ChannelChangeInterface;
			}
		}
		[CRepr]
		public struct IMSVidXDSEvent : IMSVidFeatureEvent
		{
			public const new Guid IID = .(0x6db2317d, 0x3b23, 0x41ec, 0xba, 0x4b, 0x70, 0x1f, 0x40, 0x7e, 0xaf, 0x3a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFeatureEvent.VTable
			{
				public function HRESULT(IMSVidXDSEvent *self, EnTvRat_System PrevRatingSystem, EnTvRat_GenericLevel PrevLevel, BfEnTvRat_GenericAttributes PrevAttributes, EnTvRat_System NewRatingSystem, EnTvRat_GenericLevel NewLevel, BfEnTvRat_GenericAttributes NewAttributes) RatingChange;
			}
		}
		[CRepr]
		public struct IMSVidDataServices : IMSVidFeature
		{
			public const new Guid IID = .(0x334125c1, 0x77e5, 0x11d3, 0xb6, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFeature.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidDataServicesEvent : IMSVidDeviceEvent
		{
			public const new Guid IID = .(0x334125c2, 0x77e5, 0x11d3, 0xb6, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidDeviceEvent.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidVideoRenderer : IMSVidOutputDevice
		{
			public const new Guid IID = .(0x37b03540, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDevice.VTable
			{
				public function HRESULT(IMSVidVideoRenderer *self, BSTR* CompositorCLSID) get_CustomCompositorClass;
				public function HRESULT(IMSVidVideoRenderer *self, BSTR CompositorCLSID) put_CustomCompositorClass;
				public function HRESULT(IMSVidVideoRenderer *self, Guid* CompositorCLSID) get__CustomCompositorClass;
				public function HRESULT(IMSVidVideoRenderer *self, Guid* CompositorCLSID) put__CustomCompositorClass;
				public function HRESULT(IMSVidVideoRenderer *self, IVMRImageCompositor** Compositor) get__CustomCompositor;
				public function HRESULT(IMSVidVideoRenderer *self, IVMRImageCompositor* Compositor) put__CustomCompositor;
				public function HRESULT(IMSVidVideoRenderer *self, IPictureDisp** MixerPictureDisp) get_MixerBitmap;
				public function HRESULT(IMSVidVideoRenderer *self, IVMRMixerBitmap** MixerPicture) get__MixerBitmap;
				public function HRESULT(IMSVidVideoRenderer *self, IPictureDisp* MixerPictureDisp) put_MixerBitmap;
				public function HRESULT(IMSVidVideoRenderer *self, VMRALPHABITMAP* MixerPicture) put__MixerBitmap;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect** rDest) get_MixerBitmapPositionRect;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect* rDest) put_MixerBitmapPositionRect;
				public function HRESULT(IMSVidVideoRenderer *self, int32* opacity) get_MixerBitmapOpacity;
				public function HRESULT(IMSVidVideoRenderer *self, int32 opacity) put_MixerBitmapOpacity;
				public function HRESULT(IMSVidVideoRenderer *self, IPictureDisp* MixerPictureDisp, int32 Opacity, IMSVidRect* rDest) SetupMixerBitmap;
				public function HRESULT(IMSVidVideoRenderer *self, SourceSizeList* CurrentSize) get_SourceSize;
				public function HRESULT(IMSVidVideoRenderer *self, SourceSizeList NewSize) put_SourceSize;
				public function HRESULT(IMSVidVideoRenderer *self, int32* plPercent) get_OverScan;
				public function HRESULT(IMSVidVideoRenderer *self, int32 lPercent) put_OverScan;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect** pRect) get_AvailableSourceRect;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect** ppVidRect) get_MaxVidRect;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect** ppVidRect) get_MinVidRect;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect** pRect) get_ClippedSourceRect;
				public function HRESULT(IMSVidVideoRenderer *self, IMSVidRect* pRect) put_ClippedSourceRect;
				public function HRESULT(IMSVidVideoRenderer *self, int16* UseOverlayVal) get_UsingOverlay;
				public function HRESULT(IMSVidVideoRenderer *self, int16 UseOverlayVal) put_UsingOverlay;
				public function HRESULT(IMSVidVideoRenderer *self, IPictureDisp** currentImage) Capture;
				public function HRESULT(IMSVidVideoRenderer *self, int32* pVal) get_FramesPerSecond;
				public function HRESULT(IMSVidVideoRenderer *self, int16* pDeci) get_DecimateInput;
				public function HRESULT(IMSVidVideoRenderer *self, int16 pDeci) put_DecimateInput;
			}
		}
		[CRepr]
		public struct IMSVidVideoRendererEvent : IMSVidOutputDeviceEvent
		{
			public const new Guid IID = .(0x37b03545, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDeviceEvent.VTable
			{
				public function HRESULT(IMSVidVideoRendererEvent *self) OverlayUnavailable;
			}
		}
		[CRepr]
		public struct IMSVidGenericSink : IMSVidOutputDevice
		{
			public const new Guid IID = .(0x6c29b41d, 0x455b, 0x4c33, 0x96, 0x3a, 0x0d, 0x28, 0xe5, 0xe5, 0x55, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDevice.VTable
			{
				public function HRESULT(IMSVidGenericSink *self, BSTR bstrName) SetSinkFilter;
				public function HRESULT(IMSVidGenericSink *self, MSVidSinkStreams* pStreams) get_SinkStreams;
				public function HRESULT(IMSVidGenericSink *self, MSVidSinkStreams Streams) put_SinkStreams;
			}
		}
		[CRepr]
		public struct IMSVidGenericSink2 : IMSVidGenericSink
		{
			public const new Guid IID = .(0x6b5a28f3, 0x47f1, 0x4092, 0xb1, 0x68, 0x60, 0xca, 0xbe, 0xc0, 0x8f, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidGenericSink.VTable
			{
				public function HRESULT(IMSVidGenericSink2 *self, BSTR bstrName) AddFilter;
				public function HRESULT(IMSVidGenericSink2 *self) ResetFilterList;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferRecordingControl : IDispatch
		{
			public const new Guid IID = .(0x160621aa, 0xbbbc, 0x4326, 0xa8, 0x24, 0xc3, 0x95, 0xae, 0xbc, 0x6e, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, int32* rtStart) get_StartTime;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, int32 rtStart) put_StartTime;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, int32* rtStop) get_StopTime;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, int32 rtStop) put_StopTime;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, int16* phResult) get_RecordingStopped;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, int16* phResult) get_RecordingStarted;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, RecordingType* dwType) get_RecordingType;
				public function HRESULT(IMSVidStreamBufferRecordingControl *self, IUnknown** pRecordingAttribute) get_RecordingAttribute;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSink : IMSVidOutputDevice
		{
			public const new Guid IID = .(0x159dbb45, 0xcd1b, 0x4dab, 0x83, 0xea, 0x5c, 0xb1, 0xf4, 0xf2, 0x1d, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDevice.VTable
			{
				public function HRESULT(IMSVidStreamBufferSink *self, BSTR pszFilename, IMSVidStreamBufferRecordingControl** pRecordingIUnknown) get_ContentRecorder;
				public function HRESULT(IMSVidStreamBufferSink *self, BSTR pszFilename, IMSVidStreamBufferRecordingControl** pRecordingIUnknown) get_ReferenceRecorder;
				public function HRESULT(IMSVidStreamBufferSink *self, BSTR* pName) get_SinkName;
				public function HRESULT(IMSVidStreamBufferSink *self, BSTR Name) put_SinkName;
				public function HRESULT(IMSVidStreamBufferSink *self) NameSetLock;
				public function HRESULT(IMSVidStreamBufferSink *self, IUnknown** sbeConfig) get_SBESink;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSink2 : IMSVidStreamBufferSink
		{
			public const new Guid IID = .(0x2ca9fc63, 0xc131, 0x4e5a, 0x95, 0x5a, 0x54, 0x4a, 0x47, 0xc6, 0x71, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSink.VTable
			{
				public function HRESULT(IMSVidStreamBufferSink2 *self) UnlockProfile;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSink3 : IMSVidStreamBufferSink2
		{
			public const new Guid IID = .(0x4f8721d7, 0x7d59, 0x4d8b, 0x99, 0xf5, 0xa7, 0x77, 0x75, 0x58, 0x6b, 0xd5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSink2.VTable
			{
				public function HRESULT(IMSVidStreamBufferSink3 *self, int32* pdwMin) SetMinSeek;
				public function HRESULT(IMSVidStreamBufferSink3 *self, IUnknown** ppUnk) get_AudioCounter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, IUnknown** ppUnk) get_VideoCounter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, IUnknown** ppUnk) get_CCCounter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, IUnknown** ppUnk) get_WSTCounter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, BSTR szCLSID) put_AudioAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, BSTR* pszCLSID) get_AudioAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, Guid guid) put__AudioAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, Guid* pGuid) get__AudioAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, BSTR szCLSID) put_VideoAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, BSTR* pszCLSID) get_VideoAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, Guid guid) put__VideoAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, Guid* pGuid) get__VideoAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, BSTR szCLSID) put_DataAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, BSTR* pszCLSID) get_DataAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, Guid guid) put__DataAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, Guid* pGuid) get__DataAnalysisFilter;
				public function HRESULT(IMSVidStreamBufferSink3 *self, HRESULT* hres) get_LicenseErrorCode;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSinkEvent : IMSVidOutputDeviceEvent
		{
			public const new Guid IID = .(0xf798a36b, 0xb05b, 0x4bbe, 0x97, 0x03, 0xea, 0xea, 0x7d, 0x61, 0xcd, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDeviceEvent.VTable
			{
				public function HRESULT(IMSVidStreamBufferSinkEvent *self) CertificateFailure;
				public function HRESULT(IMSVidStreamBufferSinkEvent *self) CertificateSuccess;
				public function HRESULT(IMSVidStreamBufferSinkEvent *self) WriteFailure;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSinkEvent2 : IMSVidStreamBufferSinkEvent
		{
			public const new Guid IID = .(0x3d7a5166, 0x72d7, 0x484b, 0xa0, 0x6f, 0x28, 0x61, 0x87, 0xb8, 0x0c, 0xa1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSinkEvent.VTable
			{
				public function HRESULT(IMSVidStreamBufferSinkEvent2 *self) EncryptionOn;
				public function HRESULT(IMSVidStreamBufferSinkEvent2 *self) EncryptionOff;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSinkEvent3 : IMSVidStreamBufferSinkEvent2
		{
			public const new Guid IID = .(0x735ad8d5, 0xc259, 0x48e9, 0x81, 0xe7, 0xd2, 0x79, 0x53, 0x66, 0x5b, 0x23);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSinkEvent2.VTable
			{
				public function HRESULT(IMSVidStreamBufferSinkEvent3 *self, int32 dwProt) LicenseChange;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSinkEvent4 : IMSVidStreamBufferSinkEvent3
		{
			public const new Guid IID = .(0x1b01dcb0, 0xdaf0, 0x412c, 0xa5, 0xd1, 0x59, 0x0c, 0x7f, 0x62, 0xe2, 0xb8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSinkEvent3.VTable
			{
				public function HRESULT(IMSVidStreamBufferSinkEvent4 *self) WriteFailureClear;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSource : IMSVidFilePlayback
		{
			public const new Guid IID = .(0xeb0c8cf9, 0x6950, 0x4772, 0x87, 0xb1, 0x47, 0xd1, 0x1c, 0xf3, 0xa0, 0x2f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFilePlayback.VTable
			{
				public function HRESULT(IMSVidStreamBufferSource *self, int32* lStart) get_Start;
				public function HRESULT(IMSVidStreamBufferSource *self, IUnknown** pRecordingAttribute) get_RecordingAttribute;
				public function HRESULT(IMSVidStreamBufferSource *self, EnTvRat_System* pEnSystem, EnTvRat_GenericLevel* pEnRating, int32* pBfEnAttr) CurrentRatings;
				public function HRESULT(IMSVidStreamBufferSource *self, EnTvRat_System enSystem, EnTvRat_GenericLevel enRating, int32 lbfEnAttr) MaxRatingsLevel;
				public function HRESULT(IMSVidStreamBufferSource *self, int16 bBlock) put_BlockUnrated;
				public function HRESULT(IMSVidStreamBufferSource *self, int32 dwDelay) put_UnratedDelay;
				public function HRESULT(IMSVidStreamBufferSource *self, IUnknown** sbeFilter) get_SBESource;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSource2 : IMSVidStreamBufferSource
		{
			public const new Guid IID = .(0xe4ba9059, 0xb1ce, 0x40d8, 0xb9, 0xa0, 0xd4, 0xea, 0x4a, 0x99, 0x89, 0xd3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSource.VTable
			{
				public function HRESULT(IMSVidStreamBufferSource2 *self, double dwRate, uint32 dwFramesPerSecond) put_RateEx;
				public function HRESULT(IMSVidStreamBufferSource2 *self, IUnknown** ppUnk) get_AudioCounter;
				public function HRESULT(IMSVidStreamBufferSource2 *self, IUnknown** ppUnk) get_VideoCounter;
				public function HRESULT(IMSVidStreamBufferSource2 *self, IUnknown** ppUnk) get_CCCounter;
				public function HRESULT(IMSVidStreamBufferSource2 *self, IUnknown** ppUnk) get_WSTCounter;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSourceEvent : IMSVidFilePlaybackEvent
		{
			public const new Guid IID = .(0x50ce8a7d, 0x9c28, 0x4da8, 0x90, 0x42, 0xcd, 0xfa, 0x71, 0x16, 0xf9, 0x79);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFilePlaybackEvent.VTable
			{
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) CertificateFailure;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) CertificateSuccess;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) RatingsBlocked;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) RatingsUnblocked;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) RatingsChanged;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self, int32 StreamOffsetMS, int32 SizeMS) TimeHole;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) StaleDataRead;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) ContentBecomingStale;
				public function HRESULT(IMSVidStreamBufferSourceEvent *self) StaleFileDeleted;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSourceEvent2 : IMSVidStreamBufferSourceEvent
		{
			public const new Guid IID = .(0x7aef50ce, 0x8e22, 0x4ba8, 0xbc, 0x06, 0xa9, 0x2a, 0x45, 0x8b, 0x4e, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSourceEvent.VTable
			{
				public function HRESULT(IMSVidStreamBufferSourceEvent2 *self, double qwNewRate, double qwOldRate) RateChange;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferSourceEvent3 : IMSVidStreamBufferSourceEvent2
		{
			public const new Guid IID = .(0xceabd6ab, 0x9b90, 0x4570, 0xad, 0xf1, 0x3c, 0xe7, 0x6e, 0x00, 0xa7, 0x63);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidStreamBufferSourceEvent2.VTable
			{
				public function HRESULT(IMSVidStreamBufferSourceEvent3 *self, BSTR Guid) BroadcastEvent;
				public function HRESULT(IMSVidStreamBufferSourceEvent3 *self, BSTR Guid, uint32 Param1, uint32 Param2, uint32 Param3, uint32 Param4) BroadcastEventEx;
				public function HRESULT(IMSVidStreamBufferSourceEvent3 *self) COPPBlocked;
				public function HRESULT(IMSVidStreamBufferSourceEvent3 *self) COPPUnblocked;
				public function HRESULT(IMSVidStreamBufferSourceEvent3 *self) ContentPrimarilyAudio;
			}
		}
		[CRepr]
		public struct IMSVidStreamBufferV2SourceEvent : IMSVidFilePlaybackEvent
		{
			public const new Guid IID = .(0x49c771f9, 0x41b2, 0x4cf7, 0x9f, 0x9a, 0xa3, 0x13, 0xa8, 0xf6, 0x02, 0x7e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidFilePlaybackEvent.VTable
			{
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self) RatingsChanged;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self, int32 StreamOffsetMS, int32 SizeMS) TimeHole;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self) StaleDataRead;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self) ContentBecomingStale;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self) StaleFileDeleted;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self, double qwNewRate, double qwOldRate) RateChange;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self, BSTR Guid) BroadcastEvent;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self, BSTR Guid, uint32 Param1, uint32 Param2, uint32 Param3, uint32 Param4) BroadcastEventEx;
				public function HRESULT(IMSVidStreamBufferV2SourceEvent *self) ContentPrimarilyAudio;
			}
		}
		[CRepr]
		public struct IMSVidVideoRenderer2 : IMSVidVideoRenderer
		{
			public const new Guid IID = .(0x6bdd5c1e, 0x2810, 0x4159, 0x94, 0xbc, 0x05, 0x51, 0x1a, 0xe8, 0x54, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidVideoRenderer.VTable
			{
				public function HRESULT(IMSVidVideoRenderer2 *self, IUnknown** AllocPresent) get_Allocator;
				public function HRESULT(IMSVidVideoRenderer2 *self, IVMRSurfaceAllocator** AllocPresent) get__Allocator;
				public function HRESULT(IMSVidVideoRenderer2 *self, int32* ID) get_Allocator_ID;
				public function HRESULT(IMSVidVideoRenderer2 *self, IUnknown* AllocPresent, int32 ID) SetAllocator;
				public function HRESULT(IMSVidVideoRenderer2 *self, IVMRSurfaceAllocator* AllocPresent, int32 ID) _SetAllocator2;
				public function HRESULT(IMSVidVideoRenderer2 *self, int16 bSuppress) put_SuppressEffects;
				public function HRESULT(IMSVidVideoRenderer2 *self, int16* bSuppress) get_SuppressEffects;
			}
		}
		[CRepr]
		public struct IMSVidVideoRendererEvent2 : IMSVidOutputDeviceEvent
		{
			public const new Guid IID = .(0x7145ed66, 0x4730, 0x4fdb, 0x8a, 0x53, 0xfd, 0xe7, 0x50, 0x8d, 0x3e, 0x5e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDeviceEvent.VTable
			{
				public function HRESULT(IMSVidVideoRendererEvent2 *self) OverlayUnavailable;
			}
		}
		[CRepr]
		public struct IMSVidVMR9 : IMSVidVideoRenderer
		{
			public const new Guid IID = .(0xd58b0015, 0xebef, 0x44bb, 0xbb, 0xdd, 0x3f, 0x36, 0x99, 0xd7, 0x6e, 0xa1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidVideoRenderer.VTable
			{
				public function HRESULT(IMSVidVMR9 *self, int32* ID) get_Allocator_ID;
				public function HRESULT(IMSVidVMR9 *self, IUnknown* AllocPresent, int32 ID) SetAllocator;
				public function HRESULT(IMSVidVMR9 *self, int16 bSuppress) put_SuppressEffects;
				public function HRESULT(IMSVidVMR9 *self, int16* bSuppress) get_SuppressEffects;
				public function HRESULT(IMSVidVMR9 *self, IUnknown** AllocPresent) get_Allocator;
			}
		}
		[CRepr]
		public struct IMSVidEVR : IMSVidVideoRenderer
		{
			public const new Guid IID = .(0x15e496ae, 0x82a8, 0x4cf9, 0xa6, 0xb6, 0xc5, 0x61, 0xdc, 0x60, 0x39, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidVideoRenderer.VTable
			{
				public function HRESULT(IMSVidEVR *self, IMFVideoPresenter** ppAllocPresent) get_Presenter;
				public function HRESULT(IMSVidEVR *self, IMFVideoPresenter* pAllocPresent) put_Presenter;
				public function HRESULT(IMSVidEVR *self, int16 bSuppress) put_SuppressEffects;
				public function HRESULT(IMSVidEVR *self, int16* bSuppress) get_SuppressEffects;
			}
		}
		[CRepr]
		public struct IMSVidEVREvent : IMSVidOutputDeviceEvent
		{
			public const new Guid IID = .(0x349abb10, 0x883c, 0x4f22, 0x87, 0x14, 0xce, 0xca, 0xee, 0xe4, 0x5d, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDeviceEvent.VTable
			{
				public function HRESULT(IMSVidEVREvent *self, int32 lEventCode) OnUserEvent;
			}
		}
		[CRepr]
		public struct IMSVidAudioRenderer : IMSVidOutputDevice
		{
			public const new Guid IID = .(0x37b0353f, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDevice.VTable
			{
				public function HRESULT(IMSVidAudioRenderer *self, int32 lVol) put_Volume;
				public function HRESULT(IMSVidAudioRenderer *self, int32* lVol) get_Volume;
				public function HRESULT(IMSVidAudioRenderer *self, int32 lBal) put_Balance;
				public function HRESULT(IMSVidAudioRenderer *self, int32* lBal) get_Balance;
			}
		}
		[CRepr]
		public struct IMSVidAudioRendererEvent : IMSVidOutputDeviceEvent
		{
			public const new Guid IID = .(0x37b03541, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidOutputDeviceEvent.VTable
			{
			}
		}
		[CRepr]
		public struct IMSVidAudioRendererEvent2 : IMSVidAudioRendererEvent
		{
			public const new Guid IID = .(0xe3f55729, 0x353b, 0x4c43, 0xa0, 0x28, 0x50, 0xf7, 0x9a, 0xa9, 0xa9, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMSVidAudioRendererEvent.VTable
			{
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVDecAudioDualMono;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVAudioSampleRate;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVAudioChannelConfig;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVAudioChannelCount;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVDecCommonMeanBitRate;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVDDSurroundMode;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVDecCommonInputFormat;
				public function HRESULT(IMSVidAudioRendererEvent2 *self) AVDecCommonOutputFormat;
			}
		}
		[CRepr]
		public struct IMSVidInputDevices : IDispatch
		{
			public const new Guid IID = .(0xc5702cd1, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidInputDevices *self, int32* lCount) get_Count;
				public function HRESULT(IMSVidInputDevices *self, IEnumVARIANT** pD) get__NewEnum;
				public function HRESULT(IMSVidInputDevices *self, VARIANT v, IMSVidInputDevice** pDB) get_Item;
				public function HRESULT(IMSVidInputDevices *self, IMSVidInputDevice* pDB) Add;
				public function HRESULT(IMSVidInputDevices *self, VARIANT v) Remove;
			}
		}
		[CRepr]
		public struct IMSVidOutputDevices : IDispatch
		{
			public const new Guid IID = .(0xc5702cd2, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidOutputDevices *self, int32* lCount) get_Count;
				public function HRESULT(IMSVidOutputDevices *self, IEnumVARIANT** pD) get__NewEnum;
				public function HRESULT(IMSVidOutputDevices *self, VARIANT v, IMSVidOutputDevice** pDB) get_Item;
				public function HRESULT(IMSVidOutputDevices *self, IMSVidOutputDevice* pDB) Add;
				public function HRESULT(IMSVidOutputDevices *self, VARIANT v) Remove;
			}
		}
		[CRepr]
		public struct IMSVidVideoRendererDevices : IDispatch
		{
			public const new Guid IID = .(0xc5702cd3, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidVideoRendererDevices *self, int32* lCount) get_Count;
				public function HRESULT(IMSVidVideoRendererDevices *self, IEnumVARIANT** pD) get__NewEnum;
				public function HRESULT(IMSVidVideoRendererDevices *self, VARIANT v, IMSVidVideoRenderer** pDB) get_Item;
				public function HRESULT(IMSVidVideoRendererDevices *self, IMSVidVideoRenderer* pDB) Add;
				public function HRESULT(IMSVidVideoRendererDevices *self, VARIANT v) Remove;
			}
		}
		[CRepr]
		public struct IMSVidAudioRendererDevices : IDispatch
		{
			public const new Guid IID = .(0xc5702cd4, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidAudioRendererDevices *self, int32* lCount) get_Count;
				public function HRESULT(IMSVidAudioRendererDevices *self, IEnumVARIANT** pD) get__NewEnum;
				public function HRESULT(IMSVidAudioRendererDevices *self, VARIANT v, IMSVidAudioRenderer** pDB) get_Item;
				public function HRESULT(IMSVidAudioRendererDevices *self, IMSVidAudioRenderer* pDB) Add;
				public function HRESULT(IMSVidAudioRendererDevices *self, VARIANT v) Remove;
			}
		}
		[CRepr]
		public struct IMSVidFeatures : IDispatch
		{
			public const new Guid IID = .(0xc5702cd5, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidFeatures *self, int32* lCount) get_Count;
				public function HRESULT(IMSVidFeatures *self, IEnumVARIANT** pD) get__NewEnum;
				public function HRESULT(IMSVidFeatures *self, VARIANT v, IMSVidFeature** pDB) get_Item;
				public function HRESULT(IMSVidFeatures *self, IMSVidFeature* pDB) Add;
				public function HRESULT(IMSVidFeatures *self, VARIANT v) Remove;
			}
		}
		[CRepr]
		public struct IMSVidCtl : IDispatch
		{
			public const new Guid IID = .(0xb0edf162, 0x910a, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSVidCtl *self, int16* pbool) get_AutoSize;
				public function HRESULT(IMSVidCtl *self, int16 vbool) put_AutoSize;
				public function HRESULT(IMSVidCtl *self, uint32* backcolor) get_BackColor;
				public function HRESULT(IMSVidCtl *self, uint32 backcolor) put_BackColor;
				public function HRESULT(IMSVidCtl *self, int16* pbool) get_Enabled;
				public function HRESULT(IMSVidCtl *self, int16 vbool) put_Enabled;
				public function HRESULT(IMSVidCtl *self, int16* pbool) get_TabStop;
				public function HRESULT(IMSVidCtl *self, int16 vbool) put_TabStop;
				public function HRESULT(IMSVidCtl *self, HWND* phwnd) get_Window;
				public function HRESULT(IMSVidCtl *self) Refresh;
				public function HRESULT(IMSVidCtl *self, DisplaySizeList* CurrentValue) get_DisplaySize;
				public function HRESULT(IMSVidCtl *self, DisplaySizeList NewValue) put_DisplaySize;
				public function HRESULT(IMSVidCtl *self, int16* CurrentValue) get_MaintainAspectRatio;
				public function HRESULT(IMSVidCtl *self, int16 NewValue) put_MaintainAspectRatio;
				public function HRESULT(IMSVidCtl *self, uint32* CurrentValue) get_ColorKey;
				public function HRESULT(IMSVidCtl *self, uint32 NewValue) put_ColorKey;
				public function HRESULT(IMSVidCtl *self, BSTR CategoryGuid, IMSVidInputDevices** pVal) get_InputsAvailable;
				public function HRESULT(IMSVidCtl *self, BSTR CategoryGuid, IMSVidOutputDevices** pVal) get_OutputsAvailable;
				public function HRESULT(IMSVidCtl *self, Guid* CategoryGuid, IMSVidInputDevices** pVal) get__InputsAvailable;
				public function HRESULT(IMSVidCtl *self, Guid* CategoryGuid, IMSVidOutputDevices** pVal) get__OutputsAvailable;
				public function HRESULT(IMSVidCtl *self, IMSVidVideoRendererDevices** pVal) get_VideoRenderersAvailable;
				public function HRESULT(IMSVidCtl *self, IMSVidAudioRendererDevices** pVal) get_AudioRenderersAvailable;
				public function HRESULT(IMSVidCtl *self, IMSVidFeatures** pVal) get_FeaturesAvailable;
				public function HRESULT(IMSVidCtl *self, IMSVidInputDevice** pVal) get_InputActive;
				public function HRESULT(IMSVidCtl *self, IMSVidInputDevice* pVal) put_InputActive;
				public function HRESULT(IMSVidCtl *self, IMSVidOutputDevices** pVal) get_OutputsActive;
				public function HRESULT(IMSVidCtl *self, IMSVidOutputDevices* pVal) put_OutputsActive;
				public function HRESULT(IMSVidCtl *self, IMSVidVideoRenderer** pVal) get_VideoRendererActive;
				public function HRESULT(IMSVidCtl *self, IMSVidVideoRenderer* pVal) put_VideoRendererActive;
				public function HRESULT(IMSVidCtl *self, IMSVidAudioRenderer** pVal) get_AudioRendererActive;
				public function HRESULT(IMSVidCtl *self, IMSVidAudioRenderer* pVal) put_AudioRendererActive;
				public function HRESULT(IMSVidCtl *self, IMSVidFeatures** pVal) get_FeaturesActive;
				public function HRESULT(IMSVidCtl *self, IMSVidFeatures* pVal) put_FeaturesActive;
				public function HRESULT(IMSVidCtl *self, MSVidCtlStateList* lState) get_State;
				public function HRESULT(IMSVidCtl *self, VARIANT* v) View;
				public function HRESULT(IMSVidCtl *self) Build;
				public function HRESULT(IMSVidCtl *self) Pause;
				public function HRESULT(IMSVidCtl *self) Run;
				public function HRESULT(IMSVidCtl *self) Stop;
				public function HRESULT(IMSVidCtl *self) Decompose;
				public function HRESULT(IMSVidCtl *self) DisableVideo;
				public function HRESULT(IMSVidCtl *self) DisableAudio;
				public function HRESULT(IMSVidCtl *self, VARIANT* v) ViewNext;
			}
		}
		[CRepr]
		public struct IMSEventBinder : IDispatch
		{
			public const new Guid IID = .(0xc3a9f406, 0x2222, 0x436d, 0x86, 0xd5, 0xba, 0x32, 0x29, 0x27, 0x9e, 0xfb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IMSEventBinder *self, IDispatch* pEventObject, BSTR EventName, BSTR EventHandler, int32* CancelID) Bind;
				public function HRESULT(IMSEventBinder *self, uint32 CancelCookie) Unbind;
			}
		}
		[CRepr]
		public struct _IMSVidCtlEvents : IDispatch
		{
			public const new Guid IID = .(0xb0edf164, 0x910a, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IStreamBufferInitialize : IUnknown
		{
			public const new Guid IID = .(0x9ce50f2d, 0x6ba7, 0x40fb, 0xa0, 0x34, 0x50, 0xb1, 0xa6, 0x74, 0xec, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferInitialize *self, HKEY hkeyRoot) SetHKEY;
				public function HRESULT(IStreamBufferInitialize *self, uint32 cSIDs, PSID* ppSID) SetSIDs;
			}
		}
		[CRepr]
		public struct IStreamBufferSink : IUnknown
		{
			public const new Guid IID = .(0xafd1f242, 0x7efd, 0x45ee, 0xba, 0x4e, 0x40, 0x7a, 0x25, 0xc9, 0xa7, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferSink *self, PWSTR pszStreamBufferFilename) LockProfile;
				public function HRESULT(IStreamBufferSink *self, PWSTR pszFilename, uint32 dwRecordType, IUnknown** pRecordingIUnknown) CreateRecorder;
				public function HRESULT(IStreamBufferSink *self) IsProfileLocked;
			}
		}
		[CRepr]
		public struct IStreamBufferSink2 : IStreamBufferSink
		{
			public const new Guid IID = .(0xdb94a660, 0xf4fb, 0x4bfa, 0xbc, 0xc6, 0xfe, 0x15, 0x9a, 0x4e, 0xea, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamBufferSink.VTable
			{
				public function HRESULT(IStreamBufferSink2 *self) UnlockProfile;
			}
		}
		[CRepr]
		public struct IStreamBufferSink3 : IStreamBufferSink2
		{
			public const new Guid IID = .(0x974723f2, 0x887a, 0x4452, 0x93, 0x66, 0x2c, 0xff, 0x30, 0x57, 0xbc, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamBufferSink2.VTable
			{
				public function HRESULT(IStreamBufferSink3 *self, int64* prtMin) SetAvailableFilter;
			}
		}
		[CRepr]
		public struct IStreamBufferSource : IUnknown
		{
			public const new Guid IID = .(0x1c5bd776, 0x6ced, 0x4f44, 0x81, 0x64, 0x5e, 0xab, 0x0e, 0x98, 0xdb, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferSource *self, IStreamBufferSink* pIStreamBufferSink) SetStreamSink;
			}
		}
		[CRepr]
		public struct IStreamBufferRecordControl : IUnknown
		{
			public const new Guid IID = .(0xba9b6c99, 0xf3c7, 0x4ff2, 0x92, 0xdb, 0xcf, 0xdd, 0x48, 0x51, 0xbf, 0x31);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferRecordControl *self, int64* prtStart) Start;
				public function HRESULT(IStreamBufferRecordControl *self, int64 rtStop) Stop;
				public function HRESULT(IStreamBufferRecordControl *self, HRESULT* phResult, BOOL* pbStarted, BOOL* pbStopped) GetRecordingStatus;
			}
		}
		[CRepr]
		public struct IStreamBufferRecComp : IUnknown
		{
			public const new Guid IID = .(0x9e259a9b, 0x8815, 0x42ae, 0xb0, 0x9f, 0x22, 0x19, 0x70, 0xb1, 0x54, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferRecComp *self, PWSTR pszTargetFilename, PWSTR pszSBRecProfileRef) Initialize;
				public function HRESULT(IStreamBufferRecComp *self, PWSTR pszSBRecording) Append;
				public function HRESULT(IStreamBufferRecComp *self, PWSTR pszSBRecording, int64 rtStart, int64 rtStop) AppendEx;
				public function HRESULT(IStreamBufferRecComp *self, uint32* pcSeconds) GetCurrentLength;
				public function HRESULT(IStreamBufferRecComp *self) Close;
				public function HRESULT(IStreamBufferRecComp *self) Cancel;
			}
		}
		[CRepr]
		public struct IStreamBufferRecordingAttribute : IUnknown
		{
			public const new Guid IID = .(0x16ca4e03, 0xfe69, 0x4705, 0xbd, 0x41, 0x5b, 0x7d, 0xfc, 0x0c, 0x95, 0xf3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferRecordingAttribute *self, uint32 ulReserved, PWSTR pszAttributeName, STREAMBUFFER_ATTR_DATATYPE StreamBufferAttributeType, uint8* pbAttribute, uint16 cbAttributeLength) SetAttribute;
				public function HRESULT(IStreamBufferRecordingAttribute *self, uint32 ulReserved, uint16* pcAttributes) GetAttributeCount;
				public function HRESULT(IStreamBufferRecordingAttribute *self, PWSTR pszAttributeName, uint32* pulReserved, STREAMBUFFER_ATTR_DATATYPE* pStreamBufferAttributeType, uint8* pbAttribute, uint16* pcbLength) GetAttributeByName;
				public function HRESULT(IStreamBufferRecordingAttribute *self, uint16 wIndex, uint32* pulReserved, PWSTR pszAttributeName, uint16* pcchNameLength, STREAMBUFFER_ATTR_DATATYPE* pStreamBufferAttributeType, uint8* pbAttribute, uint16* pcbLength) GetAttributeByIndex;
				public function HRESULT(IStreamBufferRecordingAttribute *self, IEnumStreamBufferRecordingAttrib** ppIEnumStreamBufferAttrib) EnumAttributes;
			}
		}
		[CRepr]
		public struct IEnumStreamBufferRecordingAttrib : IUnknown
		{
			public const new Guid IID = .(0xc18a9162, 0x1e82, 0x4142, 0x8c, 0x73, 0x56, 0x90, 0xfa, 0x62, 0xfe, 0x33);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumStreamBufferRecordingAttrib *self, uint32 cRequest, STREAMBUFFER_ATTRIBUTE* pStreamBufferAttribute, uint32* pcReceived) Next;
				public function HRESULT(IEnumStreamBufferRecordingAttrib *self, uint32 cRecords) Skip;
				public function HRESULT(IEnumStreamBufferRecordingAttrib *self) Reset;
				public function HRESULT(IEnumStreamBufferRecordingAttrib *self, IEnumStreamBufferRecordingAttrib** ppIEnumStreamBufferAttrib) Clone;
			}
		}
		[CRepr]
		public struct IStreamBufferConfigure : IUnknown
		{
			public const new Guid IID = .(0xce14dfae, 0x4098, 0x4af7, 0xbb, 0xf7, 0xd6, 0x51, 0x1f, 0x83, 0x54, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferConfigure *self, PWSTR pszDirectoryName) SetDirectory;
				public function HRESULT(IStreamBufferConfigure *self, PWSTR* ppszDirectoryName) GetDirectory;
				public function HRESULT(IStreamBufferConfigure *self, uint32 dwMin, uint32 dwMax) SetBackingFileCount;
				public function HRESULT(IStreamBufferConfigure *self, uint32* pdwMin, uint32* pdwMax) GetBackingFileCount;
				public function HRESULT(IStreamBufferConfigure *self, uint32 dwSeconds) SetBackingFileDuration;
				public function HRESULT(IStreamBufferConfigure *self, uint32* pdwSeconds) GetBackingFileDuration;
			}
		}
		[CRepr]
		public struct IStreamBufferConfigure2 : IStreamBufferConfigure
		{
			public const new Guid IID = .(0x53e037bf, 0x3992, 0x4282, 0xae, 0x34, 0x24, 0x87, 0xb4, 0xda, 0xe0, 0x6b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamBufferConfigure.VTable
			{
				public function HRESULT(IStreamBufferConfigure2 *self, uint32 cbBytesPerPacket) SetMultiplexedPacketSize;
				public function HRESULT(IStreamBufferConfigure2 *self, uint32* pcbBytesPerPacket) GetMultiplexedPacketSize;
				public function HRESULT(IStreamBufferConfigure2 *self, uint32 dwMaxFullFrameRate, uint32 dwMaxNonSkippingRate) SetFFTransitionRates;
				public function HRESULT(IStreamBufferConfigure2 *self, uint32* pdwMaxFullFrameRate, uint32* pdwMaxNonSkippingRate) GetFFTransitionRates;
			}
		}
		[CRepr]
		public struct IStreamBufferConfigure3 : IStreamBufferConfigure2
		{
			public const new Guid IID = .(0x7e2d2a1e, 0x7192, 0x4bd7, 0x80, 0xc1, 0x06, 0x1f, 0xd1, 0xd1, 0x04, 0x02);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamBufferConfigure2.VTable
			{
				public function HRESULT(IStreamBufferConfigure3 *self, BOOL fStartStopsCur) SetStartRecConfig;
				public function HRESULT(IStreamBufferConfigure3 *self, BOOL* pfStartStopsCur) GetStartRecConfig;
				public function HRESULT(IStreamBufferConfigure3 *self, PWSTR pszNamespace) SetNamespace;
				public function HRESULT(IStreamBufferConfigure3 *self, PWSTR* ppszNamespace) GetNamespace;
			}
		}
		[CRepr]
		public struct IStreamBufferMediaSeeking : IMediaSeeking
		{
			public const new Guid IID = .(0xf61f5c26, 0x863d, 0x4afa, 0xb0, 0xba, 0x2f, 0x81, 0xdc, 0x97, 0x85, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMediaSeeking.VTable
			{
			}
		}
		[CRepr]
		public struct IStreamBufferMediaSeeking2 : IStreamBufferMediaSeeking
		{
			public const new Guid IID = .(0x3a439ab0, 0x155f, 0x470a, 0x86, 0xa6, 0x9e, 0xa5, 0x4a, 0xfd, 0x6e, 0xaf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IStreamBufferMediaSeeking.VTable
			{
				public function HRESULT(IStreamBufferMediaSeeking2 *self, double dRate, uint32 dwFramesPerSec) SetRateEx;
			}
		}
		[CRepr]
		public struct IStreamBufferDataCounters : IUnknown
		{
			public const new Guid IID = .(0x9d2a2563, 0x31ab, 0x402e, 0x9a, 0x6b, 0xad, 0xb9, 0x03, 0x48, 0x94, 0x40);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStreamBufferDataCounters *self, SBE_PIN_DATA* pPinData) GetData;
				public function HRESULT(IStreamBufferDataCounters *self) ResetData;
			}
		}
		[CRepr]
		public struct ISBE2GlobalEvent : IUnknown
		{
			public const new Guid IID = .(0xcaede759, 0xb6b1, 0x11db, 0xa5, 0x78, 0x00, 0x18, 0xf3, 0xfa, 0x24, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2GlobalEvent *self, Guid* idEvt, uint32 param1, uint32 param2, uint32 param3, uint32 param4, BOOL* pSpanning, uint32* pcb, uint8* pb) GetEvent;
			}
		}
		[CRepr]
		public struct ISBE2GlobalEvent2 : ISBE2GlobalEvent
		{
			public const new Guid IID = .(0x6d8309bf, 0x00fe, 0x4506, 0x8b, 0x03, 0xf8, 0xc6, 0x5b, 0x5c, 0x9b, 0x39);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISBE2GlobalEvent.VTable
			{
				public function HRESULT(ISBE2GlobalEvent2 *self, Guid* idEvt, uint32 param1, uint32 param2, uint32 param3, uint32 param4, BOOL* pSpanning, uint32* pcb, uint8* pb, int64* pStreamTime) GetEventEx;
			}
		}
		[CRepr]
		public struct ISBE2SpanningEvent : IUnknown
		{
			public const new Guid IID = .(0xcaede760, 0xb6b1, 0x11db, 0xa5, 0x78, 0x00, 0x18, 0xf3, 0xfa, 0x24, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2SpanningEvent *self, Guid* idEvt, uint32 streamId, uint32* pcb, uint8* pb) GetEvent;
			}
		}
		[CRepr]
		public struct ISBE2Crossbar : IUnknown
		{
			public const new Guid IID = .(0x547b6d26, 0x3226, 0x487e, 0x82, 0x53, 0x8a, 0xa1, 0x68, 0x74, 0x94, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2Crossbar *self, uint32 DefaultFlags) EnableDefaultMode;
				public function HRESULT(ISBE2Crossbar *self, ISBE2MediaTypeProfile** ppProfile) GetInitialProfile;
				public function HRESULT(ISBE2Crossbar *self, ISBE2MediaTypeProfile* pProfile, uint32* pcOutputPins, IPin** ppOutputPins) SetOutputProfile;
				public function HRESULT(ISBE2Crossbar *self, ISBE2EnumStream** ppStreams) EnumStreams;
			}
		}
		[CRepr]
		public struct ISBE2StreamMap : IUnknown
		{
			public const new Guid IID = .(0x667c7745, 0x85b1, 0x4c55, 0xae, 0x55, 0x4e, 0x25, 0x05, 0x61, 0x59, 0xfc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2StreamMap *self, uint32 Stream) MapStream;
				public function HRESULT(ISBE2StreamMap *self, uint32 Stream) UnmapStream;
				public function HRESULT(ISBE2StreamMap *self, ISBE2EnumStream** ppStreams) EnumMappedStreams;
			}
		}
		[CRepr]
		public struct ISBE2EnumStream : IUnknown
		{
			public const new Guid IID = .(0xf7611092, 0x9fbc, 0x46ec, 0xa7, 0xc7, 0x54, 0x8e, 0xa7, 0x8b, 0x71, 0xa4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2EnumStream *self, uint32 cRequest, SBE2_STREAM_DESC* pStreamDesc, uint32* pcReceived) Next;
				public function HRESULT(ISBE2EnumStream *self, uint32 cRecords) Skip;
				public function HRESULT(ISBE2EnumStream *self) Reset;
				public function HRESULT(ISBE2EnumStream *self, ISBE2EnumStream** ppIEnumStream) Clone;
			}
		}
		[CRepr]
		public struct ISBE2MediaTypeProfile : IUnknown
		{
			public const new Guid IID = .(0xf238267d, 0x4671, 0x40d7, 0x99, 0x7e, 0x25, 0xdc, 0x32, 0xcf, 0xed, 0x2a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2MediaTypeProfile *self, uint32* pCount) GetStreamCount;
				public function HRESULT(ISBE2MediaTypeProfile *self, uint32 Index, AM_MEDIA_TYPE** ppMediaType) GetStream;
				public function HRESULT(ISBE2MediaTypeProfile *self, AM_MEDIA_TYPE* pMediaType) AddStream;
				public function HRESULT(ISBE2MediaTypeProfile *self, uint32 Index) DeleteStream;
			}
		}
		[CRepr]
		public struct ISBE2FileScan : IUnknown
		{
			public const new Guid IID = .(0x3e2bf5a5, 0x4f96, 0x4899, 0xa1, 0xa3, 0x75, 0xe8, 0xbe, 0x9a, 0x5a, 0xc0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISBE2FileScan *self, PWSTR filename) RepairFile;
			}
		}
		[CRepr]
		public struct IMpeg2TableFilter : IUnknown
		{
			public const new Guid IID = .(0xbdcdd913, 0x9ecd, 0x4fb2, 0x81, 0xae, 0xad, 0xf7, 0x47, 0xea, 0x75, 0xa5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMpeg2TableFilter *self, uint16 p) AddPID;
				public function HRESULT(IMpeg2TableFilter *self, uint16 p, uint8 t) AddTable;
				public function HRESULT(IMpeg2TableFilter *self, uint16 p, uint8 t, uint16 e) AddExtension;
				public function HRESULT(IMpeg2TableFilter *self, uint16 p) RemovePID;
				public function HRESULT(IMpeg2TableFilter *self, uint16 p, uint8 t) RemoveTable;
				public function HRESULT(IMpeg2TableFilter *self, uint16 p, uint8 t, uint16 e) RemoveExtension;
			}
		}
		[CRepr]
		public struct IMpeg2Data : IUnknown
		{
			public const new Guid IID = .(0x9b396d40, 0xf380, 0x4e3c, 0xa5, 0x14, 0x1a, 0x82, 0xbf, 0x6e, 0xbf, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMpeg2Data *self, uint16 pid, uint8 tid, MPEG2_FILTER* pFilter, uint32 dwTimeout, ISectionList** ppSectionList) GetSection;
				public function HRESULT(IMpeg2Data *self, uint16 pid, uint8 tid, MPEG2_FILTER* pFilter, uint32 dwTimeout, ISectionList** ppSectionList) GetTable;
				public function HRESULT(IMpeg2Data *self, uint16 pid, uint8 tid, MPEG2_FILTER* pFilter, HANDLE hDataReadyEvent, IMpeg2Stream** ppMpegStream) GetStreamOfSections;
			}
		}
		[CRepr]
		public struct ISectionList : IUnknown
		{
			public const new Guid IID = .(0xafec1eb5, 0x2a64, 0x46c6, 0xbf, 0x4b, 0xae, 0x3c, 0xcb, 0x6a, 0xfd, 0xb0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISectionList *self, MPEG_REQUEST_TYPE requestType, IMpeg2Data* pMpeg2Data, MPEG_CONTEXT* pContext, uint16 pid, uint8 tid, MPEG2_FILTER* pFilter, uint32 timeout, HANDLE hDoneEvent) Initialize;
				public function HRESULT(ISectionList *self, MPEG_PACKET_LIST* pmplSections) InitializeWithRawSections;
				public function HRESULT(ISectionList *self) CancelPendingRequest;
				public function HRESULT(ISectionList *self, uint16* pCount) GetNumberOfSections;
				public function HRESULT(ISectionList *self, uint16 sectionNumber, uint32* pdwRawPacketLength, SECTION** ppSection) GetSectionData;
				public function HRESULT(ISectionList *self, uint16* pPid) GetProgramIdentifier;
				public function HRESULT(ISectionList *self, uint8* pTableId) GetTableIdentifier;
			}
		}
		[CRepr]
		public struct IMpeg2Stream : IUnknown
		{
			public const new Guid IID = .(0x400cc286, 0x32a0, 0x4ce4, 0x90, 0x41, 0x39, 0x57, 0x11, 0x25, 0xa6, 0x35);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMpeg2Stream *self, MPEG_REQUEST_TYPE requestType, IMpeg2Data* pMpeg2Data, MPEG_CONTEXT* pContext, uint16 pid, uint8 tid, MPEG2_FILTER* pFilter, HANDLE hDataReadyEvent) Initialize;
				public function HRESULT(IMpeg2Stream *self, MPEG_STREAM_BUFFER* pStreamBuffer) SupplyDataBuffer;
			}
		}
		[CRepr]
		public struct IGenericDescriptor : IUnknown
		{
			public const new Guid IID = .(0x6a5918f8, 0xa77a, 0x4f61, 0xae, 0xd0, 0x57, 0x02, 0xbd, 0xcd, 0xa3, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGenericDescriptor *self, uint8* pbDesc, int32 bCount) Initialize;
				public function HRESULT(IGenericDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IGenericDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IGenericDescriptor *self, uint8** ppbVal) GetBody;
			}
		}
		[CRepr]
		public struct IGenericDescriptor2 : IGenericDescriptor
		{
			public const new Guid IID = .(0xbf02fb7e, 0x9792, 0x4e10, 0xa6, 0x8d, 0x03, 0x3a, 0x2c, 0xc2, 0x46, 0xa5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IGenericDescriptor.VTable
			{
				public function HRESULT(IGenericDescriptor2 *self, uint8* pbDesc, uint16 wCount) Initialize;
				public function HRESULT(IGenericDescriptor2 *self, uint16* pwVal) GetLength;
			}
		}
		[CRepr]
		public struct IPAT : IUnknown
		{
			public const new Guid IID = .(0x6623b511, 0x4b5f, 0x43c3, 0x9a, 0x01, 0xe8, 0xff, 0x84, 0x18, 0x80, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPAT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IPAT *self, uint16* pwVal) GetTransportStreamId;
				public function HRESULT(IPAT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IPAT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IPAT *self, uint32 dwIndex, uint16* pwVal) GetRecordProgramNumber;
				public function HRESULT(IPAT *self, uint32 dwIndex, uint16* pwVal) GetRecordProgramMapPid;
				public function HRESULT(IPAT *self, uint16 wProgramNumber, uint16* pwVal) FindRecordProgramMapPid;
				public function HRESULT(IPAT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IPAT *self, IPAT** ppPAT) GetNextTable;
				public function HRESULT(IPAT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IPAT *self) ConvertNextToCurrent;
			}
		}
		[CRepr]
		public struct ICAT : IUnknown
		{
			public const new Guid IID = .(0x7c6995fb, 0x2a31, 0x4bd7, 0x95, 0x3e, 0xb1, 0xad, 0x7f, 0xb7, 0xd3, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICAT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(ICAT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(ICAT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(ICAT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(ICAT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(ICAT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(ICAT *self, uint32 dwTimeout, ICAT** ppCAT) GetNextTable;
				public function HRESULT(ICAT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(ICAT *self) ConvertNextToCurrent;
			}
		}
		[CRepr]
		public struct IPMT : IUnknown
		{
			public const new Guid IID = .(0x01f3b398, 0x9527, 0x4736, 0x94, 0xdb, 0x51, 0x95, 0x87, 0x8e, 0x97, 0xa8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPMT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IPMT *self, uint16* pwVal) GetProgramNumber;
				public function HRESULT(IPMT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IPMT *self, uint16* pPidVal) GetPcrPid;
				public function HRESULT(IPMT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IPMT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IPMT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(IPMT *self, uint16* pwVal) GetCountOfRecords;
				public function HRESULT(IPMT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordStreamType;
				public function HRESULT(IPMT *self, uint32 dwRecordIndex, uint16* pPidVal) GetRecordElementaryPid;
				public function HRESULT(IPMT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IPMT *self, uint32 dwRecordIndex, uint32 dwDescIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IPMT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IPMT *self, DSMCC_ELEMENT** ppDSMCCList, uint32* puiCount) QueryServiceGatewayInfo;
				public function HRESULT(IPMT *self, MPE_ELEMENT** ppMPEList, uint32* puiCount) QueryMPEInfo;
				public function HRESULT(IPMT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IPMT *self, IPMT** ppPMT) GetNextTable;
				public function HRESULT(IPMT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IPMT *self) ConvertNextToCurrent;
			}
		}
		[CRepr]
		public struct ITSDT : IUnknown
		{
			public const new Guid IID = .(0xd19bdb43, 0x405b, 0x4a7c, 0xa7, 0x91, 0xc8, 0x91, 0x10, 0xc3, 0x31, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITSDT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(ITSDT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(ITSDT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(ITSDT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(ITSDT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(ITSDT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(ITSDT *self, ITSDT** ppTSDT) GetNextTable;
				public function HRESULT(ITSDT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(ITSDT *self) ConvertNextToCurrent;
			}
		}
		[CRepr]
		public struct IPSITables : IUnknown
		{
			public const new Guid IID = .(0x919f24c5, 0x7b14, 0x42ac, 0xa4, 0xb0, 0x2a, 0xe0, 0x8d, 0xaf, 0x00, 0xac);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPSITables *self, uint32 dwTSID, uint32 dwTID_PID, uint32 dwHashedVer, uint32 dwPara4, IUnknown** ppIUnknown) GetTable;
			}
		}
		[CRepr]
		public struct IAtscPsipParser : IUnknown
		{
			public const new Guid IID = .(0xb2c98995, 0x5eb2, 0x4fb1, 0xb4, 0x06, 0xf3, 0xe8, 0xe2, 0x02, 0x6a, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAtscPsipParser *self, IUnknown* punkMpeg2Data) Initialize;
				public function HRESULT(IAtscPsipParser *self, IPAT** ppPAT) GetPAT;
				public function HRESULT(IAtscPsipParser *self, uint32 dwTimeout, ICAT** ppCAT) GetCAT;
				public function HRESULT(IAtscPsipParser *self, uint16 pid, uint16* pwProgramNumber, IPMT** ppPMT) GetPMT;
				public function HRESULT(IAtscPsipParser *self, ITSDT** ppTSDT) GetTSDT;
				public function HRESULT(IAtscPsipParser *self, IATSC_MGT** ppMGT) GetMGT;
				public function HRESULT(IAtscPsipParser *self, uint8 tableId, BOOL fGetNextTable, IATSC_VCT** ppVCT) GetVCT;
				public function HRESULT(IAtscPsipParser *self, uint16 pid, uint16* pwSourceId, uint32 dwTimeout, IATSC_EIT** ppEIT) GetEIT;
				public function HRESULT(IAtscPsipParser *self, uint16 pid, uint16* wSourceId, uint16* pwEventId, IATSC_ETT** ppETT) GetETT;
				public function HRESULT(IAtscPsipParser *self, IATSC_STT** ppSTT) GetSTT;
				public function HRESULT(IAtscPsipParser *self, uint16 pid, ISCTE_EAS** ppEAS) GetEAS;
			}
		}
		[CRepr]
		public struct IATSC_MGT : IUnknown
		{
			public const new Guid IID = .(0x8877dabd, 0xc137, 0x4073, 0x97, 0xe3, 0x77, 0x94, 0x07, 0xa5, 0xd8, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IATSC_MGT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IATSC_MGT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IATSC_MGT *self, uint8* pbVal) GetProtocolVersion;
				public function HRESULT(IATSC_MGT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IATSC_MGT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordType;
				public function HRESULT(IATSC_MGT *self, uint32 dwRecordIndex, uint16* ppidVal) GetRecordTypePid;
				public function HRESULT(IATSC_MGT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordVersionNumber;
				public function HRESULT(IATSC_MGT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IATSC_MGT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IATSC_MGT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IATSC_MGT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IATSC_MGT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IATSC_MGT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
			}
		}
		[CRepr]
		public struct IATSC_VCT : IUnknown
		{
			public const new Guid IID = .(0x26879a18, 0x32f9, 0x46c6, 0x91, 0xf0, 0xfb, 0x64, 0x79, 0x27, 0x0e, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IATSC_VCT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IATSC_VCT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IATSC_VCT *self, uint16* pwVal) GetTransportStreamId;
				public function HRESULT(IATSC_VCT *self, uint8* pbVal) GetProtocolVersion;
				public function HRESULT(IATSC_VCT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, PWSTR* pwsName) GetRecordName;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordMajorChannelNumber;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordMinorChannelNumber;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordModulationMode;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCarrierFrequency;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordTransportStreamId;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordProgramNumber;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordEtmLocation;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordIsAccessControlledBitSet;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordIsHiddenBitSet;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordIsPathSelectBitSet;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordIsOutOfBandBitSet;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordIsHideGuideBitSet;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordServiceType;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordSourceId;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IATSC_VCT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IATSC_VCT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IATSC_VCT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IATSC_VCT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
			}
		}
		[CRepr]
		public struct IATSC_EIT : IUnknown
		{
			public const new Guid IID = .(0xd7c212d7, 0x76a2, 0x4b4b, 0xaa, 0x56, 0x84, 0x68, 0x79, 0xa8, 0x00, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IATSC_EIT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IATSC_EIT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IATSC_EIT *self, uint16* pwVal) GetSourceId;
				public function HRESULT(IATSC_EIT *self, uint8* pbVal) GetProtocolVersion;
				public function HRESULT(IATSC_EIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordEventId;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, MPEG_DATE_AND_TIME* pmdtVal) GetRecordStartTime;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordEtmLocation;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, MPEG_TIME* pmdVal) GetRecordDuration;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, uint32* pdwLength, uint8** ppText) GetRecordTitleText;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IATSC_EIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
			}
		}
		[CRepr]
		public struct IATSC_ETT : IUnknown
		{
			public const new Guid IID = .(0x5a142cc9, 0xb8cf, 0x4a86, 0xa0, 0x40, 0xe9, 0xca, 0xdf, 0x3e, 0xf3, 0xe7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IATSC_ETT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IATSC_ETT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IATSC_ETT *self, uint8* pbVal) GetProtocolVersion;
				public function HRESULT(IATSC_ETT *self, uint32* pdwVal) GetEtmId;
				public function HRESULT(IATSC_ETT *self, uint32* pdwLength, uint8** ppText) GetExtendedMessageText;
			}
		}
		[CRepr]
		public struct IATSC_STT : IUnknown
		{
			public const new Guid IID = .(0x6bf42423, 0x217d, 0x4d6f, 0x81, 0xe1, 0x3a, 0x7b, 0x36, 0x0e, 0xc8, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IATSC_STT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IATSC_STT *self, uint8* pbVal) GetProtocolVersion;
				public function HRESULT(IATSC_STT *self, MPEG_DATE_AND_TIME* pmdtSystemTime) GetSystemTime;
				public function HRESULT(IATSC_STT *self, uint8* pbVal) GetGpsUtcOffset;
				public function HRESULT(IATSC_STT *self, uint16* pwVal) GetDaylightSavings;
				public function HRESULT(IATSC_STT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IATSC_STT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IATSC_STT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
			}
		}
		[CRepr]
		public struct ISCTE_EAS : IUnknown
		{
			public const new Guid IID = .(0x1ff544d6, 0x161d, 0x4fae, 0x9f, 0xaa, 0x4f, 0x9f, 0x49, 0x2a, 0xe9, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISCTE_EAS *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetSequencyNumber;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetProtocolVersion;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetEASEventID;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetOriginatorCode;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetEASEventCodeLen;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetEASEventCode;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetRawNatureOfActivationTextLen;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetRawNatureOfActivationText;
				public function HRESULT(ISCTE_EAS *self, BSTR bstrIS0639code, BSTR* pbstrString) GetNatureOfActivationText;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetTimeRemaining;
				public function HRESULT(ISCTE_EAS *self, uint32* pdwVal) GetStartTime;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetDuration;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetAlertPriority;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetDetailsOOBSourceID;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetDetailsMajor;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetDetailsMinor;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetDetailsAudioOOBSourceID;
				public function HRESULT(ISCTE_EAS *self, BSTR bstrIS0639code, BSTR* pbstrString) GetAlertText;
				public function HRESULT(ISCTE_EAS *self, uint16* pwVal) GetRawAlertTextLen;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetRawAlertText;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetLocationCount;
				public function HRESULT(ISCTE_EAS *self, uint8 bIndex, uint8* pbState, uint8* pbCountySubdivision, uint16* pwCounty) GetLocationCodes;
				public function HRESULT(ISCTE_EAS *self, uint8* pbVal) GetExceptionCount;
				public function HRESULT(ISCTE_EAS *self, uint8 bIndex, uint8* pbIBRef, uint16* pwFirst, uint16* pwSecond) GetExceptionService;
				public function HRESULT(ISCTE_EAS *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(ISCTE_EAS *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(ISCTE_EAS *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
			}
		}
		[CRepr]
		public struct IAtscContentAdvisoryDescriptor : IUnknown
		{
			public const new Guid IID = .(0xff76e60c, 0x0283, 0x43ea, 0xba, 0x32, 0xb4, 0x22, 0x23, 0x85, 0x47, 0xee);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8* pbVal) GetRatingRegionCount;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8 bIndex, uint8* pbVal) GetRecordRatingRegion;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8 bIndex, uint8* pbVal) GetRecordRatedDimensions;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8 bIndexOuter, uint8 bIndexInner, uint8* pbVal) GetRecordRatingDimension;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8 bIndexOuter, uint8 bIndexInner, uint8* pbVal) GetRecordRatingValue;
				public function HRESULT(IAtscContentAdvisoryDescriptor *self, uint8 bIndex, uint8* pbLength, uint8** ppText) GetRecordRatingDescriptionText;
			}
		}
		[CRepr]
		public struct ICaptionServiceDescriptor : IUnknown
		{
			public const new Guid IID = .(0x40834007, 0x6834, 0x46f0, 0xbd, 0x45, 0xd5, 0xf6, 0xa6, 0xbe, 0x25, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICaptionServiceDescriptor *self, uint8* pbVal) GetNumberOfServices;
				public function HRESULT(ICaptionServiceDescriptor *self, uint8 bIndex, uint8* LangCode) GetLanguageCode;
				public function HRESULT(ICaptionServiceDescriptor *self, uint8 bIndex, uint8* pbVal) GetCaptionServiceNumber;
				public function HRESULT(ICaptionServiceDescriptor *self, uint8 bIndex, uint8* pbVal) GetCCType;
				public function HRESULT(ICaptionServiceDescriptor *self, uint8 bIndex, uint8* pbVal) GetEasyReader;
				public function HRESULT(ICaptionServiceDescriptor *self, uint8 bIndex, uint8* pbVal) GetWideAspectRatio;
			}
		}
		[CRepr]
		public struct IServiceLocationDescriptor : IUnknown
		{
			public const new Guid IID = .(0x58c3c827, 0x9d91, 0x4215, 0xbf, 0xf3, 0x82, 0x0a, 0x49, 0xf0, 0x90, 0x4c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IServiceLocationDescriptor *self, uint16* pwVal) GetPCR_PID;
				public function HRESULT(IServiceLocationDescriptor *self, uint8* pbVal) GetNumberOfElements;
				public function HRESULT(IServiceLocationDescriptor *self, uint8 bIndex, uint8* pbVal) GetElementStreamType;
				public function HRESULT(IServiceLocationDescriptor *self, uint8 bIndex, uint16* pwVal) GetElementPID;
				public function HRESULT(IServiceLocationDescriptor *self, uint8 bIndex, uint8* LangCode) GetElementLanguageCode;
			}
		}
		[CRepr]
		public struct IAttributeSet : IUnknown
		{
			public const new Guid IID = .(0x583ec3cc, 0x4960, 0x4857, 0x98, 0x2b, 0x41, 0xa3, 0x3e, 0xa0, 0xa0, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAttributeSet *self, Guid guidAttribute, uint8* pbAttribute, uint32 dwAttributeLength) SetAttrib;
			}
		}
		[CRepr]
		public struct IAttributeGet : IUnknown
		{
			public const new Guid IID = .(0x52dbd1ec, 0xe48f, 0x4528, 0x92, 0x32, 0xf4, 0x42, 0xa6, 0x8f, 0x0a, 0xe1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAttributeGet *self, int32* plCount) GetCount;
				public function HRESULT(IAttributeGet *self, int32 lIndex, Guid* pguidAttribute, uint8* pbAttribute, uint32* pdwAttributeLength) GetAttribIndexed;
				public function HRESULT(IAttributeGet *self, Guid guidAttribute, uint8* pbAttribute, uint32* pdwAttributeLength) GetAttrib;
			}
		}
		[CRepr]
		public struct IDvbSiParser : IUnknown
		{
			public const new Guid IID = .(0xb758a7bd, 0x14dc, 0x449d, 0xb8, 0x28, 0x35, 0x90, 0x9a, 0xcb, 0x3b, 0x1e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbSiParser *self, IUnknown* punkMpeg2Data) Initialize;
				public function HRESULT(IDvbSiParser *self, IPAT** ppPAT) GetPAT;
				public function HRESULT(IDvbSiParser *self, uint32 dwTimeout, ICAT** ppCAT) GetCAT;
				public function HRESULT(IDvbSiParser *self, uint16 pid, uint16* pwProgramNumber, IPMT** ppPMT) GetPMT;
				public function HRESULT(IDvbSiParser *self, ITSDT** ppTSDT) GetTSDT;
				public function HRESULT(IDvbSiParser *self, uint8 tableId, uint16* pwNetworkId, IDVB_NIT** ppNIT) GetNIT;
				public function HRESULT(IDvbSiParser *self, uint8 tableId, uint16* pwTransportStreamId, IDVB_SDT** ppSDT) GetSDT;
				public function HRESULT(IDvbSiParser *self, uint8 tableId, uint16* pwServiceId, IDVB_EIT** ppEIT) GetEIT;
				public function HRESULT(IDvbSiParser *self, uint16* pwBouquetId, IDVB_BAT** ppBAT) GetBAT;
				public function HRESULT(IDvbSiParser *self, uint32 dwTimeout, IDVB_RST** ppRST) GetRST;
				public function HRESULT(IDvbSiParser *self, uint16 pid, uint32 dwTimeout, IDVB_ST** ppST) GetST;
				public function HRESULT(IDvbSiParser *self, IDVB_TDT** ppTDT) GetTDT;
				public function HRESULT(IDvbSiParser *self, IDVB_TOT** ppTOT) GetTOT;
				public function HRESULT(IDvbSiParser *self, uint32 dwTimeout, IDVB_DIT** ppDIT) GetDIT;
				public function HRESULT(IDvbSiParser *self, uint32 dwTimeout, IDVB_SIT** ppSIT) GetSIT;
			}
		}
		[CRepr]
		public struct IDvbSiParser2 : IDvbSiParser
		{
			public const new Guid IID = .(0x0ac5525f, 0xf816, 0x42f4, 0x93, 0xba, 0x4c, 0x0f, 0x32, 0xf4, 0x6e, 0x54);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDvbSiParser.VTable
			{
				public function HRESULT(IDvbSiParser2 *self, uint8 tableId, uint16* pwServiceId, uint8* pbSegment, IDVB_EIT2** ppEIT) GetEIT2;
			}
		}
		[CRepr]
		public struct IIsdbSiParser2 : IDvbSiParser2
		{
			public const new Guid IID = .(0x900e4bb7, 0x18cd, 0x453f, 0x98, 0xbe, 0x3b, 0xe6, 0xaa, 0x21, 0x17, 0x72);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDvbSiParser2.VTable
			{
				public function HRESULT(IIsdbSiParser2 *self, uint8 tableId, uint16* pwTransportStreamId, IISDB_SDT** ppSDT) GetSDT;
				public function HRESULT(IIsdbSiParser2 *self, uint8 tableId, uint16* pwOriginalNetworkId, IISDB_BIT** ppBIT) GetBIT;
				public function HRESULT(IIsdbSiParser2 *self, uint8 tableId, uint16* pwOriginalNetworkId, IISDB_NBIT** ppNBIT) GetNBIT;
				public function HRESULT(IIsdbSiParser2 *self, uint8 tableId, uint16* pwOriginalServiceId, IISDB_LDT** ppLDT) GetLDT;
				public function HRESULT(IIsdbSiParser2 *self, uint8 tableId, uint16* pwTableIdExt, IISDB_SDTT** ppSDTT) GetSDTT;
				public function HRESULT(IIsdbSiParser2 *self, uint8 tableId, uint8 bSectionNumber, uint16* pwDownloadDataId, IISDB_CDT** ppCDT) GetCDT;
				public function HRESULT(IIsdbSiParser2 *self, uint16 pid, uint16 wTableIdExt, IISDB_EMM** ppEMM) GetEMM;
			}
		}
		[CRepr]
		public struct IDVB_NIT : IUnknown
		{
			public const new Guid IID = .(0xc64935f4, 0x29e4, 0x4e22, 0x91, 0x1a, 0x63, 0xf7, 0xf5, 0x5c, 0xb0, 0x97);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_NIT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IDVB_NIT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IDVB_NIT *self, uint16* pwVal) GetNetworkId;
				public function HRESULT(IDVB_NIT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IDVB_NIT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IDVB_NIT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(IDVB_NIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IDVB_NIT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordTransportStreamId;
				public function HRESULT(IDVB_NIT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordOriginalNetworkId;
				public function HRESULT(IDVB_NIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IDVB_NIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IDVB_NIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IDVB_NIT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IDVB_NIT *self, IDVB_NIT** ppNIT) GetNextTable;
				public function HRESULT(IDVB_NIT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IDVB_NIT *self) ConvertNextToCurrent;
				public function HRESULT(IDVB_NIT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IDVB_SDT : IUnknown
		{
			public const new Guid IID = .(0x02cad8d3, 0xfe43, 0x48e2, 0x90, 0xbd, 0x45, 0x0e, 0xd9, 0xa8, 0xa5, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_SDT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IDVB_SDT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IDVB_SDT *self, uint16* pwVal) GetTransportStreamId;
				public function HRESULT(IDVB_SDT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IDVB_SDT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordServiceId;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordEITScheduleFlag;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordEITPresentFollowingFlag;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordRunningStatus;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordFreeCAMode;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IDVB_SDT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IDVB_SDT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IDVB_SDT *self, IDVB_SDT** ppSDT) GetNextTable;
				public function HRESULT(IDVB_SDT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IDVB_SDT *self) ConvertNextToCurrent;
				public function HRESULT(IDVB_SDT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IISDB_SDT : IDVB_SDT
		{
			public const new Guid IID = .(0x3f3dc9a2, 0xbb32, 0x4fb9, 0xae, 0x9e, 0xd8, 0x56, 0x84, 0x89, 0x27, 0xa3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVB_SDT.VTable
			{
				public function HRESULT(IISDB_SDT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordEITUserDefinedFlags;
			}
		}
		[CRepr]
		public struct IDVB_EIT : IUnknown
		{
			public const new Guid IID = .(0x442db029, 0x02cb, 0x4495, 0x8b, 0x92, 0x1c, 0x13, 0x37, 0x5b, 0xce, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_EIT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IDVB_EIT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IDVB_EIT *self, uint16* pwVal) GetServiceId;
				public function HRESULT(IDVB_EIT *self, uint16* pwVal) GetTransportStreamId;
				public function HRESULT(IDVB_EIT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IDVB_EIT *self, uint8* pbVal) GetSegmentLastSectionNumber;
				public function HRESULT(IDVB_EIT *self, uint8* pbVal) GetLastTableId;
				public function HRESULT(IDVB_EIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordEventId;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, MPEG_DATE_AND_TIME* pmdtVal) GetRecordStartTime;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, MPEG_TIME* pmdVal) GetRecordDuration;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordRunningStatus;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, BOOL* pfVal) GetRecordFreeCAMode;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IDVB_EIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IDVB_EIT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IDVB_EIT *self, IDVB_EIT** ppEIT) GetNextTable;
				public function HRESULT(IDVB_EIT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IDVB_EIT *self) ConvertNextToCurrent;
				public function HRESULT(IDVB_EIT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IDVB_EIT2 : IDVB_EIT
		{
			public const new Guid IID = .(0x61a389e0, 0x9b9e, 0x4ba0, 0xae, 0xea, 0x5d, 0xdd, 0x15, 0x98, 0x20, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDVB_EIT.VTable
			{
				public function HRESULT(IDVB_EIT2 *self, uint8* pbTid, uint8* pbSegment) GetSegmentInfo;
				public function HRESULT(IDVB_EIT2 *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordSection;
			}
		}
		[CRepr]
		public struct IDVB_BAT : IUnknown
		{
			public const new Guid IID = .(0xece9bb0c, 0x43b6, 0x4558, 0xa0, 0xec, 0x18, 0x12, 0xc3, 0x4c, 0xd6, 0xca);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_BAT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IDVB_BAT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IDVB_BAT *self, uint16* pwVal) GetBouquetId;
				public function HRESULT(IDVB_BAT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IDVB_BAT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IDVB_BAT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(IDVB_BAT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IDVB_BAT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordTransportStreamId;
				public function HRESULT(IDVB_BAT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordOriginalNetworkId;
				public function HRESULT(IDVB_BAT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IDVB_BAT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IDVB_BAT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IDVB_BAT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IDVB_BAT *self, IDVB_BAT** ppBAT) GetNextTable;
				public function HRESULT(IDVB_BAT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IDVB_BAT *self) ConvertNextToCurrent;
			}
		}
		[CRepr]
		public struct IDVB_RST : IUnknown
		{
			public const new Guid IID = .(0xf47dcd04, 0x1e23, 0x4fb7, 0x9f, 0x96, 0xb4, 0x0e, 0xea, 0xd1, 0x0b, 0x2b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_RST *self, ISectionList* pSectionList) Initialize;
				public function HRESULT(IDVB_RST *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IDVB_RST *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordTransportStreamId;
				public function HRESULT(IDVB_RST *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordOriginalNetworkId;
				public function HRESULT(IDVB_RST *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordServiceId;
				public function HRESULT(IDVB_RST *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordEventId;
				public function HRESULT(IDVB_RST *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordRunningStatus;
			}
		}
		[CRepr]
		public struct IDVB_ST : IUnknown
		{
			public const new Guid IID = .(0x4d5b9f23, 0x2a02, 0x45de, 0xbc, 0xda, 0x5d, 0x5d, 0xbf, 0xbf, 0xbe, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_ST *self, ISectionList* pSectionList) Initialize;
				public function HRESULT(IDVB_ST *self, uint16* pwVal) GetDataLength;
				public function HRESULT(IDVB_ST *self, uint8** ppData) GetData;
			}
		}
		[CRepr]
		public struct IDVB_TDT : IUnknown
		{
			public const new Guid IID = .(0x0780dc7d, 0xd55c, 0x4aef, 0x97, 0xe6, 0x6b, 0x75, 0x90, 0x6e, 0x27, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_TDT *self, ISectionList* pSectionList) Initialize;
				public function HRESULT(IDVB_TDT *self, MPEG_DATE_AND_TIME* pmdtVal) GetUTCTime;
			}
		}
		[CRepr]
		public struct IDVB_TOT : IUnknown
		{
			public const new Guid IID = .(0x83295d6a, 0xfaba, 0x4ee1, 0x9b, 0x15, 0x80, 0x67, 0x69, 0x69, 0x10, 0xae);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_TOT *self, ISectionList* pSectionList) Initialize;
				public function HRESULT(IDVB_TOT *self, MPEG_DATE_AND_TIME* pmdtVal) GetUTCTime;
				public function HRESULT(IDVB_TOT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IDVB_TOT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IDVB_TOT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
			}
		}
		[CRepr]
		public struct IDVB_DIT : IUnknown
		{
			public const new Guid IID = .(0x91bffdf9, 0x9432, 0x410f, 0x86, 0xef, 0x1c, 0x22, 0x8e, 0xd0, 0xad, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_DIT *self, ISectionList* pSectionList) Initialize;
				public function HRESULT(IDVB_DIT *self, BOOL* pfVal) GetTransitionFlag;
			}
		}
		[CRepr]
		public struct IDVB_SIT : IUnknown
		{
			public const new Guid IID = .(0x68cdce53, 0x8bea, 0x45c2, 0x9d, 0x9d, 0xac, 0xf5, 0x75, 0xa0, 0x89, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDVB_SIT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IDVB_SIT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IDVB_SIT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IDVB_SIT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IDVB_SIT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(IDVB_SIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IDVB_SIT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordServiceId;
				public function HRESULT(IDVB_SIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordRunningStatus;
				public function HRESULT(IDVB_SIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IDVB_SIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IDVB_SIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IDVB_SIT *self, HANDLE hNextTableAvailable) RegisterForNextTable;
				public function HRESULT(IDVB_SIT *self, uint32 dwTimeout, IDVB_SIT** ppSIT) GetNextTable;
				public function HRESULT(IDVB_SIT *self, HANDLE hNextTableIsCurrent) RegisterForWhenCurrent;
				public function HRESULT(IDVB_SIT *self) ConvertNextToCurrent;
			}
		}
		[CRepr]
		public struct IISDB_BIT : IUnknown
		{
			public const new Guid IID = .(0x537cd71e, 0x0e46, 0x4173, 0x90, 0x01, 0xba, 0x04, 0x3f, 0x3e, 0x49, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IISDB_BIT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IISDB_BIT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IISDB_BIT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IISDB_BIT *self, uint8* pbVal) GetBroadcastViewPropriety;
				public function HRESULT(IISDB_BIT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IISDB_BIT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IISDB_BIT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(IISDB_BIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IISDB_BIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordBroadcasterId;
				public function HRESULT(IISDB_BIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IISDB_BIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IISDB_BIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IISDB_BIT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IISDB_NBIT : IUnknown
		{
			public const new Guid IID = .(0x1b1863ef, 0x08f1, 0x40b7, 0xa5, 0x59, 0x3b, 0x1e, 0xff, 0x8c, 0xaf, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IISDB_NBIT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IISDB_NBIT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IISDB_NBIT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IISDB_NBIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordInformationId;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordInformationType;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordDescriptionBodyLocation;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordMessageSectionNumber;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordUserDefined;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordNumberOfKeys;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8** pbKeys) GetRecordKeys;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IISDB_NBIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IISDB_NBIT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IISDB_LDT : IUnknown
		{
			public const new Guid IID = .(0x141a546b, 0x02ff, 0x4fb9, 0xa3, 0xa3, 0x2f, 0x07, 0x4b, 0x74, 0xa9, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IISDB_LDT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IISDB_LDT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IISDB_LDT *self, uint16* pwVal) GetOriginalServiceId;
				public function HRESULT(IISDB_LDT *self, uint16* pwVal) GetTransportStreamId;
				public function HRESULT(IISDB_LDT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IISDB_LDT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IISDB_LDT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordDescriptionId;
				public function HRESULT(IISDB_LDT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IISDB_LDT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IISDB_LDT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IISDB_LDT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IISDB_SDTT : IUnknown
		{
			public const new Guid IID = .(0xee60ef2d, 0x813a, 0x4dc7, 0xbf, 0x92, 0xea, 0x13, 0xda, 0xc8, 0x53, 0x13);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IISDB_SDTT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IISDB_SDTT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IISDB_SDTT *self, uint16* pwVal) GetTableIdExt;
				public function HRESULT(IISDB_SDTT *self, uint16* pwVal) GetTransportStreamId;
				public function HRESULT(IISDB_SDTT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IISDB_SDTT *self, uint16* pwVal) GetServiceId;
				public function HRESULT(IISDB_SDTT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordGroup;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordTargetVersion;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint16* pwVal) GetRecordNewVersion;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordDownloadLevel;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordVersionIndicator;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint8* pbVal) GetRecordScheduleTimeShiftInformation;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfSchedules;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint32 dwIndex, MPEG_DATE_AND_TIME* pmdtVal) GetRecordStartTimeByIndex;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint32 dwIndex, MPEG_TIME* pmdVal) GetRecordDurationByIndex;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IISDB_SDTT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
				public function HRESULT(IISDB_SDTT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IISDB_CDT : IUnknown
		{
			public const new Guid IID = .(0x25fa92c2, 0x8b80, 0x4787, 0xa8, 0x41, 0x3a, 0x0e, 0x8f, 0x17, 0x98, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IISDB_CDT *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData, uint8 bSectionNumber) Initialize;
				public function HRESULT(IISDB_CDT *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IISDB_CDT *self, uint16* pwVal) GetDownloadDataId;
				public function HRESULT(IISDB_CDT *self, uint8* pbVal) GetSectionNumber;
				public function HRESULT(IISDB_CDT *self, uint16* pwVal) GetOriginalNetworkId;
				public function HRESULT(IISDB_CDT *self, uint8* pbVal) GetDataType;
				public function HRESULT(IISDB_CDT *self, uint32* pdwVal) GetCountOfTableDescriptors;
				public function HRESULT(IISDB_CDT *self, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetTableDescriptorByIndex;
				public function HRESULT(IISDB_CDT *self, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetTableDescriptorByTag;
				public function HRESULT(IISDB_CDT *self, uint32* pdwVal) GetSizeOfDataModule;
				public function HRESULT(IISDB_CDT *self, uint8** pbData) GetDataModule;
				public function HRESULT(IISDB_CDT *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IISDB_EMM : IUnknown
		{
			public const new Guid IID = .(0x0edb556d, 0x43ad, 0x4938, 0x96, 0x68, 0x32, 0x1b, 0x2f, 0xfe, 0xcf, 0xd3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IISDB_EMM *self, ISectionList* pSectionList, IMpeg2Data* pMPEGData) Initialize;
				public function HRESULT(IISDB_EMM *self, uint8* pbVal) GetVersionNumber;
				public function HRESULT(IISDB_EMM *self, uint16* pwVal) GetTableIdExtension;
				public function HRESULT(IISDB_EMM *self, uint16* pwBufferLength, uint8* pbBuffer) GetDataBytes;
				public function HRESULT(IISDB_EMM *self, uint16* pwLength, uint8** ppbMessage) GetSharedEmmMessage;
				public function HRESULT(IISDB_EMM *self, IUnknown* pUnknown, uint16* pwLength, uint8** ppbMessage) GetIndividualEmmMessage;
				public function HRESULT(IISDB_EMM *self, uint32* pdwVersionHash) GetVersionHash;
			}
		}
		[CRepr]
		public struct IDvbServiceAttributeDescriptor : IUnknown
		{
			public const new Guid IID = .(0x0f37bd92, 0xd6a1, 0x4854, 0xb9, 0x50, 0x3a, 0x96, 0x9d, 0x27, 0xf3, 0x0e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbServiceAttributeDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbServiceAttributeDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbServiceAttributeDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbServiceAttributeDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetRecordServiceId;
				public function HRESULT(IDvbServiceAttributeDescriptor *self, uint8 bRecordIndex, BOOL* pfVal) GetRecordNumericSelectionFlag;
				public function HRESULT(IDvbServiceAttributeDescriptor *self, uint8 bRecordIndex, BOOL* pfVal) GetRecordVisibleServiceFlag;
			}
		}
		[CRepr]
		public struct IDvbContentIdentifierDescriptor : IUnknown
		{
			public const new Guid IID = .(0x05e0c1ea, 0xf661, 0x4053, 0x9f, 0xbf, 0xd9, 0x3b, 0x28, 0x35, 0x98, 0x38);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbContentIdentifierDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbContentIdentifierDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbContentIdentifierDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbContentIdentifierDescriptor *self, uint8 bRecordIndex, uint8* pbType, uint8* pbLocation, uint8* pbLength, uint8** ppbBytes) GetRecordCrid;
			}
		}
		[CRepr]
		public struct IDvbDefaultAuthorityDescriptor : IUnknown
		{
			public const new Guid IID = .(0x05ec24d1, 0x3a31, 0x44e7, 0xb4, 0x08, 0x67, 0xc6, 0x0a, 0x35, 0x22, 0x76);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbDefaultAuthorityDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbDefaultAuthorityDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbDefaultAuthorityDescriptor *self, uint8* pbLength, uint8** ppbBytes) GetDefaultAuthority;
			}
		}
		[CRepr]
		public struct IDvbSatelliteDeliverySystemDescriptor : IUnknown
		{
			public const new Guid IID = .(0x02f2225a, 0x805b, 0x4ec5, 0xa9, 0xa6, 0xf9, 0xb5, 0x91, 0x3c, 0xd4, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint32* pdwVal) GetFrequency;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint16* pwVal) GetOrbitalPosition;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint8* pbVal) GetWestEastFlag;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint8* pbVal) GetPolarization;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint8* pbVal) GetModulation;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint32* pdwVal) GetSymbolRate;
				public function HRESULT(IDvbSatelliteDeliverySystemDescriptor *self, uint8* pbVal) GetFECInner;
			}
		}
		[CRepr]
		public struct IDvbCableDeliverySystemDescriptor : IUnknown
		{
			public const new Guid IID = .(0xdfb98e36, 0x9e1a, 0x4862, 0x99, 0x46, 0x99, 0x3a, 0x4e, 0x59, 0x01, 0x7b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint32* pdwVal) GetFrequency;
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint8* pbVal) GetFECOuter;
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint8* pbVal) GetModulation;
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint32* pdwVal) GetSymbolRate;
				public function HRESULT(IDvbCableDeliverySystemDescriptor *self, uint8* pbVal) GetFECInner;
			}
		}
		[CRepr]
		public struct IDvbTerrestrialDeliverySystemDescriptor : IUnknown
		{
			public const new Guid IID = .(0xed7e1b91, 0xd12e, 0x420c, 0xb4, 0x1d, 0xa4, 0x9d, 0x84, 0xfe, 0x18, 0x23);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint32* pdwVal) GetCentreFrequency;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetBandwidth;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetConstellation;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetHierarchyInformation;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetCodeRateHPStream;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetCodeRateLPStream;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetGuardInterval;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetTransmissionMode;
				public function HRESULT(IDvbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetOtherFrequencyFlag;
			}
		}
		[CRepr]
		public struct IDvbTerrestrial2DeliverySystemDescriptor : IUnknown
		{
			public const new Guid IID = .(0x20ee9be9, 0xcd57, 0x49ab, 0x8f, 0x6e, 0x1d, 0x07, 0xae, 0xb8, 0xe4, 0x82);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetTagExtension;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint32* pdwVal) GetCentreFrequency;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetPLPId;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint16* pwVal) GetT2SystemId;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetMultipleInputMode;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetBandwidth;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetGuardInterval;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetTransmissionMode;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint16* pwVal) GetCellId;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetOtherFrequencyFlag;
				public function HRESULT(IDvbTerrestrial2DeliverySystemDescriptor *self, uint8* pbVal) GetTFSFlag;
			}
		}
		[CRepr]
		public struct IDvbFrequencyListDescriptor : IUnknown
		{
			public const new Guid IID = .(0x1cadb613, 0xe1dd, 0x4512, 0xaf, 0xa8, 0xbb, 0x7a, 0x00, 0x7e, 0xf8, 0xb1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbFrequencyListDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbFrequencyListDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbFrequencyListDescriptor *self, uint8* pbVal) GetCodingType;
				public function HRESULT(IDvbFrequencyListDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbFrequencyListDescriptor *self, uint8 bRecordIndex, uint32* pdwVal) GetRecordCentreFrequency;
			}
		}
		[CRepr]
		public struct IDvbPrivateDataSpecifierDescriptor : IUnknown
		{
			public const new Guid IID = .(0x5660a019, 0xe75a, 0x4b82, 0x9b, 0x4c, 0xed, 0x22, 0x56, 0xd1, 0x65, 0xa2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbPrivateDataSpecifierDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbPrivateDataSpecifierDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbPrivateDataSpecifierDescriptor *self, uint32* pdwVal) GetPrivateDataSpecifier;
			}
		}
		[CRepr]
		public struct IDvbLogicalChannelDescriptor : IUnknown
		{
			public const new Guid IID = .(0xcf1edaff, 0x3ffd, 0x4cf7, 0x82, 0x01, 0x35, 0x75, 0x6a, 0xcb, 0xf8, 0x5f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbLogicalChannelDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbLogicalChannelDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbLogicalChannelDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbLogicalChannelDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetRecordServiceId;
				public function HRESULT(IDvbLogicalChannelDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetRecordLogicalChannelNumber;
			}
		}
		[CRepr]
		public struct IDvbLogicalChannelDescriptor2 : IDvbLogicalChannelDescriptor
		{
			public const new Guid IID = .(0x43aca974, 0x4be8, 0x4b98, 0xbc, 0x17, 0x9e, 0xaf, 0xd7, 0x88, 0xb1, 0xd7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDvbLogicalChannelDescriptor.VTable
			{
				public function HRESULT(IDvbLogicalChannelDescriptor2 *self, uint8 bRecordIndex, uint16* pwVal) GetRecordLogicalChannelAndVisibility;
			}
		}
		[CRepr]
		public struct IDvbLogicalChannel2Descriptor : IDvbLogicalChannelDescriptor2
		{
			public const new Guid IID = .(0xf69c3747, 0x8a30, 0x4980, 0x99, 0x8c, 0x01, 0xfe, 0x7f, 0x0b, 0xa3, 0x5a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDvbLogicalChannelDescriptor2.VTable
			{
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8* pbVal) GetCountOfLists;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bListIndex, uint8* pbVal) GetListId;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bListIndex, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetListNameW;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bListIndex, uint8* pszCode) GetListCountryCode;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bChannelListIndex, uint8* pbVal) GetListCountOfRecords;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bListIndex, uint8 bRecordIndex, uint16* pwVal) GetListRecordServiceId;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bListIndex, uint8 bRecordIndex, uint16* pwVal) GetListRecordLogicalChannelNumber;
				public function HRESULT(IDvbLogicalChannel2Descriptor *self, uint8 bListIndex, uint8 bRecordIndex, uint16* pwVal) GetListRecordLogicalChannelAndVisibility;
			}
		}
		[CRepr]
		public struct IDvbHDSimulcastLogicalChannelDescriptor : IDvbLogicalChannelDescriptor2
		{
			public const new Guid IID = .(0x1ea8b738, 0xa307, 0x4680, 0x9e, 0x26, 0xd0, 0xa9, 0x08, 0xc8, 0x24, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDvbLogicalChannelDescriptor2.VTable
			{
			}
		}
		[CRepr]
		public struct IDvbDataBroadcastIDDescriptor : IUnknown
		{
			public const new Guid IID = .(0x5f26f518, 0x65c8, 0x4048, 0x91, 0xf2, 0x92, 0x90, 0xf5, 0x9f, 0x7b, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbDataBroadcastIDDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbDataBroadcastIDDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbDataBroadcastIDDescriptor *self, uint16* pwVal) GetDataBroadcastID;
				public function HRESULT(IDvbDataBroadcastIDDescriptor *self, uint8* pbLen, uint8* pbVal) GetIDSelectorBytes;
			}
		}
		[CRepr]
		public struct IDvbDataBroadcastDescriptor : IUnknown
		{
			public const new Guid IID = .(0xd1ebc1d6, 0x8b60, 0x4c20, 0x9c, 0xaf, 0xe5, 0x93, 0x82, 0xe7, 0xc4, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint16* pwVal) GetDataBroadcastID;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbVal) GetComponentTag;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbVal) GetSelectorLength;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbLen, uint8* pbVal) GetSelectorBytes;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint32* pulVal) GetLangID;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbVal) GetTextLength;
				public function HRESULT(IDvbDataBroadcastDescriptor *self, uint8* pbLen, uint8* pbVal) GetText;
			}
		}
		[CRepr]
		public struct IDvbLinkageDescriptor : IUnknown
		{
			public const new Guid IID = .(0x1cdf8b31, 0x994a, 0x46fc, 0xac, 0xfd, 0x6a, 0x6b, 0xe8, 0x93, 0x4d, 0xd5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbLinkageDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbLinkageDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbLinkageDescriptor *self, uint16* pwVal) GetTSId;
				public function HRESULT(IDvbLinkageDescriptor *self, uint16* pwVal) GetONId;
				public function HRESULT(IDvbLinkageDescriptor *self, uint16* pwVal) GetServiceId;
				public function HRESULT(IDvbLinkageDescriptor *self, uint8* pbVal) GetLinkageType;
				public function HRESULT(IDvbLinkageDescriptor *self, uint8* pbVal) GetPrivateDataLength;
				public function HRESULT(IDvbLinkageDescriptor *self, uint8* pbLen, uint8* pbData) GetPrivateData;
			}
		}
		[CRepr]
		public struct IDvbTeletextDescriptor : IUnknown
		{
			public const new Guid IID = .(0x9cd29d47, 0x69c6, 0x4f92, 0x98, 0xa9, 0x21, 0x0a, 0xf1, 0xb7, 0x30, 0x3a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbTeletextDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbTeletextDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbTeletextDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbTeletextDescriptor *self, uint8 bRecordIndex, uint32* pulVal) GetRecordLangId;
				public function HRESULT(IDvbTeletextDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordTeletextType;
				public function HRESULT(IDvbTeletextDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordMagazineNumber;
				public function HRESULT(IDvbTeletextDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordPageNumber;
			}
		}
		[CRepr]
		public struct IDvbSubtitlingDescriptor : IUnknown
		{
			public const new Guid IID = .(0x9b25fe1d, 0xfa23, 0x4e50, 0x97, 0x84, 0x6d, 0xf8, 0xb2, 0x6f, 0x8a, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8 bRecordIndex, uint32* pulVal) GetRecordLangId;
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordSubtitlingType;
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetRecordCompositionPageID;
				public function HRESULT(IDvbSubtitlingDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetRecordAncillaryPageID;
			}
		}
		[CRepr]
		public struct IDvbServiceDescriptor : IUnknown
		{
			public const new Guid IID = .(0xf9c7fbcf, 0xe2d6, 0x464d, 0xb3, 0x2d, 0x2e, 0xf5, 0x26, 0xe4, 0x92, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbServiceDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbServiceDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbServiceDescriptor *self, uint8* pbVal) GetServiceType;
				public function HRESULT(IDvbServiceDescriptor *self, uint8** pszName) GetServiceProviderName;
				public function HRESULT(IDvbServiceDescriptor *self, BSTR* pbstrName) GetServiceProviderNameW;
				public function HRESULT(IDvbServiceDescriptor *self, uint8** pszName) GetServiceName;
				public function HRESULT(IDvbServiceDescriptor *self, BSTR* pbstrName) GetProcessedServiceName;
				public function HRESULT(IDvbServiceDescriptor *self, BSTR* pbstrName) GetServiceNameEmphasized;
			}
		}
		[CRepr]
		public struct IDvbServiceDescriptor2 : IDvbServiceDescriptor
		{
			public const new Guid IID = .(0xd6c76506, 0x85ab, 0x487c, 0x9b, 0x2b, 0x36, 0x41, 0x65, 0x11, 0xe4, 0xa2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDvbServiceDescriptor.VTable
			{
				public function HRESULT(IDvbServiceDescriptor2 *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetServiceProviderNameW;
				public function HRESULT(IDvbServiceDescriptor2 *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetServiceNameW;
			}
		}
		[CRepr]
		public struct IDvbServiceListDescriptor : IUnknown
		{
			public const new Guid IID = .(0x05db0d8f, 0x6008, 0x491a, 0xac, 0xd3, 0x70, 0x90, 0x95, 0x27, 0x07, 0xd0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbServiceListDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbServiceListDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbServiceListDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbServiceListDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetRecordServiceId;
				public function HRESULT(IDvbServiceListDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordServiceType;
			}
		}
		[CRepr]
		public struct IDvbMultilingualServiceNameDescriptor : IUnknown
		{
			public const new Guid IID = .(0x2d80433b, 0xb32c, 0x47ef, 0x98, 0x7f, 0xe7, 0x8e, 0xbb, 0x77, 0x3e, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbMultilingualServiceNameDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbMultilingualServiceNameDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbMultilingualServiceNameDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbMultilingualServiceNameDescriptor *self, uint8 bRecordIndex, uint32* ulVal) GetRecordLangId;
				public function HRESULT(IDvbMultilingualServiceNameDescriptor *self, uint8 bRecordIndex, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetRecordServiceProviderNameW;
				public function HRESULT(IDvbMultilingualServiceNameDescriptor *self, uint8 bRecordIndex, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetRecordServiceNameW;
			}
		}
		[CRepr]
		public struct IDvbNetworkNameDescriptor : IUnknown
		{
			public const new Guid IID = .(0x5b2a80cf, 0x35b9, 0x446c, 0xb3, 0xe4, 0x04, 0x8b, 0x76, 0x1d, 0xbc, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbNetworkNameDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbNetworkNameDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbNetworkNameDescriptor *self, uint8** pszName) GetNetworkName;
				public function HRESULT(IDvbNetworkNameDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetNetworkNameW;
			}
		}
		[CRepr]
		public struct IDvbShortEventDescriptor : IUnknown
		{
			public const new Guid IID = .(0xb170be92, 0x5b75, 0x458e, 0x9c, 0x6e, 0xb0, 0x00, 0x82, 0x31, 0x49, 0x1a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbShortEventDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbShortEventDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbShortEventDescriptor *self, uint8* pszCode) GetLanguageCode;
				public function HRESULT(IDvbShortEventDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetEventNameW;
				public function HRESULT(IDvbShortEventDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetTextW;
			}
		}
		[CRepr]
		public struct IDvbExtendedEventDescriptor : IUnknown
		{
			public const new Guid IID = .(0xc9b22eca, 0x85f4, 0x499f, 0xb1, 0xdb, 0xef, 0xa9, 0x3a, 0x91, 0xee, 0x57);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8* pbVal) GetDescriptorNumber;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8* pbVal) GetLastDescriptorNumber;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8* pszCode) GetLanguageCode;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8 bRecordIndex, DVB_STRCONV_MODE convMode, BSTR* pbstrDesc, BSTR* pbstrItem) GetRecordItemW;
				public function HRESULT(IDvbExtendedEventDescriptor *self, IDvbExtendedEventDescriptor* pFollowingDescriptor, DVB_STRCONV_MODE convMode, BSTR* pbstrDesc, BSTR* pbstrItem) GetConcatenatedItemW;
				public function HRESULT(IDvbExtendedEventDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetTextW;
				public function HRESULT(IDvbExtendedEventDescriptor *self, IDvbExtendedEventDescriptor* FollowingDescriptor, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetConcatenatedTextW;
				public function HRESULT(IDvbExtendedEventDescriptor *self, uint8 bRecordIndex, uint8** ppbRawItem, uint8* pbItemLength) GetRecordItemRawBytes;
			}
		}
		[CRepr]
		public struct IDvbComponentDescriptor : IUnknown
		{
			public const new Guid IID = .(0x91e405cf, 0x80e7, 0x457f, 0x90, 0x96, 0x1b, 0x9d, 0x1c, 0xe3, 0x21, 0x41);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbComponentDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbComponentDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbComponentDescriptor *self, uint8* pbVal) GetStreamContent;
				public function HRESULT(IDvbComponentDescriptor *self, uint8* pbVal) GetComponentType;
				public function HRESULT(IDvbComponentDescriptor *self, uint8* pbVal) GetComponentTag;
				public function HRESULT(IDvbComponentDescriptor *self, uint8* pszCode) GetLanguageCode;
				public function HRESULT(IDvbComponentDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetTextW;
			}
		}
		[CRepr]
		public struct IDvbContentDescriptor : IUnknown
		{
			public const new Guid IID = .(0x2e883881, 0xa467, 0x412a, 0x9d, 0x63, 0x6f, 0x2b, 0x6d, 0xa0, 0x5b, 0xf0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbContentDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbContentDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbContentDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbContentDescriptor *self, uint8 bRecordIndex, uint8* pbValLevel1, uint8* pbValLevel2) GetRecordContentNibbles;
				public function HRESULT(IDvbContentDescriptor *self, uint8 bRecordIndex, uint8* pbVal1, uint8* pbVal2) GetRecordUserNibbles;
			}
		}
		[CRepr]
		public struct IDvbParentalRatingDescriptor : IUnknown
		{
			public const new Guid IID = .(0x3ad9dde1, 0xfb1b, 0x4186, 0x93, 0x7f, 0x22, 0xe6, 0xb5, 0xa7, 0x2a, 0x10);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDvbParentalRatingDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IDvbParentalRatingDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IDvbParentalRatingDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IDvbParentalRatingDescriptor *self, uint8 bRecordIndex, uint8* pszCountryCode, uint8* pbVal) GetRecordRating;
			}
		}
		[CRepr]
		public struct IIsdbTerrestrialDeliverySystemDescriptor : IUnknown
		{
			public const new Guid IID = .(0x39fae0a6, 0xd151, 0x44dd, 0xa2, 0x8a, 0x76, 0x5d, 0xe5, 0x99, 0x16, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint16* pwVal) GetAreaCode;
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetGuardInterval;
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetTransmissionMode;
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbTerrestrialDeliverySystemDescriptor *self, uint8 bRecordIndex, uint32* pdwVal) GetRecordFrequency;
			}
		}
		[CRepr]
		public struct IIsdbTSInformationDescriptor : IUnknown
		{
			public const new Guid IID = .(0xd7ad183e, 0x38f5, 0x4210, 0xb5, 0x5f, 0xec, 0x8d, 0x60, 0x1b, 0xbd, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8* pbVal) GetRemoteControlKeyId;
				public function HRESULT(IIsdbTSInformationDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetTSNameW;
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordTransmissionTypeInfo;
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordNumberOfServices;
				public function HRESULT(IIsdbTSInformationDescriptor *self, uint8 bRecordIndex, uint8 bServiceIndex, uint16* pdwVal) GetRecordServiceIdByIndex;
			}
		}
		[CRepr]
		public struct IIsdbDigitalCopyControlDescriptor : IUnknown
		{
			public const new Guid IID = .(0x1a28417e, 0x266a, 0x4bb8, 0xa4, 0xbd, 0xd7, 0x82, 0xbc, 0xfb, 0x81, 0x61);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbDigitalCopyControlDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbDigitalCopyControlDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbDigitalCopyControlDescriptor *self, uint8* pbDigitalRecordingControlData, uint8* pbCopyControlType, uint8* pbAPSControlData, uint8* pbMaximumBitrate) GetCopyControl;
				public function HRESULT(IIsdbDigitalCopyControlDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbDigitalCopyControlDescriptor *self, uint8 bRecordIndex, uint8* pbComponentTag, uint8* pbDigitalRecordingControlData, uint8* pbCopyControlType, uint8* pbAPSControlData, uint8* pbMaximumBitrate) GetRecordCopyControl;
			}
		}
		[CRepr]
		public struct IIsdbAudioComponentDescriptor : IUnknown
		{
			public const new Guid IID = .(0x679d2002, 0x2425, 0x4be4, 0xa4, 0xc7, 0xd6, 0x63, 0x2a, 0x57, 0x4f, 0x4d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetStreamContent;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetComponentType;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetComponentTag;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetStreamType;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetSimulcastGroupTag;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, BOOL* pfVal) GetESMultiLingualFlag;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, BOOL* pfVal) GetMainComponentFlag;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetQualityIndicator;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pbVal) GetSamplingRate;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pszCode) GetLanguageCode;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, uint8* pszCode) GetLanguageCode2;
				public function HRESULT(IIsdbAudioComponentDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetTextW;
			}
		}
		[CRepr]
		public struct IIsdbDataContentDescriptor : IUnknown
		{
			public const new Guid IID = .(0xa428100a, 0xe646, 0x4bd6, 0xaa, 0x14, 0x60, 0x87, 0xbd, 0xc0, 0x8c, 0xd5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint16* pwVal) GetDataComponentId;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8* pbVal) GetEntryComponent;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8* pbVal) GetSelectorLength;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8 bBufLength, uint8* pbBuf) GetSelectorBytes;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordComponentRef;
				public function HRESULT(IIsdbDataContentDescriptor *self, uint8* pszCode) GetLanguageCode;
				public function HRESULT(IIsdbDataContentDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetTextW;
			}
		}
		[CRepr]
		public struct IIsdbCAContractInformationDescriptor : IUnknown
		{
			public const new Guid IID = .(0x08e18b25, 0xa28f, 0x4e92, 0x82, 0x1e, 0x4f, 0xce, 0xd5, 0xcc, 0x22, 0x91);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint16* pwVal) GetCASystemId;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8* pbVal) GetCAUnitId;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordComponentTag;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8* pbVal) GetContractVerificationInfoLength;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, uint8 bBufLength, uint8* pbBuf) GetContractVerificationInfo;
				public function HRESULT(IIsdbCAContractInformationDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetFeeNameW;
			}
		}
		[CRepr]
		public struct IIsdbEventGroupDescriptor : IUnknown
		{
			public const new Guid IID = .(0x94b06780, 0x2e2a, 0x44dc, 0xa9, 0x66, 0xcc, 0x56, 0xfd, 0xab, 0xc6, 0xc2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8* pbVal) GetGroupType;
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8 bRecordIndex, uint16* pwServiceId, uint16* pwEventId) GetRecordEvent;
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8* pbVal) GetCountOfRefRecords;
				public function HRESULT(IIsdbEventGroupDescriptor *self, uint8 bRecordIndex, uint16* pwOriginalNetworkId, uint16* pwTransportStreamId, uint16* pwServiceId, uint16* pwEventId) GetRefRecordEvent;
			}
		}
		[CRepr]
		public struct IIsdbComponentGroupDescriptor : IUnknown
		{
			public const new Guid IID = .(0xa494f17f, 0xc592, 0x47d8, 0x89, 0x43, 0x64, 0xc9, 0xa3, 0x4b, 0xe7, 0xb9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8* pbVal) GetComponentGroupType;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordGroupId;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordNumberOfCAUnit;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, uint8 bCAUnitIndex, uint8* pbVal) GetRecordCAUnitCAUnitId;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, uint8 bCAUnitIndex, uint8* pbVal) GetRecordCAUnitNumberOfComponents;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, uint8 bCAUnitIndex, uint8 bComponentIndex, uint8* pbVal) GetRecordCAUnitComponentTag;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetRecordTotalBitRate;
				public function HRESULT(IIsdbComponentGroupDescriptor *self, uint8 bRecordIndex, DVB_STRCONV_MODE convMode, BSTR* pbstrText) GetRecordTextW;
			}
		}
		[CRepr]
		public struct IIsdbSeriesDescriptor : IUnknown
		{
			public const new Guid IID = .(0x07ef6370, 0x1660, 0x4f26, 0x87, 0xfc, 0x61, 0x4a, 0xda, 0xb2, 0x4b, 0x11);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbSeriesDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbSeriesDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbSeriesDescriptor *self, uint16* pwVal) GetSeriesId;
				public function HRESULT(IIsdbSeriesDescriptor *self, uint8* pbVal) GetRepeatLabel;
				public function HRESULT(IIsdbSeriesDescriptor *self, uint8* pbVal) GetProgramPattern;
				public function HRESULT(IIsdbSeriesDescriptor *self, BOOL* pfValid, MPEG_DATE_AND_TIME* pmdtVal) GetExpireDate;
				public function HRESULT(IIsdbSeriesDescriptor *self, uint16* pwVal) GetEpisodeNumber;
				public function HRESULT(IIsdbSeriesDescriptor *self, uint16* pwVal) GetLastEpisodeNumber;
				public function HRESULT(IIsdbSeriesDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetSeriesNameW;
			}
		}
		[CRepr]
		public struct IIsdbDownloadContentDescriptor : IUnknown
		{
			public const new Guid IID = .(0x5298661e, 0xcb88, 0x4f5f, 0xa1, 0xde, 0x5f, 0x44, 0x0c, 0x18, 0x5b, 0x92);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, BOOL* pfReboot, BOOL* pfAddOn, BOOL* pfCompatibility, BOOL* pfModuleInfo, BOOL* pfTextInfo) GetFlags;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint32* pdwVal) GetComponentSize;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint32* pdwVal) GetDownloadId;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint32* pdwVal) GetTimeOutValueDII;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint32* pdwVal) GetLeakRate;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint8* pbVal) GetComponentTag;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint16* pwLength) GetCompatiblityDescriptorLength;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint8** ppbData) GetCompatiblityDescriptor;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint16* pwVal) GetCountOfRecords;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint16 wRecordIndex, uint16* pwVal) GetRecordModuleId;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint16 wRecordIndex, uint32* pdwVal) GetRecordModuleSize;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint16 wRecordIndex, uint8* pbVal) GetRecordModuleInfoLength;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint16 wRecordIndex, uint8** ppbData) GetRecordModuleInfo;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, uint8* szCode) GetTextLanguageCode;
				public function HRESULT(IIsdbDownloadContentDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrName) GetTextW;
			}
		}
		[CRepr]
		public struct IIsdbLogoTransmissionDescriptor : IUnknown
		{
			public const new Guid IID = .(0xe0103f49, 0x4ae1, 0x4f07, 0x90, 0x98, 0x75, 0x6d, 0xb1, 0xfa, 0x88, 0xcd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, uint8* pbVal) GetLogoTransmissionType;
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, uint16* pwVal) GetLogoId;
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, uint16* pwVal) GetLogoVersion;
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, uint16* pwVal) GetDownloadDataId;
				public function HRESULT(IIsdbLogoTransmissionDescriptor *self, DVB_STRCONV_MODE convMode, BSTR* pbstrChar) GetLogoCharW;
			}
		}
		[CRepr]
		public struct IIsdbSIParameterDescriptor : IUnknown
		{
			public const new Guid IID = .(0xf837dc36, 0x867c, 0x426a, 0x91, 0x11, 0xf6, 0x20, 0x93, 0x95, 0x1a, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8* pbVal) GetParameterVersion;
				public function HRESULT(IIsdbSIParameterDescriptor *self, MPEG_DATE* pVal) GetUpdateTime;
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8* pbVal) GetRecordNumberOfTable;
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetTableId;
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetTableDescriptionLength;
				public function HRESULT(IIsdbSIParameterDescriptor *self, uint8 bRecordIndex, uint8* pbBufferLength, uint8* pbBuffer) GetTableDescriptionBytes;
			}
		}
		[CRepr]
		public struct IIsdbEmergencyInformationDescriptor : IUnknown
		{
			public const new Guid IID = .(0xba6fa681, 0xb973, 0x4da1, 0x92, 0x07, 0xac, 0x3e, 0x7f, 0x03, 0x41, 0xeb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8* pbVal) GetCountOfRecords;
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8 bRecordIndex, uint16* pwVal) GetServiceId;
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8 bRecordIndex, uint8* pVal) GetStartEndFlag;
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8 bRecordIndex, uint8* pbVal) GetSignalLevel;
				public function HRESULT(IIsdbEmergencyInformationDescriptor *self, uint8 bRecordIndex, uint16** ppwVal, uint8* pbNumAreaCodes) GetAreaCode;
			}
		}
		[CRepr]
		public struct IIsdbCADescriptor : IUnknown
		{
			public const new Guid IID = .(0x0570aa47, 0x52bc, 0x42ae, 0x8c, 0xa5, 0x96, 0x9f, 0x41, 0xe8, 0x1a, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbCADescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbCADescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbCADescriptor *self, uint16* pwVal) GetCASystemId;
				public function HRESULT(IIsdbCADescriptor *self, uint8* pbVal) GetReservedBits;
				public function HRESULT(IIsdbCADescriptor *self, uint16* pwVal) GetCAPID;
				public function HRESULT(IIsdbCADescriptor *self, uint8* pbBufferLength, uint8* pbBuffer) GetPrivateDataBytes;
			}
		}
		[CRepr]
		public struct IIsdbCAServiceDescriptor : IUnknown
		{
			public const new Guid IID = .(0x39cbeb97, 0xff0b, 0x42a7, 0x9a, 0xb9, 0x7b, 0x9c, 0xfe, 0x70, 0xa7, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbCAServiceDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbCAServiceDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbCAServiceDescriptor *self, uint16* pwVal) GetCASystemId;
				public function HRESULT(IIsdbCAServiceDescriptor *self, uint8* pbVal) GetCABroadcasterGroupId;
				public function HRESULT(IIsdbCAServiceDescriptor *self, uint8* pbVal) GetMessageControl;
				public function HRESULT(IIsdbCAServiceDescriptor *self, uint8* pbNumServiceIds, uint16* pwServiceIds) GetServiceIds;
			}
		}
		[CRepr]
		public struct IIsdbHierarchicalTransmissionDescriptor : IUnknown
		{
			public const new Guid IID = .(0xb7b3ae90, 0xee0b, 0x446d, 0x87, 0x69, 0xf7, 0xe2, 0xaa, 0x26, 0x6a, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsdbHierarchicalTransmissionDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IIsdbHierarchicalTransmissionDescriptor *self, uint8* pbVal) GetLength;
				public function HRESULT(IIsdbHierarchicalTransmissionDescriptor *self, uint8* pbVal) GetFutureUse1;
				public function HRESULT(IIsdbHierarchicalTransmissionDescriptor *self, uint8* pbVal) GetQualityLevel;
				public function HRESULT(IIsdbHierarchicalTransmissionDescriptor *self, uint8* pbVal) GetFutureUse2;
				public function HRESULT(IIsdbHierarchicalTransmissionDescriptor *self, uint16* pwVal) GetReferencePid;
			}
		}
		[CRepr]
		public struct IPBDASiParser : IUnknown
		{
			public const new Guid IID = .(0x9de49a74, 0xaba2, 0x4a18, 0x93, 0xe1, 0x21, 0xf1, 0x7f, 0x95, 0xc3, 0xc3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPBDASiParser *self, IUnknown* punk) Initialize;
				public function HRESULT(IPBDASiParser *self, uint32 dwSize, uint8* pBuffer, IPBDA_EIT** ppEIT) GetEIT;
				public function HRESULT(IPBDASiParser *self, uint32 dwSize, uint8* pBuffer, IPBDA_Services** ppServices) GetServices;
			}
		}
		[CRepr]
		public struct IPBDA_EIT : IUnknown
		{
			public const new Guid IID = .(0xa35f2dea, 0x098f, 0x4ebd, 0x98, 0x4c, 0x2b, 0xd4, 0xc3, 0xc8, 0xce, 0x0a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPBDA_EIT *self, uint32 size, uint8* pBuffer) Initialize;
				public function HRESULT(IPBDA_EIT *self, uint8* pbVal) GetTableId;
				public function HRESULT(IPBDA_EIT *self, uint16* pwVal) GetVersionNumber;
				public function HRESULT(IPBDA_EIT *self, uint64* plwVal) GetServiceIdx;
				public function HRESULT(IPBDA_EIT *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IPBDA_EIT *self, uint32 dwRecordIndex, uint64* plwVal) GetRecordEventId;
				public function HRESULT(IPBDA_EIT *self, uint32 dwRecordIndex, MPEG_DATE_AND_TIME* pmdtVal) GetRecordStartTime;
				public function HRESULT(IPBDA_EIT *self, uint32 dwRecordIndex, MPEG_TIME* pmdVal) GetRecordDuration;
				public function HRESULT(IPBDA_EIT *self, uint32 dwRecordIndex, uint32* pdwVal) GetRecordCountOfDescriptors;
				public function HRESULT(IPBDA_EIT *self, uint32 dwRecordIndex, uint32 dwIndex, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByIndex;
				public function HRESULT(IPBDA_EIT *self, uint32 dwRecordIndex, uint8 bTag, uint32* pdwCookie, IGenericDescriptor** ppDescriptor) GetRecordDescriptorByTag;
			}
		}
		[CRepr]
		public struct IPBDA_Services : IUnknown
		{
			public const new Guid IID = .(0x944eab37, 0xeed4, 0x4850, 0xaf, 0xd2, 0x77, 0xe7, 0xef, 0xeb, 0x44, 0x27);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPBDA_Services *self, uint32 size, uint8* pBuffer) Initialize;
				public function HRESULT(IPBDA_Services *self, uint32* pdwVal) GetCountOfRecords;
				public function HRESULT(IPBDA_Services *self, uint32 dwRecordIndex, uint64* pul64ServiceIdx) GetRecordByIndex;
			}
		}
		[CRepr]
		public struct IPBDAEntitlementDescriptor : IUnknown
		{
			public const new Guid IID = .(0x22632497, 0x0de3, 0x4587, 0xaa, 0xdc, 0xd8, 0xd9, 0x90, 0x17, 0xe7, 0x60);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPBDAEntitlementDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IPBDAEntitlementDescriptor *self, uint16* pwVal) GetLength;
				public function HRESULT(IPBDAEntitlementDescriptor *self, uint8** ppbTokenBuffer, uint32* pdwTokenLength) GetToken;
			}
		}
		[CRepr]
		public struct IPBDAAttributesDescriptor : IUnknown
		{
			public const new Guid IID = .(0x313b3620, 0x3263, 0x45a6, 0x95, 0x33, 0x96, 0x8b, 0xef, 0xbe, 0xac, 0x03);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPBDAAttributesDescriptor *self, uint8* pbVal) GetTag;
				public function HRESULT(IPBDAAttributesDescriptor *self, uint16* pwVal) GetLength;
				public function HRESULT(IPBDAAttributesDescriptor *self, uint8** ppbAttributeBuffer, uint32* pdwAttributeLength) GetAttributePayload;
			}
		}
		[CRepr]
		public struct IBDA_TIF_REGISTRATION : IUnknown
		{
			public const new Guid IID = .(0xdfef4a68, 0xee61, 0x415f, 0x9c, 0xcb, 0xcd, 0x95, 0xf2, 0xf9, 0x8a, 0x3a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBDA_TIF_REGISTRATION *self, IPin* pTIFInputPin, uint32* ppvRegistrationContext, IUnknown** ppMpeg2DataControl) RegisterTIFEx;
				public function HRESULT(IBDA_TIF_REGISTRATION *self, uint32 pvRegistrationContext) UnregisterTIF;
			}
		}
		[CRepr]
		public struct IMPEG2_TIF_CONTROL : IUnknown
		{
			public const new Guid IID = .(0xf9bac2f9, 0x4149, 0x4916, 0xb2, 0xef, 0xfa, 0xa2, 0x02, 0x32, 0x68, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMPEG2_TIF_CONTROL *self, IUnknown* pUnkTIF, uint32* ppvRegistrationContext) RegisterTIF;
				public function HRESULT(IMPEG2_TIF_CONTROL *self, uint32 pvRegistrationContext) UnregisterTIF;
				public function HRESULT(IMPEG2_TIF_CONTROL *self, uint32 ulcPIDs, uint32* pulPIDs) AddPIDs;
				public function HRESULT(IMPEG2_TIF_CONTROL *self, uint32 ulcPIDs, uint32* pulPIDs) DeletePIDs;
				public function HRESULT(IMPEG2_TIF_CONTROL *self, uint32* pulcPIDs) GetPIDCount;
				public function HRESULT(IMPEG2_TIF_CONTROL *self, uint32* pulcPIDs, uint32* pulPIDs) GetPIDs;
			}
		}
		[CRepr]
		public struct ITuneRequestInfo : IUnknown
		{
			public const new Guid IID = .(0xa3b152df, 0x7a90, 0x4218, 0xac, 0x54, 0x98, 0x30, 0xbe, 0xe8, 0xc0, 0xb6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* Request) GetLocatorData;
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* CurrentRequest) GetComponentData;
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* CurrentRequest) CreateComponentList;
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* CurrentRequest, ITuneRequest** TuneRequest) GetNextProgram;
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* CurrentRequest, ITuneRequest** TuneRequest) GetPreviousProgram;
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* CurrentRequest, ITuneRequest** TuneRequest) GetNextLocator;
				public function HRESULT(ITuneRequestInfo *self, ITuneRequest* CurrentRequest, ITuneRequest** TuneRequest) GetPreviousLocator;
			}
		}
		[CRepr]
		public struct ITuneRequestInfoEx : ITuneRequestInfo
		{
			public const new Guid IID = .(0xee957c52, 0xb0d0, 0x4e78, 0x8d, 0xd1, 0xb8, 0x7a, 0x08, 0xbf, 0xd8, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITuneRequestInfo.VTable
			{
				public function HRESULT(ITuneRequestInfoEx *self, ITuneRequest* CurrentRequest, IUnknown** ppCurPMT) CreateComponentListEx;
			}
		}
		[CRepr]
		public struct ISIInbandEPGEvent : IUnknown
		{
			public const new Guid IID = .(0x7e47913a, 0x5a89, 0x423d, 0x9a, 0x2b, 0xe1, 0x51, 0x68, 0x85, 0x89, 0x34);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISIInbandEPGEvent *self, IDVB_EIT2* pIDVB_EIT, uint32 dwTable_ID, uint32 dwService_ID) SIObjectEvent;
			}
		}
		[CRepr]
		public struct ISIInbandEPG : IUnknown
		{
			public const new Guid IID = .(0xf90ad9d0, 0xb854, 0x4b68, 0x9c, 0xc1, 0xb2, 0xcc, 0x96, 0x11, 0x9d, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISIInbandEPG *self) StartSIEPGScan;
				public function HRESULT(ISIInbandEPG *self) StopSIEPGScan;
				public function HRESULT(ISIInbandEPG *self, BOOL* bRunning) IsSIEPGScanRunning;
			}
		}
		[CRepr]
		public struct IGuideDataEvent : IUnknown
		{
			public const new Guid IID = .(0xefda0c80, 0xf395, 0x42c3, 0x9b, 0x3c, 0x56, 0xb3, 0x7d, 0xec, 0x7b, 0xb7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGuideDataEvent *self) GuideDataAcquired;
				public function HRESULT(IGuideDataEvent *self, VARIANT varProgramDescriptionID) ProgramChanged;
				public function HRESULT(IGuideDataEvent *self, VARIANT varServiceDescriptionID) ServiceChanged;
				public function HRESULT(IGuideDataEvent *self, VARIANT varScheduleEntryDescriptionID) ScheduleEntryChanged;
				public function HRESULT(IGuideDataEvent *self, VARIANT varProgramDescriptionID) ProgramDeleted;
				public function HRESULT(IGuideDataEvent *self, VARIANT varServiceDescriptionID) ServiceDeleted;
				public function HRESULT(IGuideDataEvent *self, VARIANT varScheduleEntryDescriptionID) ScheduleDeleted;
			}
		}
		[CRepr]
		public struct IGuideDataProperty : IUnknown
		{
			public const new Guid IID = .(0x88ec5e58, 0xbb73, 0x41d6, 0x99, 0xce, 0x66, 0xc5, 0x24, 0xb8, 0xb5, 0x91);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGuideDataProperty *self, BSTR* pbstrName) get_Name;
				public function HRESULT(IGuideDataProperty *self, int32* idLang) get_Language;
				public function HRESULT(IGuideDataProperty *self, VARIANT* pvar) get_Value;
			}
		}
		[CRepr]
		public struct IEnumGuideDataProperties : IUnknown
		{
			public const new Guid IID = .(0xae44423b, 0x4571, 0x475c, 0xad, 0x2c, 0xf4, 0x0a, 0x77, 0x1d, 0x80, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumGuideDataProperties *self, uint32 celt, IGuideDataProperty** ppprop, uint32* pcelt) Next;
				public function HRESULT(IEnumGuideDataProperties *self, uint32 celt) Skip;
				public function HRESULT(IEnumGuideDataProperties *self) Reset;
				public function HRESULT(IEnumGuideDataProperties *self, IEnumGuideDataProperties** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumTuneRequests : IUnknown
		{
			public const new Guid IID = .(0x1993299c, 0xced6, 0x4788, 0x87, 0xa3, 0x42, 0x00, 0x67, 0xdc, 0xe0, 0xc7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumTuneRequests *self, uint32 celt, ITuneRequest** ppprop, uint32* pcelt) Next;
				public function HRESULT(IEnumTuneRequests *self, uint32 celt) Skip;
				public function HRESULT(IEnumTuneRequests *self) Reset;
				public function HRESULT(IEnumTuneRequests *self, IEnumTuneRequests** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IGuideData : IUnknown
		{
			public const new Guid IID = .(0x61571138, 0x5b01, 0x43cd, 0xae, 0xaf, 0x60, 0xb7, 0x84, 0xa0, 0xbf, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGuideData *self, IEnumTuneRequests** ppEnumTuneRequests) GetServices;
				public function HRESULT(IGuideData *self, ITuneRequest* pTuneRequest, IEnumGuideDataProperties** ppEnumProperties) GetServiceProperties;
				public function HRESULT(IGuideData *self, IEnumVARIANT** pEnumPrograms) GetGuideProgramIDs;
				public function HRESULT(IGuideData *self, VARIANT varProgramDescriptionID, IEnumGuideDataProperties** ppEnumProperties) GetProgramProperties;
				public function HRESULT(IGuideData *self, IEnumVARIANT** pEnumScheduleEntries) GetScheduleEntryIDs;
				public function HRESULT(IGuideData *self, VARIANT varScheduleEntryDescriptionID, IEnumGuideDataProperties** ppEnumProperties) GetScheduleEntryProperties;
			}
		}
		[CRepr]
		public struct IGuideDataLoader : IUnknown
		{
			public const new Guid IID = .(0x4764ff7c, 0xfa95, 0x4525, 0xaf, 0x4d, 0xd3, 0x22, 0x36, 0xdb, 0x9e, 0x38);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGuideDataLoader *self, IGuideData* pGuideStore) Init;
				public function HRESULT(IGuideDataLoader *self) Terminate;
			}
		}
		
		// --- Functions ---
		
		[Import("quartz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AMGetErrorTextA(HRESULT hr, uint8* pbuffer, uint32 MaxLen);
		[Import("quartz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AMGetErrorTextW(HRESULT hr, char16* pbuffer, uint32 MaxLen);
		
	}
}
