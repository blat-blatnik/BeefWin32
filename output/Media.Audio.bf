using System;

// namespace Media.Audio
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MIXERCONTROL_CONTROLTYPE_CUSTOM = 0;
		public const uint32 MIXERCONTROL_CONTROLTYPE_BOOLEANMETER = 268500992;
		public const uint32 MIXERCONTROL_CONTROLTYPE_SIGNEDMETER = 268566528;
		public const uint32 MIXERCONTROL_CONTROLTYPE_PEAKMETER = 268566529;
		public const uint32 MIXERCONTROL_CONTROLTYPE_UNSIGNEDMETER = 268632064;
		public const uint32 MIXERCONTROL_CONTROLTYPE_BOOLEAN = 536936448;
		public const uint32 MIXERCONTROL_CONTROLTYPE_ONOFF = 536936449;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MUTE = 536936450;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MONO = 536936451;
		public const uint32 MIXERCONTROL_CONTROLTYPE_LOUDNESS = 536936452;
		public const uint32 MIXERCONTROL_CONTROLTYPE_STEREOENH = 536936453;
		public const uint32 MIXERCONTROL_CONTROLTYPE_BASS_BOOST = 536945271;
		public const uint32 MIXERCONTROL_CONTROLTYPE_BUTTON = 553713664;
		public const uint32 MIXERCONTROL_CONTROLTYPE_DECIBELS = 805568512;
		public const uint32 MIXERCONTROL_CONTROLTYPE_SIGNED = 805437440;
		public const uint32 MIXERCONTROL_CONTROLTYPE_UNSIGNED = 805502976;
		public const uint32 MIXERCONTROL_CONTROLTYPE_PERCENT = 805634048;
		public const uint32 MIXERCONTROL_CONTROLTYPE_SLIDER = 1073872896;
		public const uint32 MIXERCONTROL_CONTROLTYPE_PAN = 1073872897;
		public const uint32 MIXERCONTROL_CONTROLTYPE_QSOUNDPAN = 1073872898;
		public const uint32 MIXERCONTROL_CONTROLTYPE_FADER = 1342373888;
		public const uint32 MIXERCONTROL_CONTROLTYPE_VOLUME = 1342373889;
		public const uint32 MIXERCONTROL_CONTROLTYPE_BASS = 1342373890;
		public const uint32 MIXERCONTROL_CONTROLTYPE_TREBLE = 1342373891;
		public const uint32 MIXERCONTROL_CONTROLTYPE_EQUALIZER = 1342373892;
		public const uint32 MIXERCONTROL_CONTROLTYPE_SINGLESELECT = 1879113728;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MUX = 1879113729;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MULTIPLESELECT = 1895890944;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MIXER = 1895890945;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MICROTIME = 1610809344;
		public const uint32 MIXERCONTROL_CONTROLTYPE_MILLITIME = 1627586560;
		public const uint32 WAVE_MAPPER = 4294967295;
		public const uint32 ENDPOINT_FORMAT_RESET_MIX_ONLY = 1;
		public const uint32 ENDPOINT_HARDWARE_SUPPORT_VOLUME = 1;
		public const uint32 ENDPOINT_HARDWARE_SUPPORT_MUTE = 2;
		public const uint32 ENDPOINT_HARDWARE_SUPPORT_METER = 4;
		public const uint32 AUDIOCLOCK_CHARACTERISTIC_FIXED_FREQ = 1;
		public const uint32 AMBISONICS_PARAM_VERSION_1 = 1;
		public const HRESULT AUDCLNT_E_NOT_INITIALIZED = -2004287487;
		public const HRESULT AUDCLNT_E_ALREADY_INITIALIZED = -2004287486;
		public const HRESULT AUDCLNT_E_WRONG_ENDPOINT_TYPE = -2004287485;
		public const HRESULT AUDCLNT_E_DEVICE_INVALIDATED = -2004287484;
		public const HRESULT AUDCLNT_E_NOT_STOPPED = -2004287483;
		public const HRESULT AUDCLNT_E_BUFFER_TOO_LARGE = -2004287482;
		public const HRESULT AUDCLNT_E_OUT_OF_ORDER = -2004287481;
		public const HRESULT AUDCLNT_E_UNSUPPORTED_FORMAT = -2004287480;
		public const HRESULT AUDCLNT_E_INVALID_SIZE = -2004287479;
		public const HRESULT AUDCLNT_E_DEVICE_IN_USE = -2004287478;
		public const HRESULT AUDCLNT_E_BUFFER_OPERATION_PENDING = -2004287477;
		public const HRESULT AUDCLNT_E_THREAD_NOT_REGISTERED = -2004287476;
		public const HRESULT AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED = -2004287474;
		public const HRESULT AUDCLNT_E_ENDPOINT_CREATE_FAILED = -2004287473;
		public const HRESULT AUDCLNT_E_SERVICE_NOT_RUNNING = -2004287472;
		public const HRESULT AUDCLNT_E_EVENTHANDLE_NOT_EXPECTED = -2004287471;
		public const HRESULT AUDCLNT_E_EXCLUSIVE_MODE_ONLY = -2004287470;
		public const HRESULT AUDCLNT_E_BUFDURATION_PERIOD_NOT_EQUAL = -2004287469;
		public const HRESULT AUDCLNT_E_EVENTHANDLE_NOT_SET = -2004287468;
		public const HRESULT AUDCLNT_E_INCORRECT_BUFFER_SIZE = -2004287467;
		public const HRESULT AUDCLNT_E_BUFFER_SIZE_ERROR = -2004287466;
		public const HRESULT AUDCLNT_E_CPUUSAGE_EXCEEDED = -2004287465;
		public const HRESULT AUDCLNT_E_BUFFER_ERROR = -2004287464;
		public const HRESULT AUDCLNT_E_BUFFER_SIZE_NOT_ALIGNED = -2004287463;
		public const HRESULT AUDCLNT_E_INVALID_DEVICE_PERIOD = -2004287456;
		public const HRESULT AUDCLNT_E_INVALID_STREAM_FLAG = -2004287455;
		public const HRESULT AUDCLNT_E_ENDPOINT_OFFLOAD_NOT_CAPABLE = -2004287454;
		public const HRESULT AUDCLNT_E_OUT_OF_OFFLOAD_RESOURCES = -2004287453;
		public const HRESULT AUDCLNT_E_OFFLOAD_MODE_ONLY = -2004287452;
		public const HRESULT AUDCLNT_E_NONOFFLOAD_MODE_ONLY = -2004287451;
		public const HRESULT AUDCLNT_E_RESOURCES_INVALIDATED = -2004287450;
		public const HRESULT AUDCLNT_E_RAW_MODE_UNSUPPORTED = -2004287449;
		public const HRESULT AUDCLNT_E_ENGINE_PERIODICITY_LOCKED = -2004287448;
		public const HRESULT AUDCLNT_E_ENGINE_FORMAT_LOCKED = -2004287447;
		public const HRESULT AUDCLNT_E_HEADTRACKING_ENABLED = -2004287440;
		public const HRESULT AUDCLNT_E_HEADTRACKING_UNSUPPORTED = -2004287424;
		public const HRESULT AUDCLNT_E_EFFECT_NOT_AVAILABLE = -2004287423;
		public const HRESULT AUDCLNT_E_EFFECT_STATE_READ_ONLY = -2004287422;
		public const HRESULT AUDCLNT_S_BUFFER_EMPTY = 143196161;
		public const HRESULT AUDCLNT_S_THREAD_ALREADY_REGISTERED = 143196162;
		public const HRESULT AUDCLNT_S_POSITION_STALLED = 143196163;
		public const uint32 AUDCLNT_STREAMFLAGS_CROSSPROCESS = 65536;
		public const uint32 AUDCLNT_STREAMFLAGS_LOOPBACK = 131072;
		public const uint32 AUDCLNT_STREAMFLAGS_EVENTCALLBACK = 262144;
		public const uint32 AUDCLNT_STREAMFLAGS_NOPERSIST = 524288;
		public const uint32 AUDCLNT_STREAMFLAGS_RATEADJUST = 1048576;
		public const uint32 AUDCLNT_STREAMFLAGS_SRC_DEFAULT_QUALITY = 134217728;
		public const uint32 AUDCLNT_STREAMFLAGS_AUTOCONVERTPCM = 2147483648;
		public const uint32 AUDCLNT_SESSIONFLAGS_EXPIREWHENUNOWNED = 268435456;
		public const uint32 AUDCLNT_SESSIONFLAGS_DISPLAY_HIDE = 536870912;
		public const uint32 AUDCLNT_SESSIONFLAGS_DISPLAY_HIDEWHENEXPIRED = 1073741824;
		public const HRESULT SPTLAUDCLNT_E_DESTROYED = -2004287232;
		public const HRESULT SPTLAUDCLNT_E_OUT_OF_ORDER = -2004287231;
		public const HRESULT SPTLAUDCLNT_E_RESOURCES_INVALIDATED = -2004287230;
		public const HRESULT SPTLAUDCLNT_E_NO_MORE_OBJECTS = -2004287229;
		public const HRESULT SPTLAUDCLNT_E_PROPERTY_NOT_SUPPORTED = -2004287228;
		public const HRESULT SPTLAUDCLNT_E_ERRORS_IN_OBJECT_CALLS = -2004287227;
		public const HRESULT SPTLAUDCLNT_E_METADATA_FORMAT_NOT_SUPPORTED = -2004287226;
		public const HRESULT SPTLAUDCLNT_E_STREAM_NOT_AVAILABLE = -2004287225;
		public const HRESULT SPTLAUDCLNT_E_INVALID_LICENSE = -2004287224;
		public const HRESULT SPTLAUDCLNT_E_STREAM_NOT_STOPPED = -2004287222;
		public const HRESULT SPTLAUDCLNT_E_STATIC_OBJECT_NOT_AVAILABLE = -2004287221;
		public const HRESULT SPTLAUDCLNT_E_OBJECT_ALREADY_ACTIVE = -2004287220;
		public const HRESULT SPTLAUDCLNT_E_INTERNAL = -2004287219;
		public const uint32 DEVICE_STATE_ACTIVE = 1;
		public const uint32 DEVICE_STATE_DISABLED = 2;
		public const uint32 DEVICE_STATE_NOTPRESENT = 4;
		public const uint32 DEVICE_STATE_UNPLUGGED = 8;
		public const uint32 DEVICE_STATEMASK_ALL = 15;
		public const uint32 ENDPOINT_SYSFX_ENABLED = 0;
		public const uint32 ENDPOINT_SYSFX_DISABLED = 1;
		public const Guid DEVINTERFACE_AUDIO_RENDER = .(0xe6327cad, 0xdcec, 0x4949, 0xae, 0x8a, 0x99, 0x1e, 0x97, 0x6a, 0x79, 0xd2);
		public const Guid DEVINTERFACE_AUDIO_CAPTURE = .(0x2eef81be, 0x33fa, 0x4800, 0x96, 0x70, 0x1c, 0xd4, 0x74, 0x97, 0x2c, 0x3f);
		public const Guid DEVINTERFACE_MIDI_OUTPUT = .(0x6dc23320, 0xab33, 0x4ce4, 0x80, 0xd4, 0xbb, 0xb3, 0xeb, 0xbf, 0x28, 0x14);
		public const Guid DEVINTERFACE_MIDI_INPUT = .(0x504be32c, 0xccf6, 0x4d2c, 0xb7, 0x3f, 0x6f, 0x8b, 0x37, 0x47, 0xe2, 0x2b);
		public const Guid EVENTCONTEXT_VOLUMESLIDER = .(0xe2c2e9de, 0x09b1, 0x4b04, 0x84, 0xe5, 0x07, 0x93, 0x12, 0x25, 0xee, 0x04);
		public const uint32 SPATIAL_AUDIO_STANDARD_COMMANDS_START = 200;
		public const uint32 SPATIAL_AUDIO_POSITION = 200;
		public const HRESULT SPTLAUD_MD_CLNT_E_COMMAND_NOT_FOUND = -2004286976;
		public const HRESULT SPTLAUD_MD_CLNT_E_OBJECT_NOT_INITIALIZED = -2004286975;
		public const HRESULT SPTLAUD_MD_CLNT_E_INVALID_ARGS = -2004286974;
		public const HRESULT SPTLAUD_MD_CLNT_E_METADATA_FORMAT_NOT_FOUND = -2004286973;
		public const HRESULT SPTLAUD_MD_CLNT_E_VALUE_BUFFER_INCORRECT_SIZE = -2004286972;
		public const HRESULT SPTLAUD_MD_CLNT_E_MEMORY_BOUNDS = -2004286971;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_MORE_COMMANDS = -2004286970;
		public const HRESULT SPTLAUD_MD_CLNT_E_BUFFER_ALREADY_ATTACHED = -2004286969;
		public const HRESULT SPTLAUD_MD_CLNT_E_BUFFER_NOT_ATTACHED = -2004286968;
		public const HRESULT SPTLAUD_MD_CLNT_E_FRAMECOUNT_OUT_OF_RANGE = -2004286967;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_ITEMS_FOUND = -2004286960;
		public const HRESULT SPTLAUD_MD_CLNT_E_ITEM_COPY_OVERFLOW = -2004286959;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_ITEMS_OPEN = -2004286958;
		public const HRESULT SPTLAUD_MD_CLNT_E_ITEMS_ALREADY_OPEN = -2004286957;
		public const HRESULT SPTLAUD_MD_CLNT_E_ATTACH_FAILED_INTERNAL_BUFFER = -2004286956;
		public const HRESULT SPTLAUD_MD_CLNT_E_DETACH_FAILED_INTERNAL_BUFFER = -2004286955;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_BUFFER_ATTACHED = -2004286954;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_MORE_ITEMS = -2004286953;
		public const HRESULT SPTLAUD_MD_CLNT_E_FRAMEOFFSET_OUT_OF_RANGE = -2004286952;
		public const HRESULT SPTLAUD_MD_CLNT_E_ITEM_MUST_HAVE_COMMANDS = -2004286951;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_ITEMOFFSET_WRITTEN = -2004286944;
		public const HRESULT SPTLAUD_MD_CLNT_E_NO_ITEMS_WRITTEN = -2004286943;
		public const HRESULT SPTLAUD_MD_CLNT_E_COMMAND_ALREADY_WRITTEN = -2004286942;
		public const HRESULT SPTLAUD_MD_CLNT_E_FORMAT_MISMATCH = -2004286941;
		public const HRESULT SPTLAUD_MD_CLNT_E_BUFFER_STILL_ATTACHED = -2004286940;
		public const HRESULT SPTLAUD_MD_CLNT_E_ITEMS_LOCKED_FOR_WRITING = -2004286939;
		public const uint32 WAVERR_BADFORMAT = 32;
		public const uint32 WAVERR_STILLPLAYING = 33;
		public const uint32 WAVERR_UNPREPARED = 34;
		public const uint32 WAVERR_SYNC = 35;
		public const uint32 WAVERR_LASTERROR = 35;
		public const uint32 WHDR_DONE = 1;
		public const uint32 WHDR_PREPARED = 2;
		public const uint32 WHDR_BEGINLOOP = 4;
		public const uint32 WHDR_ENDLOOP = 8;
		public const uint32 WHDR_INQUEUE = 16;
		public const uint32 WAVECAPS_PITCH = 1;
		public const uint32 WAVECAPS_PLAYBACKRATE = 2;
		public const uint32 WAVECAPS_VOLUME = 4;
		public const uint32 WAVECAPS_LRVOLUME = 8;
		public const uint32 WAVECAPS_SYNC = 16;
		public const uint32 WAVECAPS_SAMPLEACCURATE = 32;
		public const uint32 WAVE_INVALIDFORMAT = 0;
		public const uint32 WAVE_FORMAT_1M08 = 1;
		public const uint32 WAVE_FORMAT_1S08 = 2;
		public const uint32 WAVE_FORMAT_1M16 = 4;
		public const uint32 WAVE_FORMAT_1S16 = 8;
		public const uint32 WAVE_FORMAT_2M08 = 16;
		public const uint32 WAVE_FORMAT_2S08 = 32;
		public const uint32 WAVE_FORMAT_2M16 = 64;
		public const uint32 WAVE_FORMAT_2S16 = 128;
		public const uint32 WAVE_FORMAT_4M08 = 256;
		public const uint32 WAVE_FORMAT_4S08 = 512;
		public const uint32 WAVE_FORMAT_4M16 = 1024;
		public const uint32 WAVE_FORMAT_4S16 = 2048;
		public const uint32 WAVE_FORMAT_44M08 = 256;
		public const uint32 WAVE_FORMAT_44S08 = 512;
		public const uint32 WAVE_FORMAT_44M16 = 1024;
		public const uint32 WAVE_FORMAT_44S16 = 2048;
		public const uint32 WAVE_FORMAT_48M08 = 4096;
		public const uint32 WAVE_FORMAT_48S08 = 8192;
		public const uint32 WAVE_FORMAT_48M16 = 16384;
		public const uint32 WAVE_FORMAT_48S16 = 32768;
		public const uint32 WAVE_FORMAT_96M08 = 65536;
		public const uint32 WAVE_FORMAT_96S08 = 131072;
		public const uint32 WAVE_FORMAT_96M16 = 262144;
		public const uint32 WAVE_FORMAT_96S16 = 524288;
		public const uint32 WAVE_FORMAT_PCM = 1;
		public const uint32 MIDIERR_UNPREPARED = 64;
		public const uint32 MIDIERR_STILLPLAYING = 65;
		public const uint32 MIDIERR_NOMAP = 66;
		public const uint32 MIDIERR_NOTREADY = 67;
		public const uint32 MIDIERR_NODEVICE = 68;
		public const uint32 MIDIERR_INVALIDSETUP = 69;
		public const uint32 MIDIERR_BADOPENMODE = 70;
		public const uint32 MIDIERR_DONT_CONTINUE = 71;
		public const uint32 MIDIERR_LASTERROR = 71;
		public const uint32 MIDIPATCHSIZE = 128;
		public const uint32 MIDI_CACHE_ALL = 1;
		public const uint32 MIDI_CACHE_BESTFIT = 2;
		public const uint32 MIDI_CACHE_QUERY = 3;
		public const uint32 MIDI_UNCACHE = 4;
		public const uint32 MOD_MIDIPORT = 1;
		public const uint32 MOD_SYNTH = 2;
		public const uint32 MOD_SQSYNTH = 3;
		public const uint32 MOD_FMSYNTH = 4;
		public const uint32 MOD_MAPPER = 5;
		public const uint32 MOD_WAVETABLE = 6;
		public const uint32 MOD_SWSYNTH = 7;
		public const uint32 MIDICAPS_VOLUME = 1;
		public const uint32 MIDICAPS_LRVOLUME = 2;
		public const uint32 MIDICAPS_CACHE = 4;
		public const uint32 MIDICAPS_STREAM = 8;
		public const uint32 MHDR_DONE = 1;
		public const uint32 MHDR_PREPARED = 2;
		public const uint32 MHDR_INQUEUE = 4;
		public const uint32 MHDR_ISSTRM = 8;
		public const int32 MEVT_F_SHORT = 0;
		public const int32 MEVT_F_LONG = -2147483648;
		public const int32 MEVT_F_CALLBACK = 1073741824;
		public const int32 MIDISTRM_ERROR = -2;
		public const int32 MIDIPROP_SET = -2147483648;
		public const int32 MIDIPROP_GET = 1073741824;
		public const int32 MIDIPROP_TIMEDIV = 1;
		public const int32 MIDIPROP_TEMPO = 2;
		public const uint32 AUXCAPS_CDAUDIO = 1;
		public const uint32 AUXCAPS_AUXIN = 2;
		public const uint32 AUXCAPS_VOLUME = 1;
		public const uint32 AUXCAPS_LRVOLUME = 2;
		public const uint32 MIXER_SHORT_NAME_CHARS = 16;
		public const uint32 MIXER_LONG_NAME_CHARS = 64;
		public const uint32 MIXERR_INVALLINE = 1024;
		public const uint32 MIXERR_INVALCONTROL = 1025;
		public const uint32 MIXERR_INVALVALUE = 1026;
		public const uint32 MIXERR_LASTERROR = 1026;
		public const int32 MIXER_OBJECTF_HANDLE = -2147483648;
		public const int32 MIXER_OBJECTF_MIXER = 0;
		public const int32 MIXER_OBJECTF_WAVEOUT = 268435456;
		public const int32 MIXER_OBJECTF_WAVEIN = 536870912;
		public const int32 MIXER_OBJECTF_MIDIOUT = 805306368;
		public const int32 MIXER_OBJECTF_MIDIIN = 1073741824;
		public const int32 MIXER_OBJECTF_AUX = 1342177280;
		public const int32 MIXERLINE_LINEF_ACTIVE = 1;
		public const int32 MIXERLINE_LINEF_DISCONNECTED = 32768;
		public const int32 MIXERLINE_LINEF_SOURCE = -2147483648;
		public const int32 MIXERLINE_COMPONENTTYPE_DST_FIRST = 0;
		public const uint32 MIXERLINE_COMPONENTTYPE_DST_LAST = 8;
		public const int32 MIXERLINE_COMPONENTTYPE_SRC_FIRST = 4096;
		public const uint32 MIXERLINE_COMPONENTTYPE_SRC_LAST = 4106;
		public const uint32 MIXERLINE_TARGETTYPE_UNDEFINED = 0;
		public const uint32 MIXERLINE_TARGETTYPE_WAVEOUT = 1;
		public const uint32 MIXERLINE_TARGETTYPE_WAVEIN = 2;
		public const uint32 MIXERLINE_TARGETTYPE_MIDIOUT = 3;
		public const uint32 MIXERLINE_TARGETTYPE_MIDIIN = 4;
		public const uint32 MIXERLINE_TARGETTYPE_AUX = 5;
		public const int32 MIXER_GETLINEINFOF_DESTINATION = 0;
		public const int32 MIXER_GETLINEINFOF_SOURCE = 1;
		public const int32 MIXER_GETLINEINFOF_LINEID = 2;
		public const int32 MIXER_GETLINEINFOF_COMPONENTTYPE = 3;
		public const int32 MIXER_GETLINEINFOF_TARGETTYPE = 4;
		public const int32 MIXER_GETLINEINFOF_QUERYMASK = 15;
		public const int32 MIXERCONTROL_CONTROLF_UNIFORM = 1;
		public const int32 MIXERCONTROL_CONTROLF_MULTIPLE = 2;
		public const int32 MIXERCONTROL_CONTROLF_DISABLED = -2147483648;
		public const int32 MIXERCONTROL_CT_CLASS_MASK = -268435456;
		public const int32 MIXERCONTROL_CT_CLASS_CUSTOM = 0;
		public const int32 MIXERCONTROL_CT_CLASS_METER = 268435456;
		public const int32 MIXERCONTROL_CT_CLASS_SWITCH = 536870912;
		public const int32 MIXERCONTROL_CT_CLASS_NUMBER = 805306368;
		public const int32 MIXERCONTROL_CT_CLASS_SLIDER = 1073741824;
		public const int32 MIXERCONTROL_CT_CLASS_FADER = 1342177280;
		public const int32 MIXERCONTROL_CT_CLASS_TIME = 1610612736;
		public const int32 MIXERCONTROL_CT_CLASS_LIST = 1879048192;
		public const int32 MIXERCONTROL_CT_SUBCLASS_MASK = 251658240;
		public const int32 MIXERCONTROL_CT_SC_SWITCH_BOOLEAN = 0;
		public const int32 MIXERCONTROL_CT_SC_SWITCH_BUTTON = 16777216;
		public const int32 MIXERCONTROL_CT_SC_METER_POLLED = 0;
		public const int32 MIXERCONTROL_CT_SC_TIME_MICROSECS = 0;
		public const int32 MIXERCONTROL_CT_SC_TIME_MILLISECS = 16777216;
		public const int32 MIXERCONTROL_CT_SC_LIST_SINGLE = 0;
		public const int32 MIXERCONTROL_CT_SC_LIST_MULTIPLE = 16777216;
		public const int32 MIXERCONTROL_CT_UNITS_MASK = 16711680;
		public const int32 MIXERCONTROL_CT_UNITS_CUSTOM = 0;
		public const int32 MIXERCONTROL_CT_UNITS_BOOLEAN = 65536;
		public const int32 MIXERCONTROL_CT_UNITS_SIGNED = 131072;
		public const int32 MIXERCONTROL_CT_UNITS_UNSIGNED = 196608;
		public const int32 MIXERCONTROL_CT_UNITS_DECIBELS = 262144;
		public const int32 MIXERCONTROL_CT_UNITS_PERCENT = 327680;
		public const int32 MIXER_GETLINECONTROLSF_ALL = 0;
		public const int32 MIXER_GETLINECONTROLSF_ONEBYID = 1;
		public const int32 MIXER_GETLINECONTROLSF_ONEBYTYPE = 2;
		public const int32 MIXER_GETLINECONTROLSF_QUERYMASK = 15;
		public const int32 MIXER_GETCONTROLDETAILSF_VALUE = 0;
		public const int32 MIXER_GETCONTROLDETAILSF_LISTTEXT = 1;
		public const int32 MIXER_GETCONTROLDETAILSF_QUERYMASK = 15;
		public const int32 MIXER_SETCONTROLDETAILSF_VALUE = 0;
		public const int32 MIXER_SETCONTROLDETAILSF_CUSTOM = 1;
		public const int32 MIXER_SETCONTROLDETAILSF_QUERYMASK = 15;
		public const uint32 DRV_MAPPER_PREFERRED_INPUT_GET = 16384;
		public const uint32 DRV_MAPPER_PREFERRED_OUTPUT_GET = 16386;
		public const uint32 DRVM_MAPPER = 8192;
		public const uint32 DRVM_MAPPER_STATUS = 8192;
		public const uint32 WIDM_MAPPER_STATUS = 8192;
		public const uint32 WAVEIN_MAPPER_STATUS_DEVICE = 0;
		public const uint32 WAVEIN_MAPPER_STATUS_MAPPED = 1;
		public const uint32 WAVEIN_MAPPER_STATUS_FORMAT = 2;
		public const uint32 WODM_MAPPER_STATUS = 8192;
		public const uint32 WAVEOUT_MAPPER_STATUS_DEVICE = 0;
		public const uint32 WAVEOUT_MAPPER_STATUS_MAPPED = 1;
		public const uint32 WAVEOUT_MAPPER_STATUS_FORMAT = 2;
		public const uint32 ACMERR_BASE = 512;
		public const uint32 ACMERR_NOTPOSSIBLE = 512;
		public const uint32 ACMERR_BUSY = 513;
		public const uint32 ACMERR_UNPREPARED = 514;
		public const uint32 ACMERR_CANCELED = 515;
		public const uint32 ACM_METRIC_COUNT_DRIVERS = 1;
		public const uint32 ACM_METRIC_COUNT_CODECS = 2;
		public const uint32 ACM_METRIC_COUNT_CONVERTERS = 3;
		public const uint32 ACM_METRIC_COUNT_FILTERS = 4;
		public const uint32 ACM_METRIC_COUNT_DISABLED = 5;
		public const uint32 ACM_METRIC_COUNT_HARDWARE = 6;
		public const uint32 ACM_METRIC_COUNT_LOCAL_DRIVERS = 20;
		public const uint32 ACM_METRIC_COUNT_LOCAL_CODECS = 21;
		public const uint32 ACM_METRIC_COUNT_LOCAL_CONVERTERS = 22;
		public const uint32 ACM_METRIC_COUNT_LOCAL_FILTERS = 23;
		public const uint32 ACM_METRIC_COUNT_LOCAL_DISABLED = 24;
		public const uint32 ACM_METRIC_HARDWARE_WAVE_INPUT = 30;
		public const uint32 ACM_METRIC_HARDWARE_WAVE_OUTPUT = 31;
		public const uint32 ACM_METRIC_MAX_SIZE_FORMAT = 50;
		public const uint32 ACM_METRIC_MAX_SIZE_FILTER = 51;
		public const uint32 ACM_METRIC_DRIVER_SUPPORT = 100;
		public const uint32 ACM_METRIC_DRIVER_PRIORITY = 101;
		public const int32 ACM_DRIVERENUMF_NOLOCAL = 1073741824;
		public const int32 ACM_DRIVERENUMF_DISABLED = -2147483648;
		public const int32 ACM_DRIVERADDF_NAME = 1;
		public const int32 ACM_DRIVERADDF_FUNCTION = 3;
		public const int32 ACM_DRIVERADDF_NOTIFYHWND = 4;
		public const int32 ACM_DRIVERADDF_TYPEMASK = 7;
		public const int32 ACM_DRIVERADDF_LOCAL = 0;
		public const int32 ACM_DRIVERADDF_GLOBAL = 8;
		public const uint32 ACMDM_USER = 16384;
		public const uint32 ACMDM_RESERVED_LOW = 24576;
		public const uint32 ACMDM_RESERVED_HIGH = 28671;
		public const uint32 ACMDM_DRIVER_ABOUT = 24587;
		public const int32 ACM_DRIVERPRIORITYF_ENABLE = 1;
		public const int32 ACM_DRIVERPRIORITYF_DISABLE = 2;
		public const int32 ACM_DRIVERPRIORITYF_ABLEMASK = 3;
		public const int32 ACM_DRIVERPRIORITYF_BEGIN = 65536;
		public const int32 ACM_DRIVERPRIORITYF_END = 131072;
		public const int32 ACM_DRIVERPRIORITYF_DEFERMASK = 196608;
		public const uint32 ACMDRIVERDETAILS_SHORTNAME_CHARS = 32;
		public const uint32 ACMDRIVERDETAILS_LONGNAME_CHARS = 128;
		public const uint32 ACMDRIVERDETAILS_COPYRIGHT_CHARS = 80;
		public const uint32 ACMDRIVERDETAILS_LICENSING_CHARS = 128;
		public const uint32 ACMDRIVERDETAILS_FEATURES_CHARS = 512;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_CODEC = 1;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_CONVERTER = 2;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_FILTER = 4;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_HARDWARE = 8;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_ASYNC = 16;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_LOCAL = 1073741824;
		public const int32 ACMDRIVERDETAILS_SUPPORTF_DISABLED = -2147483648;
		public const uint32 ACMFORMATTAGDETAILS_FORMATTAG_CHARS = 48;
		public const int32 ACM_FORMATTAGDETAILSF_INDEX = 0;
		public const int32 ACM_FORMATTAGDETAILSF_FORMATTAG = 1;
		public const int32 ACM_FORMATTAGDETAILSF_LARGESTSIZE = 2;
		public const int32 ACM_FORMATTAGDETAILSF_QUERYMASK = 15;
		public const uint32 ACMFORMATDETAILS_FORMAT_CHARS = 128;
		public const int32 ACM_FORMATDETAILSF_INDEX = 0;
		public const int32 ACM_FORMATDETAILSF_FORMAT = 1;
		public const int32 ACM_FORMATDETAILSF_QUERYMASK = 15;
		public const int32 ACM_FORMATENUMF_WFORMATTAG = 65536;
		public const int32 ACM_FORMATENUMF_NCHANNELS = 131072;
		public const int32 ACM_FORMATENUMF_NSAMPLESPERSEC = 262144;
		public const int32 ACM_FORMATENUMF_WBITSPERSAMPLE = 524288;
		public const int32 ACM_FORMATENUMF_CONVERT = 1048576;
		public const int32 ACM_FORMATENUMF_SUGGEST = 2097152;
		public const int32 ACM_FORMATENUMF_HARDWARE = 4194304;
		public const int32 ACM_FORMATENUMF_INPUT = 8388608;
		public const int32 ACM_FORMATENUMF_OUTPUT = 16777216;
		public const int32 ACM_FORMATSUGGESTF_WFORMATTAG = 65536;
		public const int32 ACM_FORMATSUGGESTF_NCHANNELS = 131072;
		public const int32 ACM_FORMATSUGGESTF_NSAMPLESPERSEC = 262144;
		public const int32 ACM_FORMATSUGGESTF_WBITSPERSAMPLE = 524288;
		public const int32 ACM_FORMATSUGGESTF_TYPEMASK = 16711680;
		public const uint32 MM_ACM_FORMATCHOOSE = 32768;
		public const uint32 FORMATCHOOSE_MESSAGE = 0;
		public const uint32 FORMATCHOOSE_FORMATTAG_VERIFY = 0;
		public const uint32 FORMATCHOOSE_FORMAT_VERIFY = 1;
		public const uint32 FORMATCHOOSE_CUSTOM_VERIFY = 2;
		public const int32 ACMFORMATCHOOSE_STYLEF_SHOWHELP = 4;
		public const int32 ACMFORMATCHOOSE_STYLEF_ENABLEHOOK = 8;
		public const int32 ACMFORMATCHOOSE_STYLEF_ENABLETEMPLATE = 16;
		public const int32 ACMFORMATCHOOSE_STYLEF_ENABLETEMPLATEHANDLE = 32;
		public const int32 ACMFORMATCHOOSE_STYLEF_INITTOWFXSTRUCT = 64;
		public const int32 ACMFORMATCHOOSE_STYLEF_CONTEXTHELP = 128;
		public const uint32 ACMFILTERTAGDETAILS_FILTERTAG_CHARS = 48;
		public const int32 ACM_FILTERTAGDETAILSF_INDEX = 0;
		public const int32 ACM_FILTERTAGDETAILSF_FILTERTAG = 1;
		public const int32 ACM_FILTERTAGDETAILSF_LARGESTSIZE = 2;
		public const int32 ACM_FILTERTAGDETAILSF_QUERYMASK = 15;
		public const uint32 ACMFILTERDETAILS_FILTER_CHARS = 128;
		public const int32 ACM_FILTERDETAILSF_INDEX = 0;
		public const int32 ACM_FILTERDETAILSF_FILTER = 1;
		public const int32 ACM_FILTERDETAILSF_QUERYMASK = 15;
		public const int32 ACM_FILTERENUMF_DWFILTERTAG = 65536;
		public const uint32 MM_ACM_FILTERCHOOSE = 32768;
		public const uint32 FILTERCHOOSE_MESSAGE = 0;
		public const uint32 FILTERCHOOSE_FILTERTAG_VERIFY = 0;
		public const uint32 FILTERCHOOSE_FILTER_VERIFY = 1;
		public const uint32 FILTERCHOOSE_CUSTOM_VERIFY = 2;
		public const int32 ACMFILTERCHOOSE_STYLEF_SHOWHELP = 4;
		public const int32 ACMFILTERCHOOSE_STYLEF_ENABLEHOOK = 8;
		public const int32 ACMFILTERCHOOSE_STYLEF_ENABLETEMPLATE = 16;
		public const int32 ACMFILTERCHOOSE_STYLEF_ENABLETEMPLATEHANDLE = 32;
		public const int32 ACMFILTERCHOOSE_STYLEF_INITTOFILTERSTRUCT = 64;
		public const int32 ACMFILTERCHOOSE_STYLEF_CONTEXTHELP = 128;
		public const int32 ACMSTREAMHEADER_STATUSF_DONE = 65536;
		public const int32 ACMSTREAMHEADER_STATUSF_PREPARED = 131072;
		public const int32 ACMSTREAMHEADER_STATUSF_INQUEUE = 1048576;
		public const uint32 ACM_STREAMOPENF_QUERY = 1;
		public const uint32 ACM_STREAMOPENF_ASYNC = 2;
		public const uint32 ACM_STREAMOPENF_NONREALTIME = 4;
		public const int32 ACM_STREAMSIZEF_SOURCE = 0;
		public const int32 ACM_STREAMSIZEF_DESTINATION = 1;
		public const int32 ACM_STREAMSIZEF_QUERYMASK = 15;
		public const uint32 ACM_STREAMCONVERTF_BLOCKALIGN = 4;
		public const uint32 ACM_STREAMCONVERTF_START = 16;
		public const uint32 ACM_STREAMCONVERTF_END = 32;
		public const uint32 SND_SYNC = 0;
		public const uint32 SND_ASYNC = 1;
		public const uint32 SND_NODEFAULT = 2;
		public const uint32 SND_MEMORY = 4;
		public const uint32 SND_LOOP = 8;
		public const uint32 SND_NOSTOP = 16;
		public const int32 SND_NOWAIT = 8192;
		public const int32 SND_ALIAS = 65536;
		public const int32 SND_ALIAS_ID = 1114112;
		public const int32 SND_FILENAME = 131072;
		public const int32 SND_RESOURCE = 262148;
		public const uint32 SND_PURGE = 64;
		public const uint32 SND_APPLICATION = 128;
		public const int32 SND_SENTRY = 524288;
		public const int32 SND_RING = 1048576;
		public const int32 SND_SYSTEM = 2097152;
		public const uint32 SND_ALIAS_START = 0;
		public const uint32 ACMDM_DRIVER_NOTIFY = 24577;
		public const uint32 ACMDM_DRIVER_DETAILS = 24586;
		public const uint32 ACMDM_HARDWARE_WAVE_CAPS_INPUT = 24596;
		public const uint32 ACMDM_HARDWARE_WAVE_CAPS_OUTPUT = 24597;
		public const uint32 ACMDM_FORMATTAG_DETAILS = 24601;
		public const uint32 ACMDM_FORMAT_DETAILS = 24602;
		public const uint32 ACMDM_FORMAT_SUGGEST = 24603;
		public const uint32 ACMDM_FILTERTAG_DETAILS = 24626;
		public const uint32 ACMDM_FILTER_DETAILS = 24627;
		public const uint32 ACMDM_STREAM_OPEN = 24652;
		public const uint32 ACMDM_STREAM_CLOSE = 24653;
		public const uint32 ACMDM_STREAM_SIZE = 24654;
		public const uint32 ACMDM_STREAM_CONVERT = 24655;
		public const uint32 ACMDM_STREAM_RESET = 24656;
		public const uint32 ACMDM_STREAM_PREPARE = 24657;
		public const uint32 ACMDM_STREAM_UNPREPARE = 24658;
		public const uint32 ACMDM_STREAM_UPDATE = 24659;
		
		// --- Typedefs ---
		
		public typealias HMIDI = int;
		public typealias HMIDIIN = int;
		public typealias HMIDIOUT = int;
		public typealias HMIDISTRM = int;
		public typealias HMIXER = int;
		public typealias HMIXEROBJ = int;
		public typealias HWAVE = int;
		public typealias HWAVEOUT = int;
		public typealias HWAVEIN = int;
		public typealias HACMDRIVERID = int;
		public typealias HACMDRIVER = int;
		public typealias HACMSTREAM = int;
		public typealias HACMOBJ = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum MIDI_WAVE_OPEN_TYPE : uint32
		{
			CALLBACK_TYPEMASK = 458752,
			CALLBACK_NULL = 0,
			CALLBACK_WINDOW = 65536,
			CALLBACK_TASK = 131072,
			CALLBACK_FUNCTION = 196608,
			CALLBACK_THREAD = 131072,
			CALLBACK_EVENT = 327680,
			WAVE_FORMAT_QUERY = 1,
			WAVE_ALLOWSYNC = 2,
			WAVE_MAPPED = 4,
			WAVE_FORMAT_DIRECT = 8,
			WAVE_FORMAT_DIRECT_QUERY = 9,
			WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE = 16,
			MIDI_IO_STATUS = 32,
		}
		[AllowDuplicates]
		public enum MIXERLINE_COMPONENTTYPE : uint32
		{
			MIXERLINE_COMPONENTTYPE_DST_DIGITAL = 1,
			MIXERLINE_COMPONENTTYPE_DST_HEADPHONES = 5,
			MIXERLINE_COMPONENTTYPE_DST_LINE = 2,
			MIXERLINE_COMPONENTTYPE_DST_MONITOR = 3,
			MIXERLINE_COMPONENTTYPE_DST_SPEAKERS = 4,
			MIXERLINE_COMPONENTTYPE_DST_TELEPHONE = 6,
			MIXERLINE_COMPONENTTYPE_DST_UNDEFINED = 0,
			MIXERLINE_COMPONENTTYPE_DST_VOICEIN = 8,
			MIXERLINE_COMPONENTTYPE_DST_WAVEIN = 7,
			MIXERLINE_COMPONENTTYPE_SRC_ANALOG = 4106,
			MIXERLINE_COMPONENTTYPE_SRC_AUXILIARY = 4105,
			MIXERLINE_COMPONENTTYPE_SRC_COMPACTDISC = 4101,
			MIXERLINE_COMPONENTTYPE_SRC_DIGITAL = 4097,
			MIXERLINE_COMPONENTTYPE_SRC_LINE = 4098,
			MIXERLINE_COMPONENTTYPE_SRC_MICROPHONE = 4099,
			MIXERLINE_COMPONENTTYPE_SRC_PCSPEAKER = 4103,
			MIXERLINE_COMPONENTTYPE_SRC_SYNTHESIZER = 4100,
			MIXERLINE_COMPONENTTYPE_SRC_TELEPHONE = 4102,
			MIXERLINE_COMPONENTTYPE_SRC_UNDEFINED = 4096,
			MIXERLINE_COMPONENTTYPE_SRC_WAVEOUT = 4104,
		}
		[AllowDuplicates]
		public enum AUDCLNT_SHAREMODE : int32
		{
			AUDCLNT_SHAREMODE_SHARED = 0,
			AUDCLNT_SHAREMODE_EXCLUSIVE = 1,
		}
		[AllowDuplicates]
		public enum AUDIO_STREAM_CATEGORY : int32
		{
			AudioCategory_Other = 0,
			AudioCategory_ForegroundOnlyMedia = 1,
			AudioCategory_Communications = 3,
			AudioCategory_Alerts = 4,
			AudioCategory_SoundEffects = 5,
			AudioCategory_GameEffects = 6,
			AudioCategory_GameMedia = 7,
			AudioCategory_GameChat = 8,
			AudioCategory_Speech = 9,
			AudioCategory_Movie = 10,
			AudioCategory_Media = 11,
			AudioCategory_FarFieldSpeech = 12,
			AudioCategory_UniformSpeech = 13,
			AudioCategory_VoiceTyping = 14,
		}
		[AllowDuplicates]
		public enum AudioSessionState : int32
		{
			AudioSessionStateInactive = 0,
			AudioSessionStateActive = 1,
			AudioSessionStateExpired = 2,
		}
		[AllowDuplicates]
		public enum _AUDCLNT_BUFFERFLAGS : int32
		{
			AUDCLNT_BUFFERFLAGS_DATA_DISCONTINUITY = 1,
			AUDCLNT_BUFFERFLAGS_SILENT = 2,
			AUDCLNT_BUFFERFLAGS_TIMESTAMP_ERROR = 4,
		}
		[AllowDuplicates]
		public enum AUDCLNT_STREAMOPTIONS : uint32
		{
			AUDCLNT_STREAMOPTIONS_NONE = 0,
			AUDCLNT_STREAMOPTIONS_RAW = 1,
			AUDCLNT_STREAMOPTIONS_MATCH_FORMAT = 2,
			AUDCLNT_STREAMOPTIONS_AMBISONICS = 4,
		}
		[AllowDuplicates]
		public enum AUDIO_DUCKING_OPTIONS : uint32
		{
			AUDIO_DUCKING_OPTIONS_DEFAULT = 0,
			AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS = 1,
		}
		[AllowDuplicates]
		public enum AUDIO_EFFECT_STATE : int32
		{
			AUDIO_EFFECT_STATE_OFF = 0,
			AUDIO_EFFECT_STATE_ON = 1,
		}
		[AllowDuplicates]
		public enum AMBISONICS_TYPE : int32
		{
			AMBISONICS_TYPE_FULL3D = 0,
		}
		[AllowDuplicates]
		public enum AMBISONICS_CHANNEL_ORDERING : int32
		{
			AMBISONICS_CHANNEL_ORDERING_ACN = 0,
		}
		[AllowDuplicates]
		public enum AMBISONICS_NORMALIZATION : int32
		{
			AMBISONICS_NORMALIZATION_SN3D = 0,
			AMBISONICS_NORMALIZATION_N3D = 1,
		}
		[AllowDuplicates]
		public enum AudioObjectType : uint32
		{
			AudioObjectType_None = 0,
			AudioObjectType_Dynamic = 1,
			AudioObjectType_FrontLeft = 2,
			AudioObjectType_FrontRight = 4,
			AudioObjectType_FrontCenter = 8,
			AudioObjectType_LowFrequency = 16,
			AudioObjectType_SideLeft = 32,
			AudioObjectType_SideRight = 64,
			AudioObjectType_BackLeft = 128,
			AudioObjectType_BackRight = 256,
			AudioObjectType_TopFrontLeft = 512,
			AudioObjectType_TopFrontRight = 1024,
			AudioObjectType_TopBackLeft = 2048,
			AudioObjectType_TopBackRight = 4096,
			AudioObjectType_BottomFrontLeft = 8192,
			AudioObjectType_BottomFrontRight = 16384,
			AudioObjectType_BottomBackLeft = 32768,
			AudioObjectType_BottomBackRight = 65536,
			AudioObjectType_BackCenter = 131072,
		}
		[AllowDuplicates]
		public enum SPATIAL_AUDIO_STREAM_OPTIONS : uint32
		{
			SPATIAL_AUDIO_STREAM_OPTIONS_NONE = 0,
			SPATIAL_AUDIO_STREAM_OPTIONS_OFFLOAD = 1,
		}
		[AllowDuplicates]
		public enum SpatialAudioHrtfDirectivityType : int32
		{
			SpatialAudioHrtfDirectivity_OmniDirectional = 0,
			SpatialAudioHrtfDirectivity_Cardioid = 1,
			SpatialAudioHrtfDirectivity_Cone = 2,
		}
		[AllowDuplicates]
		public enum SpatialAudioHrtfEnvironmentType : int32
		{
			SpatialAudioHrtfEnvironment_Small = 0,
			SpatialAudioHrtfEnvironment_Medium = 1,
			SpatialAudioHrtfEnvironment_Large = 2,
			SpatialAudioHrtfEnvironment_Outdoors = 3,
			SpatialAudioHrtfEnvironment_Average = 4,
		}
		[AllowDuplicates]
		public enum SpatialAudioHrtfDistanceDecayType : int32
		{
			SpatialAudioHrtfDistanceDecay_NaturalDecay = 0,
			SpatialAudioHrtfDistanceDecay_CustomDecay = 1,
		}
		[AllowDuplicates]
		public enum EDataFlow : int32
		{
			eRender = 0,
			eCapture = 1,
			eAll = 2,
			EDataFlow_enum_count = 3,
		}
		[AllowDuplicates]
		public enum ERole : int32
		{
			eConsole = 0,
			eMultimedia = 1,
			eCommunications = 2,
			ERole_enum_count = 3,
		}
		[AllowDuplicates]
		public enum EndpointFormFactor : int32
		{
			RemoteNetworkDevice = 0,
			Speakers = 1,
			LineLevel = 2,
			Headphones = 3,
			Microphone = 4,
			Headset = 5,
			Handset = 6,
			UnknownDigitalPassthrough = 7,
			SPDIF = 8,
			DigitalAudioDisplayDevice = 9,
			UnknownFormFactor = 10,
			EndpointFormFactor_enum_count = 11,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 : int32
		{
			AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_DEFAULT = 0,
			AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_USER = 1,
			AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_VOLATILE = 2,
			AUDIO_SYSTEMEFFECTS_PROPERTYSTORE_TYPE_ENUM_COUNT = 3,
		}
		[AllowDuplicates]
		public enum DataFlow : int32
		{
			In = 0,
			Out = 1,
		}
		[AllowDuplicates]
		public enum PartType : int32
		{
			Connector = 0,
			Subunit = 1,
		}
		[AllowDuplicates]
		public enum ConnectorType : int32
		{
			Unknown_Connector = 0,
			Physical_Internal = 1,
			Physical_External = 2,
			Software_IO = 3,
			Software_Fixed = 4,
			Network = 5,
		}
		[AllowDuplicates]
		public enum AudioSessionDisconnectReason : int32
		{
			DisconnectReasonDeviceRemoval = 0,
			DisconnectReasonServerShutdown = 1,
			DisconnectReasonFormatChanged = 2,
			DisconnectReasonSessionLogoff = 3,
			DisconnectReasonSessionDisconnected = 4,
			DisconnectReasonExclusiveModeOverride = 5,
		}
		[AllowDuplicates]
		public enum SpatialAudioMetadataWriterOverflowMode : int32
		{
			SpatialAudioMetadataWriterOverflow_Fail = 0,
			SpatialAudioMetadataWriterOverflow_MergeWithNew = 1,
			SpatialAudioMetadataWriterOverflow_MergeWithLast = 2,
		}
		[AllowDuplicates]
		public enum SpatialAudioMetadataCopyMode : int32
		{
			SpatialAudioMetadataCopy_Overwrite = 0,
			SpatialAudioMetadataCopy_Append = 1,
			SpatialAudioMetadataCopy_AppendMergeWithLast = 2,
			SpatialAudioMetadataCopy_AppendMergeWithFirst = 3,
		}
		[AllowDuplicates]
		public enum PROCESS_LOOPBACK_MODE : int32
		{
			PROCESS_LOOPBACK_MODE_INCLUDE_TARGET_PROCESS_TREE = 0,
			PROCESS_LOOPBACK_MODE_EXCLUDE_TARGET_PROCESS_TREE = 1,
		}
		[AllowDuplicates]
		public enum AUDIOCLIENT_ACTIVATION_TYPE : int32
		{
			AUDIOCLIENT_ACTIVATION_TYPE_DEFAULT = 0,
			AUDIOCLIENT_ACTIVATION_TYPE_PROCESS_LOOPBACK = 1,
		}
		[AllowDuplicates]
		public enum AudioStateMonitorSoundLevel : int32
		{
			Muted = 0,
			Low = 1,
			Full = 2,
		}
		
		// --- Function Pointers ---
		
		public function void LPWAVECALLBACK(HDRVR hdrvr, uint32 uMsg, uint dwUser, uint dw1, uint dw2);
		public function void LPMIDICALLBACK(HDRVR hdrvr, uint32 uMsg, uint dwUser, uint dw1, uint dw2);
		public function void PAudioStateMonitorCallback(IAudioStateMonitor audioStateMonitor, void* context);
		public function BOOL ACMDRIVERENUMCB(HACMDRIVERID hadid, uint dwInstance, uint32 fdwSupport);
		public function LRESULT LPACMDRIVERPROC(uint param0, HACMDRIVERID param1, uint32 param2, LPARAM param3, LPARAM param4);
		public function BOOL ACMFORMATTAGENUMCBA(HACMDRIVERID hadid, ACMFORMATTAGDETAILSA* paftd, uint dwInstance, uint32 fdwSupport);
		public function BOOL ACMFORMATTAGENUMCBW(HACMDRIVERID hadid, ACMFORMATTAGDETAILSW* paftd, uint dwInstance, uint32 fdwSupport);
		public function BOOL ACMFORMATENUMCBA(HACMDRIVERID hadid, ACMFORMATDETAILSA* pafd, uint dwInstance, uint32 fdwSupport);
		public function BOOL ACMFORMATENUMCBW(HACMDRIVERID hadid, tACMFORMATDETAILSW* pafd, uint dwInstance, uint32 fdwSupport);
		public function uint32 ACMFORMATCHOOSEHOOKPROCA(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function uint32 ACMFORMATCHOOSEHOOKPROCW(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function BOOL ACMFILTERTAGENUMCBA(HACMDRIVERID hadid, ACMFILTERTAGDETAILSA* paftd, uint dwInstance, uint32 fdwSupport);
		public function BOOL ACMFILTERTAGENUMCBW(HACMDRIVERID hadid, ACMFILTERTAGDETAILSW* paftd, uint dwInstance, uint32 fdwSupport);
		public function BOOL ACMFILTERENUMCBA(HACMDRIVERID hadid, ACMFILTERDETAILSA* pafd, uint dwInstance, uint32 fdwSupport);
		public function BOOL ACMFILTERENUMCBW(HACMDRIVERID hadid, ACMFILTERDETAILSW* pafd, uint dwInstance, uint32 fdwSupport);
		public function uint32 ACMFILTERCHOOSEHOOKPROCA(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function uint32 ACMFILTERCHOOSEHOOKPROCW(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		
		// --- Structs ---
		
		[CRepr]
		public struct AUDIO_VOLUME_NOTIFICATION_DATA
		{
			public Guid guidEventContext;
			public BOOL bMuted;
			public float fMasterVolume;
			public uint32 nChannels;
			public float[] afChannelVolumes;
		}
		[CRepr]
		public struct WAVEFORMATEXTENSIBLE
		{
			public WAVEFORMATEX Format;
			public _Samples_e__Union Samples;
			public uint32 dwChannelMask;
			public Guid SubFormat;
			
			[CRepr, Union]
			public struct _Samples_e__Union
			{
				public uint16 wValidBitsPerSample;
				public uint16 wSamplesPerBlock;
				public uint16 wReserved;
			}
		}
		[CRepr]
		public struct WAVEFILTER
		{
			public uint32 cbStruct;
			public uint32 dwFilterTag;
			public uint32 fdwFilter;
			public uint32[5] dwReserved;
		}
		[CRepr]
		public struct VOLUMEWAVEFILTER
		{
			public WAVEFILTER wfltr;
			public uint32 dwVolume;
		}
		[CRepr]
		public struct ECHOWAVEFILTER
		{
			public WAVEFILTER wfltr;
			public uint32 dwVolume;
			public uint32 dwDelay;
		}
		[CRepr]
		public struct WAVEHDR
		{
			public PSTR lpData;
			public uint32 dwBufferLength;
			public uint32 dwBytesRecorded;
			public uint dwUser;
			public uint32 dwFlags;
			public uint32 dwLoops;
			public WAVEHDR* lpNext;
			public uint reserved;
		}
		[CRepr]
		public struct WAVEOUTCAPSA
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct WAVEOUTCAPSW
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct WAVEOUTCAPS2A
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct WAVEOUTCAPS2W
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct WAVEINCAPSA
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
		}
		[CRepr]
		public struct WAVEINCAPSW
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
		}
		[CRepr]
		public struct WAVEINCAPS2A
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct WAVEINCAPS2W
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 dwFormats;
			public uint16 wChannels;
			public uint16 wReserved1;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct WAVEFORMAT
		{
			public uint16 wFormatTag;
			public uint16 nChannels;
			public uint32 nSamplesPerSec;
			public uint32 nAvgBytesPerSec;
			public uint16 nBlockAlign;
		}
		[CRepr]
		public struct PCMWAVEFORMAT
		{
			public WAVEFORMAT wf;
			public uint16 wBitsPerSample;
		}
		[CRepr]
		public struct WAVEFORMATEX
		{
			public uint16 wFormatTag;
			public uint16 nChannels;
			public uint32 nSamplesPerSec;
			public uint32 nAvgBytesPerSec;
			public uint16 nBlockAlign;
			public uint16 wBitsPerSample;
			public uint16 cbSize;
		}
		[CRepr]
		public struct MIDIOUTCAPSA
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint16 wTechnology;
			public uint16 wVoices;
			public uint16 wNotes;
			public uint16 wChannelMask;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct MIDIOUTCAPSW
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint16 wTechnology;
			public uint16 wVoices;
			public uint16 wNotes;
			public uint16 wChannelMask;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct MIDIOUTCAPS2A
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint16 wTechnology;
			public uint16 wVoices;
			public uint16 wNotes;
			public uint16 wChannelMask;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIDIOUTCAPS2W
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint16 wTechnology;
			public uint16 wVoices;
			public uint16 wNotes;
			public uint16 wChannelMask;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIDIINCAPSA
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct MIDIINCAPSW
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct MIDIINCAPS2A
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIDIINCAPS2W
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIDIHDR
		{
			public PSTR lpData;
			public uint32 dwBufferLength;
			public uint32 dwBytesRecorded;
			public uint dwUser;
			public uint32 dwFlags;
			public MIDIHDR* lpNext;
			public uint reserved;
			public uint32 dwOffset;
			public uint[8] dwReserved;
		}
		[CRepr]
		public struct MIDIEVENT
		{
			public uint32 dwDeltaTime;
			public uint32 dwStreamID;
			public uint32 dwEvent;
			public uint32[] dwParms;
		}
		[CRepr]
		public struct MIDISTRMBUFFVER
		{
			public uint32 dwVersion;
			public uint32 dwMid;
			public uint32 dwOEMVersion;
		}
		[CRepr]
		public struct MIDIPROPTIMEDIV
		{
			public uint32 cbStruct;
			public uint32 dwTimeDiv;
		}
		[CRepr]
		public struct MIDIPROPTEMPO
		{
			public uint32 cbStruct;
			public uint32 dwTempo;
		}
		[CRepr]
		public struct AUXCAPSA
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint16 wTechnology;
			public uint16 wReserved1;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct AUXCAPSW
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint16 wTechnology;
			public uint16 wReserved1;
			public uint32 dwSupport;
		}
		[CRepr]
		public struct AUXCAPS2A
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint16 wTechnology;
			public uint16 wReserved1;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct AUXCAPS2W
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint16 wTechnology;
			public uint16 wReserved1;
			public uint32 dwSupport;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIXERCAPSA
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 fdwSupport;
			public uint32 cDestinations;
		}
		[CRepr]
		public struct MIXERCAPSW
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 fdwSupport;
			public uint32 cDestinations;
		}
		[CRepr]
		public struct MIXERCAPS2A
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public CHAR[32] szPname;
			public uint32 fdwSupport;
			public uint32 cDestinations;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIXERCAPS2W
		{
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vDriverVersion;
			public char16[32] szPname;
			public uint32 fdwSupport;
			public uint32 cDestinations;
			public Guid ManufacturerGuid;
			public Guid ProductGuid;
			public Guid NameGuid;
		}
		[CRepr]
		public struct MIXERLINEA
		{
			public uint32 cbStruct;
			public uint32 dwDestination;
			public uint32 dwSource;
			public uint32 dwLineID;
			public uint32 fdwLine;
			public uint dwUser;
			public MIXERLINE_COMPONENTTYPE dwComponentType;
			public uint32 cChannels;
			public uint32 cConnections;
			public uint32 cControls;
			public CHAR[16] szShortName;
			public CHAR[64] szName;
			public _Target_e__Struct Target;
			
			[CRepr]
			public struct _Target_e__Struct
			{
				public uint32 dwType;
				public uint32 dwDeviceID;
				public uint16 wMid;
				public uint16 wPid;
				public uint32 vDriverVersion;
				public CHAR[32] szPname;
			}
		}
		[CRepr]
		public struct MIXERLINEW
		{
			public uint32 cbStruct;
			public uint32 dwDestination;
			public uint32 dwSource;
			public uint32 dwLineID;
			public uint32 fdwLine;
			public uint dwUser;
			public MIXERLINE_COMPONENTTYPE dwComponentType;
			public uint32 cChannels;
			public uint32 cConnections;
			public uint32 cControls;
			public char16[16] szShortName;
			public char16[64] szName;
			public _Target_e__Struct Target;
			
			[CRepr]
			public struct _Target_e__Struct
			{
				public uint32 dwType;
				public uint32 dwDeviceID;
				public uint16 wMid;
				public uint16 wPid;
				public uint32 vDriverVersion;
				public char16[32] szPname;
			}
		}
		[CRepr]
		public struct MIXERCONTROLA
		{
			public uint32 cbStruct;
			public uint32 dwControlID;
			public uint32 dwControlType;
			public uint32 fdwControl;
			public uint32 cMultipleItems;
			public CHAR[16] szShortName;
			public CHAR[64] szName;
			public _Bounds_e__Union Bounds;
			public _Metrics_e__Union Metrics;
			
			[CRepr, Union]
			public struct _Bounds_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				public uint32[6] dwReserved;
				
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 dwMinimum;
					public uint32 dwMaximum;
				}
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public int32 lMinimum;
					public int32 lMaximum;
				}
			}
			[CRepr, Union]
			public struct _Metrics_e__Union
			{
				public uint32 cSteps;
				public uint32 cbCustomData;
				public uint32[6] dwReserved;
			}
		}
		[CRepr]
		public struct MIXERCONTROLW
		{
			public uint32 cbStruct;
			public uint32 dwControlID;
			public uint32 dwControlType;
			public uint32 fdwControl;
			public uint32 cMultipleItems;
			public char16[16] szShortName;
			public char16[64] szName;
			public _Bounds_e__Union Bounds;
			public _Metrics_e__Union Metrics;
			
			[CRepr, Union]
			public struct _Bounds_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				public uint32[6] dwReserved;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public int32 lMinimum;
					public int32 lMaximum;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 dwMinimum;
					public uint32 dwMaximum;
				}
			}
			[CRepr, Union]
			public struct _Metrics_e__Union
			{
				public uint32 cSteps;
				public uint32 cbCustomData;
				public uint32[6] dwReserved;
			}
		}
		[CRepr]
		public struct MIXERLINECONTROLSA
		{
			public uint32 cbStruct;
			public uint32 dwLineID;
			public _Anonymous_e__Union Anonymous;
			public uint32 cControls;
			public uint32 cbmxctrl;
			public MIXERCONTROLA* pamxctrl;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwControlID;
				public uint32 dwControlType;
			}
		}
		[CRepr]
		public struct MIXERLINECONTROLSW
		{
			public uint32 cbStruct;
			public uint32 dwLineID;
			public _Anonymous_e__Union Anonymous;
			public uint32 cControls;
			public uint32 cbmxctrl;
			public MIXERCONTROLW* pamxctrl;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwControlID;
				public uint32 dwControlType;
			}
		}
		[CRepr]
		public struct MIXERCONTROLDETAILS
		{
			public uint32 cbStruct;
			public uint32 dwControlID;
			public uint32 cChannels;
			public _Anonymous_e__Union Anonymous;
			public uint32 cbDetails;
			public void* paDetails;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HWND hwndOwner;
				public uint32 cMultipleItems;
			}
		}
		[CRepr]
		public struct MIXERCONTROLDETAILS_LISTTEXTA
		{
			public uint32 dwParam1;
			public uint32 dwParam2;
			public CHAR[64] szName;
		}
		[CRepr]
		public struct MIXERCONTROLDETAILS_LISTTEXTW
		{
			public uint32 dwParam1;
			public uint32 dwParam2;
			public char16[64] szName;
		}
		[CRepr]
		public struct MIXERCONTROLDETAILS_BOOLEAN
		{
			public int32 fValue;
		}
		[CRepr]
		public struct MIXERCONTROLDETAILS_SIGNED
		{
			public int32 lValue;
		}
		[CRepr]
		public struct MIXERCONTROLDETAILS_UNSIGNED
		{
			public uint32 dwValue;
		}
		[CRepr]
		public struct AudioClientProperties
		{
			public uint32 cbSize;
			public BOOL bIsOffload;
			public AUDIO_STREAM_CATEGORY eCategory;
			public AUDCLNT_STREAMOPTIONS Options;
		}
		[CRepr]
		public struct AudioClient3ActivationParams
		{
			public Guid tracingContextId;
		}
		[CRepr]
		public struct AUDIO_EFFECT
		{
			public Guid id;
			public BOOL canSetState;
			public AUDIO_EFFECT_STATE state;
		}
		[CRepr]
		public struct AMBISONICS_PARAMS
		{
			public uint32 u32Size;
			public uint32 u32Version;
			public AMBISONICS_TYPE u32Type;
			public AMBISONICS_CHANNEL_ORDERING u32ChannelOrdering;
			public AMBISONICS_NORMALIZATION u32Normalization;
			public uint32 u32Order;
			public uint32 u32NumChannels;
			public uint32* pu32ChannelMap;
		}
		[CRepr]
		public struct SpatialAudioObjectRenderStreamActivationParams
		{
			public WAVEFORMATEX* ObjectFormat;
			public AudioObjectType StaticObjectTypeMask;
			public uint32 MinDynamicObjectCount;
			public uint32 MaxDynamicObjectCount;
			public AUDIO_STREAM_CATEGORY Category;
			public HANDLE EventHandle;
			public ISpatialAudioObjectRenderStreamNotify NotifyObject;
		}
		[CRepr]
		public struct SpatialAudioObjectRenderStreamActivationParams2
		{
			public WAVEFORMATEX* ObjectFormat;
			public AudioObjectType StaticObjectTypeMask;
			public uint32 MinDynamicObjectCount;
			public uint32 MaxDynamicObjectCount;
			public AUDIO_STREAM_CATEGORY Category;
			public HANDLE EventHandle;
			public ISpatialAudioObjectRenderStreamNotify NotifyObject;
			public SPATIAL_AUDIO_STREAM_OPTIONS Options;
		}
		[CRepr]
		public struct SpatialAudioClientActivationParams
		{
			public Guid tracingContextId;
			public Guid appId;
			public int32 majorVersion;
			public int32 minorVersion1;
			public int32 minorVersion2;
			public int32 minorVersion3;
		}
		[CRepr]
		public struct SpatialAudioHrtfDirectivity
		{
			public SpatialAudioHrtfDirectivityType Type;
			public float Scaling;
		}
		[CRepr]
		public struct SpatialAudioHrtfDirectivityCardioid
		{
			public SpatialAudioHrtfDirectivity directivity;
			public float Order;
		}
		[CRepr]
		public struct SpatialAudioHrtfDirectivityCone
		{
			public SpatialAudioHrtfDirectivity directivity;
			public float InnerAngle;
			public float OuterAngle;
		}
		[CRepr, Union]
		public struct SpatialAudioHrtfDirectivityUnion
		{
			public SpatialAudioHrtfDirectivityCone Cone;
			public SpatialAudioHrtfDirectivityCardioid Cardiod;
			public SpatialAudioHrtfDirectivity Omni;
		}
		[CRepr]
		public struct SpatialAudioHrtfDistanceDecay
		{
			public SpatialAudioHrtfDistanceDecayType Type;
			public float MaxGain;
			public float MinGain;
			public float UnityGainDistance;
			public float CutoffDistance;
		}
		[CRepr]
		public struct SpatialAudioHrtfActivationParams
		{
			public WAVEFORMATEX* ObjectFormat;
			public AudioObjectType StaticObjectTypeMask;
			public uint32 MinDynamicObjectCount;
			public uint32 MaxDynamicObjectCount;
			public AUDIO_STREAM_CATEGORY Category;
			public HANDLE EventHandle;
			public ISpatialAudioObjectRenderStreamNotify NotifyObject;
			public SpatialAudioHrtfDistanceDecay* DistanceDecay;
			public SpatialAudioHrtfDirectivityUnion* Directivity;
			public SpatialAudioHrtfEnvironmentType* Environment;
			public float* Orientation;
		}
		[CRepr]
		public struct SpatialAudioHrtfActivationParams2
		{
			public WAVEFORMATEX* ObjectFormat;
			public AudioObjectType StaticObjectTypeMask;
			public uint32 MinDynamicObjectCount;
			public uint32 MaxDynamicObjectCount;
			public AUDIO_STREAM_CATEGORY Category;
			public HANDLE EventHandle;
			public ISpatialAudioObjectRenderStreamNotify NotifyObject;
			public SpatialAudioHrtfDistanceDecay* DistanceDecay;
			public SpatialAudioHrtfDirectivityUnion* Directivity;
			public SpatialAudioHrtfEnvironmentType* Environment;
			public float* Orientation;
			public SPATIAL_AUDIO_STREAM_OPTIONS Options;
		}
		[CRepr]
		public struct DIRECTX_AUDIO_ACTIVATION_PARAMS
		{
			public uint32 cbDirectXAudioActivationParams;
			public Guid guidAudioSession;
			public uint32 dwAudioStreamFlags;
		}
		[CRepr]
		public struct AudioExtensionParams
		{
			public LPARAM AddPageParam;
			public IMMDevice pEndpoint;
			public IMMDevice pPnpInterface;
			public IMMDevice pPnpDevnode;
		}
		[CRepr]
		public struct SpatialAudioMetadataItemsInfo
		{
			public uint16 FrameCount;
			public uint16 ItemCount;
			public uint16 MaxItemCount;
			public uint32 MaxValueBufferLength;
		}
		[CRepr]
		public struct SpatialAudioObjectRenderStreamForMetadataActivationParams
		{
			public WAVEFORMATEX* ObjectFormat;
			public AudioObjectType StaticObjectTypeMask;
			public uint32 MinDynamicObjectCount;
			public uint32 MaxDynamicObjectCount;
			public AUDIO_STREAM_CATEGORY Category;
			public HANDLE EventHandle;
			public Guid MetadataFormatId;
			public uint16 MaxMetadataItemCount;
			public PROPVARIANT* MetadataActivationParams;
			public ISpatialAudioObjectRenderStreamNotify NotifyObject;
		}
		[CRepr]
		public struct SpatialAudioObjectRenderStreamForMetadataActivationParams2
		{
			public WAVEFORMATEX* ObjectFormat;
			public AudioObjectType StaticObjectTypeMask;
			public uint32 MinDynamicObjectCount;
			public uint32 MaxDynamicObjectCount;
			public AUDIO_STREAM_CATEGORY Category;
			public HANDLE EventHandle;
			public Guid MetadataFormatId;
			public uint32 MaxMetadataItemCount;
			public PROPVARIANT* MetadataActivationParams;
			public ISpatialAudioObjectRenderStreamNotify NotifyObject;
			public SPATIAL_AUDIO_STREAM_OPTIONS Options;
		}
		[CRepr]
		public struct AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS
		{
			public uint32 TargetProcessId;
			public PROCESS_LOOPBACK_MODE ProcessLoopbackMode;
		}
		[CRepr]
		public struct AUDIOCLIENT_ACTIVATION_PARAMS
		{
			public AUDIOCLIENT_ACTIVATION_TYPE ActivationType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS ProcessLoopbackParams;
			}
		}
		[CRepr]
		public struct ACMDRIVERDETAILSA
		{
			public uint32 cbStruct;
			public uint32 fccType;
			public uint32 fccComp;
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vdwACM;
			public uint32 vdwDriver;
			public uint32 fdwSupport;
			public uint32 cFormatTags;
			public uint32 cFilterTags;
			public HICON hicon;
			public CHAR[32] szShortName;
			public CHAR[128] szLongName;
			public CHAR[80] szCopyright;
			public CHAR[128] szLicensing;
			public CHAR[512] szFeatures;
		}
		[CRepr]
		public struct ACMDRIVERDETAILSW
		{
			public uint32 cbStruct;
			public uint32 fccType;
			public uint32 fccComp;
			public uint16 wMid;
			public uint16 wPid;
			public uint32 vdwACM;
			public uint32 vdwDriver;
			public uint32 fdwSupport;
			public uint32 cFormatTags;
			public uint32 cFilterTags;
			public HICON hicon;
			public char16[32] szShortName;
			public char16[128] szLongName;
			public char16[80] szCopyright;
			public char16[128] szLicensing;
			public char16[512] szFeatures;
		}
		[CRepr]
		public struct ACMFORMATTAGDETAILSA
		{
			public uint32 cbStruct;
			public uint32 dwFormatTagIndex;
			public uint32 dwFormatTag;
			public uint32 cbFormatSize;
			public uint32 fdwSupport;
			public uint32 cStandardFormats;
			public CHAR[48] szFormatTag;
		}
		[CRepr]
		public struct ACMFORMATTAGDETAILSW
		{
			public uint32 cbStruct;
			public uint32 dwFormatTagIndex;
			public uint32 dwFormatTag;
			public uint32 cbFormatSize;
			public uint32 fdwSupport;
			public uint32 cStandardFormats;
			public char16[48] szFormatTag;
		}
		[CRepr]
		public struct ACMFORMATDETAILSA
		{
			public uint32 cbStruct;
			public uint32 dwFormatIndex;
			public uint32 dwFormatTag;
			public uint32 fdwSupport;
			public WAVEFORMATEX* pwfx;
			public uint32 cbwfx;
			public CHAR[128] szFormat;
		}
		[CRepr]
		public struct tACMFORMATDETAILSW
		{
			public uint32 cbStruct;
			public uint32 dwFormatIndex;
			public uint32 dwFormatTag;
			public uint32 fdwSupport;
			public WAVEFORMATEX* pwfx;
			public uint32 cbwfx;
			public char16[128] szFormat;
		}
		[CRepr]
		public struct ACMFORMATCHOOSEA
		{
			public uint32 cbStruct;
			public uint32 fdwStyle;
			public HWND hwndOwner;
			public WAVEFORMATEX* pwfx;
			public uint32 cbwfx;
			public PSTR pszTitle;
			public CHAR[48] szFormatTag;
			public CHAR[128] szFormat;
			public PSTR pszName;
			public uint32 cchName;
			public uint32 fdwEnum;
			public WAVEFORMATEX* pwfxEnum;
			public HINSTANCE hInstance;
			public PSTR pszTemplateName;
			public LPARAM lCustData;
			public ACMFORMATCHOOSEHOOKPROCA pfnHook;
		}
		[CRepr]
		public struct ACMFORMATCHOOSEW
		{
			public uint32 cbStruct;
			public uint32 fdwStyle;
			public HWND hwndOwner;
			public WAVEFORMATEX* pwfx;
			public uint32 cbwfx;
			public PWSTR pszTitle;
			public char16[48] szFormatTag;
			public char16[128] szFormat;
			public PWSTR pszName;
			public uint32 cchName;
			public uint32 fdwEnum;
			public WAVEFORMATEX* pwfxEnum;
			public HINSTANCE hInstance;
			public PWSTR pszTemplateName;
			public LPARAM lCustData;
			public ACMFORMATCHOOSEHOOKPROCW pfnHook;
		}
		[CRepr]
		public struct ACMFILTERTAGDETAILSA
		{
			public uint32 cbStruct;
			public uint32 dwFilterTagIndex;
			public uint32 dwFilterTag;
			public uint32 cbFilterSize;
			public uint32 fdwSupport;
			public uint32 cStandardFilters;
			public CHAR[48] szFilterTag;
		}
		[CRepr]
		public struct ACMFILTERTAGDETAILSW
		{
			public uint32 cbStruct;
			public uint32 dwFilterTagIndex;
			public uint32 dwFilterTag;
			public uint32 cbFilterSize;
			public uint32 fdwSupport;
			public uint32 cStandardFilters;
			public char16[48] szFilterTag;
		}
		[CRepr]
		public struct ACMFILTERDETAILSA
		{
			public uint32 cbStruct;
			public uint32 dwFilterIndex;
			public uint32 dwFilterTag;
			public uint32 fdwSupport;
			public WAVEFILTER* pwfltr;
			public uint32 cbwfltr;
			public CHAR[128] szFilter;
		}
		[CRepr]
		public struct ACMFILTERDETAILSW
		{
			public uint32 cbStruct;
			public uint32 dwFilterIndex;
			public uint32 dwFilterTag;
			public uint32 fdwSupport;
			public WAVEFILTER* pwfltr;
			public uint32 cbwfltr;
			public char16[128] szFilter;
		}
		[CRepr]
		public struct ACMFILTERCHOOSEA
		{
			public uint32 cbStruct;
			public uint32 fdwStyle;
			public HWND hwndOwner;
			public WAVEFILTER* pwfltr;
			public uint32 cbwfltr;
			public PSTR pszTitle;
			public CHAR[48] szFilterTag;
			public CHAR[128] szFilter;
			public PSTR pszName;
			public uint32 cchName;
			public uint32 fdwEnum;
			public WAVEFILTER* pwfltrEnum;
			public HINSTANCE hInstance;
			public PSTR pszTemplateName;
			public LPARAM lCustData;
			public ACMFILTERCHOOSEHOOKPROCA pfnHook;
		}
		[CRepr]
		public struct ACMFILTERCHOOSEW
		{
			public uint32 cbStruct;
			public uint32 fdwStyle;
			public HWND hwndOwner;
			public WAVEFILTER* pwfltr;
			public uint32 cbwfltr;
			public PWSTR pszTitle;
			public char16[48] szFilterTag;
			public char16[128] szFilter;
			public PWSTR pszName;
			public uint32 cchName;
			public uint32 fdwEnum;
			public WAVEFILTER* pwfltrEnum;
			public HINSTANCE hInstance;
			public PWSTR pszTemplateName;
			public LPARAM lCustData;
			public ACMFILTERCHOOSEHOOKPROCW pfnHook;
		}
		[CRepr]
		public struct ACMSTREAMHEADER
		{
			public uint32 cbStruct;
			public uint32 fdwStatus;
			public uint dwUser;
			public uint8* pbSrc;
			public uint32 cbSrcLength;
			public uint32 cbSrcLengthUsed;
			public uint dwSrcUser;
			public uint8* pbDst;
			public uint32 cbDstLength;
			public uint32 cbDstLengthUsed;
			public uint dwDstUser;
			public uint32[15] dwReservedDriver;
		}
		[CRepr]
		public struct tACMDRVOPENDESCA
		{
			public uint32 cbStruct;
			public uint32 fccType;
			public uint32 fccComp;
			public uint32 dwVersion;
			public uint32 dwFlags;
			public uint32 dwError;
			public PSTR pszSectionName;
			public PSTR pszAliasName;
			public uint32 dnDevNode;
		}
		[CRepr]
		public struct tACMDRVOPENDESCW
		{
			public uint32 cbStruct;
			public uint32 fccType;
			public uint32 fccComp;
			public uint32 dwVersion;
			public uint32 dwFlags;
			public uint32 dwError;
			public PWSTR pszSectionName;
			public PWSTR pszAliasName;
			public uint32 dnDevNode;
		}
		[CRepr]
		public struct ACMDRVSTREAMINSTANCE
		{
			public uint32 cbStruct;
			public WAVEFORMATEX* pwfxSrc;
			public WAVEFORMATEX* pwfxDst;
			public WAVEFILTER* pwfltr;
			public uint dwCallback;
			public uint dwInstance;
			public uint32 fdwOpen;
			public uint32 fdwDriver;
			public uint dwDriver;
			public HACMSTREAM has;
		}
		[CRepr]
		public struct ACMDRVSTREAMHEADER
		{
			public uint32 cbStruct;
			public uint32 fdwStatus;
			public uint dwUser;
			public uint8* pbSrc;
			public uint32 cbSrcLength;
			public uint32 cbSrcLengthUsed;
			public uint dwSrcUser;
			public uint8* pbDst;
			public uint32 cbDstLength;
			public uint32 cbDstLengthUsed;
			public uint dwDstUser;
			public uint32 fdwConvert;
			public ACMDRVSTREAMHEADER* padshNext;
			public uint32 fdwDriver;
			public uint dwDriver;
			public uint32 fdwPrepared;
			public uint dwPrepared;
			public uint8* pbPreparedSrc;
			public uint32 cbPreparedSrcLength;
			public uint8* pbPreparedDst;
			public uint32 cbPreparedDstLength;
		}
		[CRepr]
		public struct ACMDRVSTREAMSIZE
		{
			public uint32 cbStruct;
			public uint32 fdwSize;
			public uint32 cbSrcLength;
			public uint32 cbDstLength;
		}
		[CRepr]
		public struct ACMDRVFORMATSUGGEST
		{
			public uint32 cbStruct;
			public uint32 fdwSuggest;
			public WAVEFORMATEX* pwfxSrc;
			public uint32 cbwfxSrc;
			public WAVEFORMATEX* pwfxDst;
			public uint32 cbwfxDst;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MMDeviceEnumerator = .(0xbcde0395, 0xe52f, 0x467c, 0x8e, 0x3d, 0xc4, 0x57, 0x92, 0x91, 0x69, 0x2e);
		public const Guid CLSID_DeviceTopology = .(0x1df639d0, 0x5ec1, 0x47aa, 0x93, 0x79, 0x82, 0x8d, 0xc1, 0xaa, 0x8c, 0x59);
		
		// --- COM Interfaces ---
		
		public struct IMessageFilter {}
		public struct IAudioClient {}
		public struct IAudioClient2 {}
		public struct IAudioClient3 {}
		public struct IAudioRenderClient {}
		public struct IAudioCaptureClient {}
		public struct IAudioClock {}
		public struct IAudioClock2 {}
		public struct IAudioClockAdjustment {}
		public struct ISimpleAudioVolume {}
		public struct IAudioClientDuckingControl {}
		public struct IAudioEffectsChangedNotificationClient {}
		public struct IAudioEffectsManager {}
		public struct IAudioStreamVolume {}
		public struct IAudioAmbisonicsControl {}
		public struct IChannelAudioVolume {}
		public struct IAudioFormatEnumerator {}
		public struct ISpatialAudioObjectBase {}
		public struct ISpatialAudioObject {}
		public struct ISpatialAudioObjectRenderStreamBase {}
		public struct ISpatialAudioObjectRenderStream {}
		public struct ISpatialAudioObjectRenderStreamNotify {}
		public struct ISpatialAudioClient {}
		public struct ISpatialAudioClient2 {}
		public struct ISpatialAudioObjectForHrtf {}
		public struct ISpatialAudioObjectRenderStreamForHrtf {}
		public struct IMMNotificationClient {}
		public struct IMMDevice {}
		public struct IMMDeviceCollection {}
		public struct IMMEndpoint {}
		public struct IMMDeviceEnumerator {}
		public struct IMMDeviceActivator {}
		public struct IActivateAudioInterfaceCompletionHandler {}
		public struct IActivateAudioInterfaceAsyncOperation {}
		public struct IAudioSystemEffectsPropertyChangeNotificationClient {}
		public struct IAudioSystemEffectsPropertyStore {}
		public struct IPerChannelDbLevel {}
		public struct IAudioVolumeLevel {}
		public struct IAudioChannelConfig {}
		public struct IAudioLoudness {}
		public struct IAudioInputSelector {}
		public struct IAudioOutputSelector {}
		public struct IAudioMute {}
		public struct IAudioBass {}
		public struct IAudioMidrange {}
		public struct IAudioTreble {}
		public struct IAudioAutoGainControl {}
		public struct IAudioPeakMeter {}
		public struct IDeviceSpecificProperty {}
		public struct IPartsList {}
		public struct IPart {}
		public struct IConnector {}
		public struct ISubunit {}
		public struct IControlInterface {}
		public struct IControlChangeNotify {}
		public struct IDeviceTopology {}
		public struct IAudioSessionEvents {}
		public struct IAudioSessionControl {}
		public struct IAudioSessionControl2 {}
		public struct IAudioSessionManager {}
		public struct IAudioVolumeDuckNotification {}
		public struct IAudioSessionNotification {}
		public struct IAudioSessionEnumerator {}
		public struct IAudioSessionManager2 {}
		public struct ISpatialAudioMetadataItems {}
		public struct ISpatialAudioMetadataWriter {}
		public struct ISpatialAudioMetadataReader {}
		public struct ISpatialAudioMetadataCopier {}
		public struct ISpatialAudioMetadataItemsBuffer {}
		public struct ISpatialAudioMetadataClient {}
		public struct ISpatialAudioObjectForMetadataCommands {}
		public struct ISpatialAudioObjectForMetadataItems {}
		public struct ISpatialAudioObjectRenderStreamForMetadata {}
		public struct IAudioStateMonitor {}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterMessageFilter(IMessageFilter lpMessageFilter, IMessageFilter* lplpMessageFilter);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL sndPlaySoundA(PSTR pszSound, uint32 fuSound);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL sndPlaySoundW(PWSTR pszSound, uint32 fuSound);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlaySoundA(PSTR pszSound, HINSTANCE hmod, uint32 fdwSound);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlaySoundW(PWSTR pszSound, HINSTANCE hmod, uint32 fdwSound);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetNumDevs();
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetDevCapsA(uint uDeviceID, WAVEOUTCAPSA* pwoc, uint32 cbwoc);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetDevCapsW(uint uDeviceID, WAVEOUTCAPSW* pwoc, uint32 cbwoc);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetVolume(HWAVEOUT hwo, uint32* pdwVolume);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutSetVolume(HWAVEOUT hwo, uint32 dwVolume);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutOpen(HWAVEOUT* phwo, uint32 uDeviceID, WAVEFORMATEX* pwfx, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutClose(HWAVEOUT hwo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutPrepareHeader(HWAVEOUT hwo, WAVEHDR* pwh, uint32 cbwh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutUnprepareHeader(HWAVEOUT hwo, WAVEHDR* pwh, uint32 cbwh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutWrite(HWAVEOUT hwo, WAVEHDR* pwh, uint32 cbwh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutPause(HWAVEOUT hwo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutRestart(HWAVEOUT hwo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutReset(HWAVEOUT hwo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutBreakLoop(HWAVEOUT hwo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetPosition(HWAVEOUT hwo, MMTIME* pmmt, uint32 cbmmt);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetPitch(HWAVEOUT hwo, uint32* pdwPitch);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutSetPitch(HWAVEOUT hwo, uint32 dwPitch);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetPlaybackRate(HWAVEOUT hwo, uint32* pdwRate);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutSetPlaybackRate(HWAVEOUT hwo, uint32 dwRate);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutGetID(HWAVEOUT hwo, uint32* puDeviceID);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveOutMessage(HWAVEOUT hwo, uint32 uMsg, uint dw1, uint dw2);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetNumDevs();
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetDevCapsA(uint uDeviceID, WAVEINCAPSA* pwic, uint32 cbwic);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetDevCapsW(uint uDeviceID, WAVEINCAPSW* pwic, uint32 cbwic);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInOpen(HWAVEIN* phwi, uint32 uDeviceID, WAVEFORMATEX* pwfx, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInClose(HWAVEIN hwi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInPrepareHeader(HWAVEIN hwi, WAVEHDR* pwh, uint32 cbwh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInUnprepareHeader(HWAVEIN hwi, WAVEHDR* pwh, uint32 cbwh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInAddBuffer(HWAVEIN hwi, WAVEHDR* pwh, uint32 cbwh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInStart(HWAVEIN hwi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInStop(HWAVEIN hwi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInReset(HWAVEIN hwi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetPosition(HWAVEIN hwi, MMTIME* pmmt, uint32 cbmmt);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInGetID(HWAVEIN hwi, uint32* puDeviceID);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 waveInMessage(HWAVEIN hwi, uint32 uMsg, uint dw1, uint dw2);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetNumDevs();
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamOpen(HMIDISTRM* phms, uint32* puDeviceID, uint32 cMidi, uint dwCallback, uint dwInstance, uint32 fdwOpen);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamClose(HMIDISTRM hms);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamProperty(HMIDISTRM hms, uint8* lppropdata, uint32 dwProperty);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamPosition(HMIDISTRM hms, MMTIME* lpmmt, uint32 cbmmt);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamOut(HMIDISTRM hms, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamPause(HMIDISTRM hms);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamRestart(HMIDISTRM hms);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiStreamStop(HMIDISTRM hms);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiConnect(HMIDI hmi, HMIDIOUT hmo, void* pReserved);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiDisconnect(HMIDI hmi, HMIDIOUT hmo, void* pReserved);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetDevCapsA(uint uDeviceID, MIDIOUTCAPSA* pmoc, uint32 cbmoc);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetDevCapsW(uint uDeviceID, MIDIOUTCAPSW* pmoc, uint32 cbmoc);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetVolume(HMIDIOUT hmo, uint32* pdwVolume);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutSetVolume(HMIDIOUT hmo, uint32 dwVolume);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutOpen(HMIDIOUT* phmo, uint32 uDeviceID, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutClose(HMIDIOUT hmo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutPrepareHeader(HMIDIOUT hmo, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutUnprepareHeader(HMIDIOUT hmo, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutShortMsg(HMIDIOUT hmo, uint32 dwMsg);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutLongMsg(HMIDIOUT hmo, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutReset(HMIDIOUT hmo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutCachePatches(HMIDIOUT hmo, uint32 uBank, uint16* pwpa, uint32 fuCache);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutCacheDrumPatches(HMIDIOUT hmo, uint32 uPatch, uint16* pwkya, uint32 fuCache);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutGetID(HMIDIOUT hmo, uint32* puDeviceID);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiOutMessage(HMIDIOUT hmo, uint32 uMsg, uint dw1, uint dw2);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInGetNumDevs();
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInGetDevCapsA(uint uDeviceID, MIDIINCAPSA* pmic, uint32 cbmic);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInGetDevCapsW(uint uDeviceID, MIDIINCAPSW* pmic, uint32 cbmic);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInOpen(HMIDIIN* phmi, uint32 uDeviceID, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInClose(HMIDIIN hmi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInPrepareHeader(HMIDIIN hmi, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInUnprepareHeader(HMIDIIN hmi, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInAddBuffer(HMIDIIN hmi, MIDIHDR* pmh, uint32 cbmh);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInStart(HMIDIIN hmi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInStop(HMIDIIN hmi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInReset(HMIDIIN hmi);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInGetID(HMIDIIN hmi, uint32* puDeviceID);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 midiInMessage(HMIDIIN hmi, uint32 uMsg, uint dw1, uint dw2);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 auxGetNumDevs();
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 auxGetDevCapsA(uint uDeviceID, AUXCAPSA* pac, uint32 cbac);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 auxGetDevCapsW(uint uDeviceID, AUXCAPSW* pac, uint32 cbac);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 auxSetVolume(uint32 uDeviceID, uint32 dwVolume);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 auxGetVolume(uint32 uDeviceID, uint32* pdwVolume);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 auxOutMessage(uint32 uDeviceID, uint32 uMsg, uint dw1, uint dw2);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetNumDevs();
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetDevCapsA(uint uMxId, MIXERCAPSA* pmxcaps, uint32 cbmxcaps);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetDevCapsW(uint uMxId, MIXERCAPSW* pmxcaps, uint32 cbmxcaps);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerOpen(int* phmx, uint32 uMxId, uint dwCallback, uint dwInstance, uint32 fdwOpen);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerClose(HMIXER hmx);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerMessage(HMIXER hmx, uint32 uMsg, uint dwParam1, uint dwParam2);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetLineInfoA(HMIXEROBJ hmxobj, MIXERLINEA* pmxl, uint32 fdwInfo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetLineInfoW(HMIXEROBJ hmxobj, MIXERLINEW* pmxl, uint32 fdwInfo);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetID(HMIXEROBJ hmxobj, uint32* puMxId, uint32 fdwId);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetLineControlsA(HMIXEROBJ hmxobj, MIXERLINECONTROLSA* pmxlc, uint32 fdwControls);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetLineControlsW(HMIXEROBJ hmxobj, MIXERLINECONTROLSW* pmxlc, uint32 fdwControls);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetControlDetailsA(HMIXEROBJ hmxobj, MIXERCONTROLDETAILS* pmxcd, uint32 fdwDetails);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerGetControlDetailsW(HMIXEROBJ hmxobj, MIXERCONTROLDETAILS* pmxcd, uint32 fdwDetails);
		[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 mixerSetControlDetails(HMIXEROBJ hmxobj, MIXERCONTROLDETAILS* pmxcd, uint32 fdwDetails);
		[Import("mmdevapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ActivateAudioInterfaceAsync(PWSTR deviceInterfacePath, Guid* riid, PROPVARIANT* activationParams, IActivateAudioInterfaceCompletionHandler completionHandler, IActivateAudioInterfaceAsyncOperation* activationOperation);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitor(IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitorForCategory(AUDIO_STREAM_CATEGORY category, IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitorForCategoryAndDeviceRole(AUDIO_STREAM_CATEGORY category, ERole role, IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitorForCategoryAndDeviceId(AUDIO_STREAM_CATEGORY category, PWSTR deviceId, IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitor(IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitorForCategory(AUDIO_STREAM_CATEGORY category, IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitorForCategoryAndDeviceRole(AUDIO_STREAM_CATEGORY category, ERole role, IAudioStateMonitor* audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitorForCategoryAndDeviceId(AUDIO_STREAM_CATEGORY category, PWSTR deviceId, IAudioStateMonitor* audioStateMonitor);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmGetVersion();
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmMetrics(HACMOBJ hao, uint32 uMetric, void* pMetric);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverEnum(ACMDRIVERENUMCB fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverID(HACMOBJ hao, int* phadid, uint32 fdwDriverID);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverAddA(int* phadid, HINSTANCE hinstModule, LPARAM lParam, uint32 dwPriority, uint32 fdwAdd);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverAddW(int* phadid, HINSTANCE hinstModule, LPARAM lParam, uint32 dwPriority, uint32 fdwAdd);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverRemove(HACMDRIVERID hadid, uint32 fdwRemove);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverOpen(int* phad, HACMDRIVERID hadid, uint32 fdwOpen);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverClose(HACMDRIVER had, uint32 fdwClose);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT acmDriverMessage(HACMDRIVER had, uint32 uMsg, LPARAM lParam1, LPARAM lParam2);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverPriority(HACMDRIVERID hadid, uint32 dwPriority, uint32 fdwPriority);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverDetailsA(HACMDRIVERID hadid, ACMDRIVERDETAILSA* padd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmDriverDetailsW(HACMDRIVERID hadid, ACMDRIVERDETAILSW* padd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatTagDetailsA(HACMDRIVER had, ACMFORMATTAGDETAILSA* paftd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatTagDetailsW(HACMDRIVER had, ACMFORMATTAGDETAILSW* paftd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatTagEnumA(HACMDRIVER had, ACMFORMATTAGDETAILSA* paftd, ACMFORMATTAGENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatTagEnumW(HACMDRIVER had, ACMFORMATTAGDETAILSW* paftd, ACMFORMATTAGENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatDetailsA(HACMDRIVER had, ACMFORMATDETAILSA* pafd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatDetailsW(HACMDRIVER had, tACMFORMATDETAILSW* pafd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatEnumA(HACMDRIVER had, ACMFORMATDETAILSA* pafd, ACMFORMATENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatEnumW(HACMDRIVER had, tACMFORMATDETAILSW* pafd, ACMFORMATENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatSuggest(HACMDRIVER had, WAVEFORMATEX* pwfxSrc, WAVEFORMATEX* pwfxDst, uint32 cbwfxDst, uint32 fdwSuggest);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatChooseA(ACMFORMATCHOOSEA* pafmtc);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFormatChooseW(ACMFORMATCHOOSEW* pafmtc);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterTagDetailsA(HACMDRIVER had, ACMFILTERTAGDETAILSA* paftd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterTagDetailsW(HACMDRIVER had, ACMFILTERTAGDETAILSW* paftd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterTagEnumA(HACMDRIVER had, ACMFILTERTAGDETAILSA* paftd, ACMFILTERTAGENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterTagEnumW(HACMDRIVER had, ACMFILTERTAGDETAILSW* paftd, ACMFILTERTAGENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterDetailsA(HACMDRIVER had, ACMFILTERDETAILSA* pafd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterDetailsW(HACMDRIVER had, ACMFILTERDETAILSW* pafd, uint32 fdwDetails);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterEnumA(HACMDRIVER had, ACMFILTERDETAILSA* pafd, ACMFILTERENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterEnumW(HACMDRIVER had, ACMFILTERDETAILSW* pafd, ACMFILTERENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterChooseA(ACMFILTERCHOOSEA* pafltrc);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmFilterChooseW(ACMFILTERCHOOSEW* pafltrc);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamOpen(int* phas, HACMDRIVER had, WAVEFORMATEX* pwfxSrc, WAVEFORMATEX* pwfxDst, WAVEFILTER* pwfltr, uint dwCallback, uint dwInstance, uint32 fdwOpen);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamClose(HACMSTREAM has, uint32 fdwClose);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamSize(HACMSTREAM has, uint32 cbInput, uint32* pdwOutputBytes, uint32 fdwSize);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamReset(HACMSTREAM has, uint32 fdwReset);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamMessage(HACMSTREAM has, uint32 uMsg, LPARAM lParam1, LPARAM lParam2);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamConvert(HACMSTREAM has, ACMSTREAMHEADER* pash, uint32 fdwConvert);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamPrepareHeader(HACMSTREAM has, ACMSTREAMHEADER* pash, uint32 fdwPrepare);
		[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 acmStreamUnprepareHeader(HACMSTREAM has, ACMSTREAMHEADER* pash, uint32 fdwUnprepare);
		
	}
}
