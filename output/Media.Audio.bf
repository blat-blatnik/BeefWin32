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
		public function void PAudioStateMonitorCallback(IAudioStateMonitor* audioStateMonitor, void* context);
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
			public ISpatialAudioObjectRenderStreamNotify* NotifyObject;
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
			public ISpatialAudioObjectRenderStreamNotify* NotifyObject;
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
			public ISpatialAudioObjectRenderStreamNotify* NotifyObject;
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
			public ISpatialAudioObjectRenderStreamNotify* NotifyObject;
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
			public IMMDevice* pEndpoint;
			public IMMDevice* pPnpInterface;
			public IMMDevice* pPnpDevnode;
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
			public ISpatialAudioObjectRenderStreamNotify* NotifyObject;
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
			public ISpatialAudioObjectRenderStreamNotify* NotifyObject;
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
		
		[CRepr]
		public struct IMessageFilter : IUnknown
		{
			public const new Guid IID = .(0x00000016, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 HandleInComingCall(uint32 dwCallType, HTASK htaskCaller, uint32 dwTickCount, INTERFACEINFO* lpInterfaceInfo) mut
			{
				return VT.HandleInComingCall(&this, dwCallType, htaskCaller, dwTickCount, lpInterfaceInfo);
			}
			public uint32 RetryRejectedCall(HTASK htaskCallee, uint32 dwTickCount, uint32 dwRejectType) mut
			{
				return VT.RetryRejectedCall(&this, htaskCallee, dwTickCount, dwRejectType);
			}
			public uint32 MessagePending(HTASK htaskCallee, uint32 dwTickCount, uint32 dwPendingType) mut
			{
				return VT.MessagePending(&this, htaskCallee, dwTickCount, dwPendingType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IMessageFilter *self, uint32 dwCallType, HTASK htaskCaller, uint32 dwTickCount, INTERFACEINFO* lpInterfaceInfo) HandleInComingCall;
				public new function uint32(IMessageFilter *self, HTASK htaskCallee, uint32 dwTickCount, uint32 dwRejectType) RetryRejectedCall;
				public new function uint32(IMessageFilter *self, HTASK htaskCallee, uint32 dwTickCount, uint32 dwPendingType) MessagePending;
			}
		}
		[CRepr]
		public struct IAudioClient : IUnknown
		{
			public const new Guid IID = .(0x1cb9ad4c, 0xdbfa, 0x4c32, 0xb1, 0x78, 0xc2, 0xf5, 0x68, 0xa7, 0x03, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(AUDCLNT_SHAREMODE ShareMode, uint32 StreamFlags, int64 hnsBufferDuration, int64 hnsPeriodicity, WAVEFORMATEX* pFormat, Guid* AudioSessionGuid) mut
			{
				return VT.Initialize(&this, ShareMode, StreamFlags, hnsBufferDuration, hnsPeriodicity, pFormat, AudioSessionGuid);
			}
			public HRESULT GetBufferSize(uint32* pNumBufferFrames) mut
			{
				return VT.GetBufferSize(&this, pNumBufferFrames);
			}
			public HRESULT GetStreamLatency(int64* phnsLatency) mut
			{
				return VT.GetStreamLatency(&this, phnsLatency);
			}
			public HRESULT GetCurrentPadding(uint32* pNumPaddingFrames) mut
			{
				return VT.GetCurrentPadding(&this, pNumPaddingFrames);
			}
			public HRESULT IsFormatSupported(AUDCLNT_SHAREMODE ShareMode, WAVEFORMATEX* pFormat, WAVEFORMATEX** ppClosestMatch) mut
			{
				return VT.IsFormatSupported(&this, ShareMode, pFormat, ppClosestMatch);
			}
			public HRESULT GetMixFormat(WAVEFORMATEX** ppDeviceFormat) mut
			{
				return VT.GetMixFormat(&this, ppDeviceFormat);
			}
			public HRESULT GetDevicePeriod(int64* phnsDefaultDevicePeriod, int64* phnsMinimumDevicePeriod) mut
			{
				return VT.GetDevicePeriod(&this, phnsDefaultDevicePeriod, phnsMinimumDevicePeriod);
			}
			public HRESULT Start() mut
			{
				return VT.Start(&this);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT SetEventHandle(HANDLE eventHandle) mut
			{
				return VT.SetEventHandle(&this, eventHandle);
			}
			public HRESULT GetService(Guid* riid, void** ppv) mut
			{
				return VT.GetService(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioClient *self, AUDCLNT_SHAREMODE ShareMode, uint32 StreamFlags, int64 hnsBufferDuration, int64 hnsPeriodicity, WAVEFORMATEX* pFormat, Guid* AudioSessionGuid) Initialize;
				public new function HRESULT(IAudioClient *self, uint32* pNumBufferFrames) GetBufferSize;
				public new function HRESULT(IAudioClient *self, int64* phnsLatency) GetStreamLatency;
				public new function HRESULT(IAudioClient *self, uint32* pNumPaddingFrames) GetCurrentPadding;
				public new function HRESULT(IAudioClient *self, AUDCLNT_SHAREMODE ShareMode, WAVEFORMATEX* pFormat, WAVEFORMATEX** ppClosestMatch) IsFormatSupported;
				public new function HRESULT(IAudioClient *self, WAVEFORMATEX** ppDeviceFormat) GetMixFormat;
				public new function HRESULT(IAudioClient *self, int64* phnsDefaultDevicePeriod, int64* phnsMinimumDevicePeriod) GetDevicePeriod;
				public new function HRESULT(IAudioClient *self) Start;
				public new function HRESULT(IAudioClient *self) Stop;
				public new function HRESULT(IAudioClient *self) Reset;
				public new function HRESULT(IAudioClient *self, HANDLE eventHandle) SetEventHandle;
				public new function HRESULT(IAudioClient *self, Guid* riid, void** ppv) GetService;
			}
		}
		[CRepr]
		public struct IAudioClient2 : IAudioClient
		{
			public const new Guid IID = .(0x726778cd, 0xf60a, 0x4eda, 0x82, 0xde, 0xe4, 0x76, 0x10, 0xcd, 0x78, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsOffloadCapable(AUDIO_STREAM_CATEGORY Category, BOOL* pbOffloadCapable) mut
			{
				return VT.IsOffloadCapable(&this, Category, pbOffloadCapable);
			}
			public HRESULT SetClientProperties(AudioClientProperties* pProperties) mut
			{
				return VT.SetClientProperties(&this, pProperties);
			}
			public HRESULT GetBufferSizeLimits(WAVEFORMATEX* pFormat, BOOL bEventDriven, int64* phnsMinBufferDuration, int64* phnsMaxBufferDuration) mut
			{
				return VT.GetBufferSizeLimits(&this, pFormat, bEventDriven, phnsMinBufferDuration, phnsMaxBufferDuration);
			}
			[CRepr]
			public struct VTable : IAudioClient.VTable
			{
				public new function HRESULT(IAudioClient2 *self, AUDIO_STREAM_CATEGORY Category, BOOL* pbOffloadCapable) IsOffloadCapable;
				public new function HRESULT(IAudioClient2 *self, AudioClientProperties* pProperties) SetClientProperties;
				public new function HRESULT(IAudioClient2 *self, WAVEFORMATEX* pFormat, BOOL bEventDriven, int64* phnsMinBufferDuration, int64* phnsMaxBufferDuration) GetBufferSizeLimits;
			}
		}
		[CRepr]
		public struct IAudioClient3 : IAudioClient2
		{
			public const new Guid IID = .(0x7ed4ee07, 0x8e67, 0x4cd4, 0x8c, 0x1a, 0x2b, 0x7a, 0x59, 0x87, 0xad, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSharedModeEnginePeriod(WAVEFORMATEX* pFormat, uint32* pDefaultPeriodInFrames, uint32* pFundamentalPeriodInFrames, uint32* pMinPeriodInFrames, uint32* pMaxPeriodInFrames) mut
			{
				return VT.GetSharedModeEnginePeriod(&this, pFormat, pDefaultPeriodInFrames, pFundamentalPeriodInFrames, pMinPeriodInFrames, pMaxPeriodInFrames);
			}
			public HRESULT GetCurrentSharedModeEnginePeriod(WAVEFORMATEX** ppFormat, uint32* pCurrentPeriodInFrames) mut
			{
				return VT.GetCurrentSharedModeEnginePeriod(&this, ppFormat, pCurrentPeriodInFrames);
			}
			public HRESULT InitializeSharedAudioStream(uint32 StreamFlags, uint32 PeriodInFrames, WAVEFORMATEX* pFormat, Guid* AudioSessionGuid) mut
			{
				return VT.InitializeSharedAudioStream(&this, StreamFlags, PeriodInFrames, pFormat, AudioSessionGuid);
			}
			[CRepr]
			public struct VTable : IAudioClient2.VTable
			{
				public new function HRESULT(IAudioClient3 *self, WAVEFORMATEX* pFormat, uint32* pDefaultPeriodInFrames, uint32* pFundamentalPeriodInFrames, uint32* pMinPeriodInFrames, uint32* pMaxPeriodInFrames) GetSharedModeEnginePeriod;
				public new function HRESULT(IAudioClient3 *self, WAVEFORMATEX** ppFormat, uint32* pCurrentPeriodInFrames) GetCurrentSharedModeEnginePeriod;
				public new function HRESULT(IAudioClient3 *self, uint32 StreamFlags, uint32 PeriodInFrames, WAVEFORMATEX* pFormat, Guid* AudioSessionGuid) InitializeSharedAudioStream;
			}
		}
		[CRepr]
		public struct IAudioRenderClient : IUnknown
		{
			public const new Guid IID = .(0xf294acfc, 0x3146, 0x4483, 0xa7, 0xbf, 0xad, 0xdc, 0xa7, 0xc2, 0x60, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(uint32 NumFramesRequested, uint8** ppData) mut
			{
				return VT.GetBuffer(&this, NumFramesRequested, ppData);
			}
			public HRESULT ReleaseBuffer(uint32 NumFramesWritten, uint32 dwFlags) mut
			{
				return VT.ReleaseBuffer(&this, NumFramesWritten, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioRenderClient *self, uint32 NumFramesRequested, uint8** ppData) GetBuffer;
				public new function HRESULT(IAudioRenderClient *self, uint32 NumFramesWritten, uint32 dwFlags) ReleaseBuffer;
			}
		}
		[CRepr]
		public struct IAudioCaptureClient : IUnknown
		{
			public const new Guid IID = .(0xc8adbd64, 0xe71e, 0x48a0, 0xa4, 0xde, 0x18, 0x5c, 0x39, 0x5c, 0xd3, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(uint8** ppData, uint32* pNumFramesToRead, uint32* pdwFlags, uint64* pu64DevicePosition, uint64* pu64QPCPosition) mut
			{
				return VT.GetBuffer(&this, ppData, pNumFramesToRead, pdwFlags, pu64DevicePosition, pu64QPCPosition);
			}
			public HRESULT ReleaseBuffer(uint32 NumFramesRead) mut
			{
				return VT.ReleaseBuffer(&this, NumFramesRead);
			}
			public HRESULT GetNextPacketSize(uint32* pNumFramesInNextPacket) mut
			{
				return VT.GetNextPacketSize(&this, pNumFramesInNextPacket);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioCaptureClient *self, uint8** ppData, uint32* pNumFramesToRead, uint32* pdwFlags, uint64* pu64DevicePosition, uint64* pu64QPCPosition) GetBuffer;
				public new function HRESULT(IAudioCaptureClient *self, uint32 NumFramesRead) ReleaseBuffer;
				public new function HRESULT(IAudioCaptureClient *self, uint32* pNumFramesInNextPacket) GetNextPacketSize;
			}
		}
		[CRepr]
		public struct IAudioClock : IUnknown
		{
			public const new Guid IID = .(0xcd63314f, 0x3fba, 0x4a1b, 0x81, 0x2c, 0xef, 0x96, 0x35, 0x87, 0x28, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFrequency(uint64* pu64Frequency) mut
			{
				return VT.GetFrequency(&this, pu64Frequency);
			}
			public HRESULT GetPosition(uint64* pu64Position, uint64* pu64QPCPosition) mut
			{
				return VT.GetPosition(&this, pu64Position, pu64QPCPosition);
			}
			public HRESULT GetCharacteristics(uint32* pdwCharacteristics) mut
			{
				return VT.GetCharacteristics(&this, pdwCharacteristics);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioClock *self, uint64* pu64Frequency) GetFrequency;
				public new function HRESULT(IAudioClock *self, uint64* pu64Position, uint64* pu64QPCPosition) GetPosition;
				public new function HRESULT(IAudioClock *self, uint32* pdwCharacteristics) GetCharacteristics;
			}
		}
		[CRepr]
		public struct IAudioClock2 : IUnknown
		{
			public const new Guid IID = .(0x6f49ff73, 0x6727, 0x49ac, 0xa0, 0x08, 0xd9, 0x8c, 0xf5, 0xe7, 0x00, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevicePosition(uint64* DevicePosition, uint64* QPCPosition) mut
			{
				return VT.GetDevicePosition(&this, DevicePosition, QPCPosition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioClock2 *self, uint64* DevicePosition, uint64* QPCPosition) GetDevicePosition;
			}
		}
		[CRepr]
		public struct IAudioClockAdjustment : IUnknown
		{
			public const new Guid IID = .(0xf6e4c0a0, 0x46d9, 0x4fb8, 0xbe, 0x21, 0x57, 0xa3, 0xef, 0x2b, 0x62, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSampleRate(float flSampleRate) mut
			{
				return VT.SetSampleRate(&this, flSampleRate);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioClockAdjustment *self, float flSampleRate) SetSampleRate;
			}
		}
		[CRepr]
		public struct ISimpleAudioVolume : IUnknown
		{
			public const new Guid IID = .(0x87ce5498, 0x68d6, 0x44e5, 0x92, 0x15, 0x6d, 0xa4, 0x7e, 0xf8, 0x83, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMasterVolume(float fLevel, Guid* EventContext) mut
			{
				return VT.SetMasterVolume(&this, fLevel, EventContext);
			}
			public HRESULT GetMasterVolume(float* pfLevel) mut
			{
				return VT.GetMasterVolume(&this, pfLevel);
			}
			public HRESULT SetMute(BOOL bMute, Guid* EventContext) mut
			{
				return VT.SetMute(&this, bMute, EventContext);
			}
			public HRESULT GetMute(BOOL* pbMute) mut
			{
				return VT.GetMute(&this, pbMute);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimpleAudioVolume *self, float fLevel, Guid* EventContext) SetMasterVolume;
				public new function HRESULT(ISimpleAudioVolume *self, float* pfLevel) GetMasterVolume;
				public new function HRESULT(ISimpleAudioVolume *self, BOOL bMute, Guid* EventContext) SetMute;
				public new function HRESULT(ISimpleAudioVolume *self, BOOL* pbMute) GetMute;
			}
		}
		[CRepr]
		public struct IAudioClientDuckingControl : IUnknown
		{
			public const new Guid IID = .(0xc789d381, 0xa28c, 0x4168, 0xb2, 0x8f, 0xd3, 0xa8, 0x37, 0x92, 0x4d, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDuckingOptionsForCurrentStream(AUDIO_DUCKING_OPTIONS options) mut
			{
				return VT.SetDuckingOptionsForCurrentStream(&this, options);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioClientDuckingControl *self, AUDIO_DUCKING_OPTIONS options) SetDuckingOptionsForCurrentStream;
			}
		}
		[CRepr]
		public struct IAudioEffectsChangedNotificationClient : IUnknown
		{
			public const new Guid IID = .(0xa5ded44f, 0x3c5d, 0x4b2b, 0xbd, 0x1e, 0x5d, 0xc1, 0xee, 0x20, 0xbb, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnAudioEffectsChanged() mut
			{
				return VT.OnAudioEffectsChanged(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEffectsChangedNotificationClient *self) OnAudioEffectsChanged;
			}
		}
		[CRepr]
		public struct IAudioEffectsManager : IUnknown
		{
			public const new Guid IID = .(0x4460b3ae, 0x4b44, 0x4527, 0x86, 0x76, 0x75, 0x48, 0xa8, 0xac, 0xd2, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterAudioEffectsChangedNotificationCallback(IAudioEffectsChangedNotificationClient* client) mut
			{
				return VT.RegisterAudioEffectsChangedNotificationCallback(&this, client);
			}
			public HRESULT UnregisterAudioEffectsChangedNotificationCallback(IAudioEffectsChangedNotificationClient* client) mut
			{
				return VT.UnregisterAudioEffectsChangedNotificationCallback(&this, client);
			}
			public HRESULT GetAudioEffects(AUDIO_EFFECT** effects, uint32* numEffects) mut
			{
				return VT.GetAudioEffects(&this, effects, numEffects);
			}
			public HRESULT SetAudioEffectState(Guid effectId, AUDIO_EFFECT_STATE state) mut
			{
				return VT.SetAudioEffectState(&this, effectId, state);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEffectsManager *self, IAudioEffectsChangedNotificationClient* client) RegisterAudioEffectsChangedNotificationCallback;
				public new function HRESULT(IAudioEffectsManager *self, IAudioEffectsChangedNotificationClient* client) UnregisterAudioEffectsChangedNotificationCallback;
				public new function HRESULT(IAudioEffectsManager *self, AUDIO_EFFECT** effects, uint32* numEffects) GetAudioEffects;
				public new function HRESULT(IAudioEffectsManager *self, Guid effectId, AUDIO_EFFECT_STATE state) SetAudioEffectState;
			}
		}
		[CRepr]
		public struct IAudioStreamVolume : IUnknown
		{
			public const new Guid IID = .(0x93014887, 0x242d, 0x4068, 0x8a, 0x15, 0xcf, 0x5e, 0x93, 0xb9, 0x0f, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChannelCount(uint32* pdwCount) mut
			{
				return VT.GetChannelCount(&this, pdwCount);
			}
			public HRESULT SetChannelVolume(uint32 dwIndex, float fLevel) mut
			{
				return VT.SetChannelVolume(&this, dwIndex, fLevel);
			}
			public HRESULT GetChannelVolume(uint32 dwIndex, float* pfLevel) mut
			{
				return VT.GetChannelVolume(&this, dwIndex, pfLevel);
			}
			public HRESULT SetAllVolumes(uint32 dwCount, float* pfVolumes) mut
			{
				return VT.SetAllVolumes(&this, dwCount, pfVolumes);
			}
			public HRESULT GetAllVolumes(uint32 dwCount, float* pfVolumes) mut
			{
				return VT.GetAllVolumes(&this, dwCount, pfVolumes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioStreamVolume *self, uint32* pdwCount) GetChannelCount;
				public new function HRESULT(IAudioStreamVolume *self, uint32 dwIndex, float fLevel) SetChannelVolume;
				public new function HRESULT(IAudioStreamVolume *self, uint32 dwIndex, float* pfLevel) GetChannelVolume;
				public new function HRESULT(IAudioStreamVolume *self, uint32 dwCount, float* pfVolumes) SetAllVolumes;
				public new function HRESULT(IAudioStreamVolume *self, uint32 dwCount, float* pfVolumes) GetAllVolumes;
			}
		}
		[CRepr]
		public struct IAudioAmbisonicsControl : IUnknown
		{
			public const new Guid IID = .(0x28724c91, 0xdf35, 0x4856, 0x9f, 0x76, 0xd6, 0xa2, 0x64, 0x13, 0xf3, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetData(AMBISONICS_PARAMS* pAmbisonicsParams, uint32 cbAmbisonicsParams) mut
			{
				return VT.SetData(&this, pAmbisonicsParams, cbAmbisonicsParams);
			}
			public HRESULT SetHeadTracking(BOOL bEnableHeadTracking) mut
			{
				return VT.SetHeadTracking(&this, bEnableHeadTracking);
			}
			public HRESULT GetHeadTracking(BOOL* pbEnableHeadTracking) mut
			{
				return VT.GetHeadTracking(&this, pbEnableHeadTracking);
			}
			public HRESULT SetRotation(float X, float Y, float Z, float W) mut
			{
				return VT.SetRotation(&this, X, Y, Z, W);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioAmbisonicsControl *self, AMBISONICS_PARAMS* pAmbisonicsParams, uint32 cbAmbisonicsParams) SetData;
				public new function HRESULT(IAudioAmbisonicsControl *self, BOOL bEnableHeadTracking) SetHeadTracking;
				public new function HRESULT(IAudioAmbisonicsControl *self, BOOL* pbEnableHeadTracking) GetHeadTracking;
				public new function HRESULT(IAudioAmbisonicsControl *self, float X, float Y, float Z, float W) SetRotation;
			}
		}
		[CRepr]
		public struct IChannelAudioVolume : IUnknown
		{
			public const new Guid IID = .(0x1c158861, 0xb533, 0x4b30, 0xb1, 0xcf, 0xe8, 0x53, 0xe5, 0x1c, 0x59, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChannelCount(uint32* pdwCount) mut
			{
				return VT.GetChannelCount(&this, pdwCount);
			}
			public HRESULT SetChannelVolume(uint32 dwIndex, float fLevel, Guid* EventContext) mut
			{
				return VT.SetChannelVolume(&this, dwIndex, fLevel, EventContext);
			}
			public HRESULT GetChannelVolume(uint32 dwIndex, float* pfLevel) mut
			{
				return VT.GetChannelVolume(&this, dwIndex, pfLevel);
			}
			public HRESULT SetAllVolumes(uint32 dwCount, float* pfVolumes, Guid* EventContext) mut
			{
				return VT.SetAllVolumes(&this, dwCount, pfVolumes, EventContext);
			}
			public HRESULT GetAllVolumes(uint32 dwCount, float* pfVolumes) mut
			{
				return VT.GetAllVolumes(&this, dwCount, pfVolumes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IChannelAudioVolume *self, uint32* pdwCount) GetChannelCount;
				public new function HRESULT(IChannelAudioVolume *self, uint32 dwIndex, float fLevel, Guid* EventContext) SetChannelVolume;
				public new function HRESULT(IChannelAudioVolume *self, uint32 dwIndex, float* pfLevel) GetChannelVolume;
				public new function HRESULT(IChannelAudioVolume *self, uint32 dwCount, float* pfVolumes, Guid* EventContext) SetAllVolumes;
				public new function HRESULT(IChannelAudioVolume *self, uint32 dwCount, float* pfVolumes) GetAllVolumes;
			}
		}
		[CRepr]
		public struct IAudioFormatEnumerator : IUnknown
		{
			public const new Guid IID = .(0xdcdaa858, 0x895a, 0x4a22, 0xa5, 0xeb, 0x67, 0xbd, 0xa5, 0x06, 0x09, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetFormat(uint32 index, WAVEFORMATEX** format) mut
			{
				return VT.GetFormat(&this, index, format);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioFormatEnumerator *self, uint32* count) GetCount;
				public new function HRESULT(IAudioFormatEnumerator *self, uint32 index, WAVEFORMATEX** format) GetFormat;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectBase : IUnknown
		{
			public const new Guid IID = .(0xcce0b8f2, 0x8d4d, 0x4efb, 0xa8, 0xcf, 0x3d, 0x6e, 0xcf, 0x1c, 0x30, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(uint8** buffer, uint32* bufferLength) mut
			{
				return VT.GetBuffer(&this, buffer, bufferLength);
			}
			public HRESULT SetEndOfStream(uint32 frameCount) mut
			{
				return VT.SetEndOfStream(&this, frameCount);
			}
			public HRESULT IsActive(BOOL* isActive) mut
			{
				return VT.IsActive(&this, isActive);
			}
			public HRESULT GetAudioObjectType(AudioObjectType* audioObjectType) mut
			{
				return VT.GetAudioObjectType(&this, audioObjectType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioObjectBase *self, uint8** buffer, uint32* bufferLength) GetBuffer;
				public new function HRESULT(ISpatialAudioObjectBase *self, uint32 frameCount) SetEndOfStream;
				public new function HRESULT(ISpatialAudioObjectBase *self, BOOL* isActive) IsActive;
				public new function HRESULT(ISpatialAudioObjectBase *self, AudioObjectType* audioObjectType) GetAudioObjectType;
			}
		}
		[CRepr]
		public struct ISpatialAudioObject : ISpatialAudioObjectBase
		{
			public const new Guid IID = .(0xdde28967, 0x521b, 0x46e5, 0x8f, 0x00, 0xbd, 0x6f, 0x2b, 0xc8, 0xab, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPosition(float x, float y, float z) mut
			{
				return VT.SetPosition(&this, x, y, z);
			}
			public HRESULT SetVolume(float volume) mut
			{
				return VT.SetVolume(&this, volume);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectBase.VTable
			{
				public new function HRESULT(ISpatialAudioObject *self, float x, float y, float z) SetPosition;
				public new function HRESULT(ISpatialAudioObject *self, float volume) SetVolume;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectRenderStreamBase : IUnknown
		{
			public const new Guid IID = .(0xfeaaf403, 0xc1d8, 0x450d, 0xaa, 0x05, 0xe0, 0xcc, 0xee, 0x75, 0x02, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailableDynamicObjectCount(uint32* value) mut
			{
				return VT.GetAvailableDynamicObjectCount(&this, value);
			}
			public HRESULT GetService(Guid* riid, void** service) mut
			{
				return VT.GetService(&this, riid, service);
			}
			public HRESULT Start() mut
			{
				return VT.Start(&this);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT BeginUpdatingAudioObjects(uint32* availableDynamicObjectCount, uint32* frameCountPerBuffer) mut
			{
				return VT.BeginUpdatingAudioObjects(&this, availableDynamicObjectCount, frameCountPerBuffer);
			}
			public HRESULT EndUpdatingAudioObjects() mut
			{
				return VT.EndUpdatingAudioObjects(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self, uint32* value) GetAvailableDynamicObjectCount;
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self, Guid* riid, void** service) GetService;
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self) Start;
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self) Stop;
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self) Reset;
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self, uint32* availableDynamicObjectCount, uint32* frameCountPerBuffer) BeginUpdatingAudioObjects;
				public new function HRESULT(ISpatialAudioObjectRenderStreamBase *self) EndUpdatingAudioObjects;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectRenderStream : ISpatialAudioObjectRenderStreamBase
		{
			public const new Guid IID = .(0xbab5f473, 0xb423, 0x477b, 0x85, 0xf5, 0xb5, 0xa3, 0x32, 0xa0, 0x41, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateSpatialAudioObject(AudioObjectType type, ISpatialAudioObject** audioObject) mut
			{
				return VT.ActivateSpatialAudioObject(&this, type, audioObject);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectRenderStreamBase.VTable
			{
				public new function HRESULT(ISpatialAudioObjectRenderStream *self, AudioObjectType type, ISpatialAudioObject** audioObject) ActivateSpatialAudioObject;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectRenderStreamNotify : IUnknown
		{
			public const new Guid IID = .(0xdddf83e6, 0x68d7, 0x4c70, 0x88, 0x3f, 0xa1, 0x83, 0x6a, 0xfb, 0x4a, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnAvailableDynamicObjectCountChange(ISpatialAudioObjectRenderStreamBase* sender, int64 hnsComplianceDeadlineTime, uint32 availableDynamicObjectCountChange) mut
			{
				return VT.OnAvailableDynamicObjectCountChange(&this, sender, hnsComplianceDeadlineTime, availableDynamicObjectCountChange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioObjectRenderStreamNotify *self, ISpatialAudioObjectRenderStreamBase* sender, int64 hnsComplianceDeadlineTime, uint32 availableDynamicObjectCountChange) OnAvailableDynamicObjectCountChange;
			}
		}
		[CRepr]
		public struct ISpatialAudioClient : IUnknown
		{
			public const new Guid IID = .(0xbbf8e066, 0xaaaa, 0x49be, 0x9a, 0x4d, 0xfd, 0x2a, 0x85, 0x8e, 0xa2, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStaticObjectPosition(AudioObjectType type, float* x, float* y, float* z) mut
			{
				return VT.GetStaticObjectPosition(&this, type, x, y, z);
			}
			public HRESULT GetNativeStaticObjectTypeMask(AudioObjectType* mask) mut
			{
				return VT.GetNativeStaticObjectTypeMask(&this, mask);
			}
			public HRESULT GetMaxDynamicObjectCount(uint32* value) mut
			{
				return VT.GetMaxDynamicObjectCount(&this, value);
			}
			public HRESULT GetSupportedAudioObjectFormatEnumerator(IAudioFormatEnumerator** enumerator) mut
			{
				return VT.GetSupportedAudioObjectFormatEnumerator(&this, enumerator);
			}
			public HRESULT GetMaxFrameCount(WAVEFORMATEX* objectFormat, uint32* frameCountPerBuffer) mut
			{
				return VT.GetMaxFrameCount(&this, objectFormat, frameCountPerBuffer);
			}
			public HRESULT IsAudioObjectFormatSupported(WAVEFORMATEX* objectFormat) mut
			{
				return VT.IsAudioObjectFormatSupported(&this, objectFormat);
			}
			public HRESULT IsSpatialAudioStreamAvailable(Guid* streamUuid, PROPVARIANT* auxiliaryInfo) mut
			{
				return VT.IsSpatialAudioStreamAvailable(&this, streamUuid, auxiliaryInfo);
			}
			public HRESULT ActivateSpatialAudioStream(PROPVARIANT* activationParams, Guid* riid, void** stream) mut
			{
				return VT.ActivateSpatialAudioStream(&this, activationParams, riid, stream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioClient *self, AudioObjectType type, float* x, float* y, float* z) GetStaticObjectPosition;
				public new function HRESULT(ISpatialAudioClient *self, AudioObjectType* mask) GetNativeStaticObjectTypeMask;
				public new function HRESULT(ISpatialAudioClient *self, uint32* value) GetMaxDynamicObjectCount;
				public new function HRESULT(ISpatialAudioClient *self, IAudioFormatEnumerator** enumerator) GetSupportedAudioObjectFormatEnumerator;
				public new function HRESULT(ISpatialAudioClient *self, WAVEFORMATEX* objectFormat, uint32* frameCountPerBuffer) GetMaxFrameCount;
				public new function HRESULT(ISpatialAudioClient *self, WAVEFORMATEX* objectFormat) IsAudioObjectFormatSupported;
				public new function HRESULT(ISpatialAudioClient *self, Guid* streamUuid, PROPVARIANT* auxiliaryInfo) IsSpatialAudioStreamAvailable;
				public new function HRESULT(ISpatialAudioClient *self, PROPVARIANT* activationParams, Guid* riid, void** stream) ActivateSpatialAudioStream;
			}
		}
		[CRepr]
		public struct ISpatialAudioClient2 : ISpatialAudioClient
		{
			public const new Guid IID = .(0xcaabe452, 0xa66a, 0x4bee, 0xa9, 0x3e, 0xe3, 0x20, 0x46, 0x3f, 0x6a, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsOffloadCapable(AUDIO_STREAM_CATEGORY category, BOOL* isOffloadCapable) mut
			{
				return VT.IsOffloadCapable(&this, category, isOffloadCapable);
			}
			public HRESULT GetMaxFrameCountForCategory(AUDIO_STREAM_CATEGORY category, BOOL offloadEnabled, WAVEFORMATEX* objectFormat, uint32* frameCountPerBuffer) mut
			{
				return VT.GetMaxFrameCountForCategory(&this, category, offloadEnabled, objectFormat, frameCountPerBuffer);
			}
			[CRepr]
			public struct VTable : ISpatialAudioClient.VTable
			{
				public new function HRESULT(ISpatialAudioClient2 *self, AUDIO_STREAM_CATEGORY category, BOOL* isOffloadCapable) IsOffloadCapable;
				public new function HRESULT(ISpatialAudioClient2 *self, AUDIO_STREAM_CATEGORY category, BOOL offloadEnabled, WAVEFORMATEX* objectFormat, uint32* frameCountPerBuffer) GetMaxFrameCountForCategory;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectForHrtf : ISpatialAudioObjectBase
		{
			public const new Guid IID = .(0xd7436ade, 0x1978, 0x4e14, 0xab, 0xa0, 0x55, 0x5b, 0xd8, 0xeb, 0x83, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPosition(float x, float y, float z) mut
			{
				return VT.SetPosition(&this, x, y, z);
			}
			public HRESULT SetGain(float gain) mut
			{
				return VT.SetGain(&this, gain);
			}
			public HRESULT SetOrientation(float** orientation) mut
			{
				return VT.SetOrientation(&this, orientation);
			}
			public HRESULT SetEnvironment(SpatialAudioHrtfEnvironmentType environment) mut
			{
				return VT.SetEnvironment(&this, environment);
			}
			public HRESULT SetDistanceDecay(SpatialAudioHrtfDistanceDecay* distanceDecay) mut
			{
				return VT.SetDistanceDecay(&this, distanceDecay);
			}
			public HRESULT SetDirectivity(SpatialAudioHrtfDirectivityUnion* directivity) mut
			{
				return VT.SetDirectivity(&this, directivity);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectBase.VTable
			{
				public new function HRESULT(ISpatialAudioObjectForHrtf *self, float x, float y, float z) SetPosition;
				public new function HRESULT(ISpatialAudioObjectForHrtf *self, float gain) SetGain;
				public new function HRESULT(ISpatialAudioObjectForHrtf *self, float** orientation) SetOrientation;
				public new function HRESULT(ISpatialAudioObjectForHrtf *self, SpatialAudioHrtfEnvironmentType environment) SetEnvironment;
				public new function HRESULT(ISpatialAudioObjectForHrtf *self, SpatialAudioHrtfDistanceDecay* distanceDecay) SetDistanceDecay;
				public new function HRESULT(ISpatialAudioObjectForHrtf *self, SpatialAudioHrtfDirectivityUnion* directivity) SetDirectivity;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectRenderStreamForHrtf : ISpatialAudioObjectRenderStreamBase
		{
			public const new Guid IID = .(0xe08deef9, 0x5363, 0x406e, 0x9f, 0xdc, 0x08, 0x0e, 0xe2, 0x47, 0xbb, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateSpatialAudioObjectForHrtf(AudioObjectType type, ISpatialAudioObjectForHrtf** audioObject) mut
			{
				return VT.ActivateSpatialAudioObjectForHrtf(&this, type, audioObject);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectRenderStreamBase.VTable
			{
				public new function HRESULT(ISpatialAudioObjectRenderStreamForHrtf *self, AudioObjectType type, ISpatialAudioObjectForHrtf** audioObject) ActivateSpatialAudioObjectForHrtf;
			}
		}
		[CRepr]
		public struct IMMNotificationClient : IUnknown
		{
			public const new Guid IID = .(0x7991eec9, 0x7e89, 0x4d85, 0x83, 0x90, 0x6c, 0x70, 0x3c, 0xec, 0x60, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDeviceStateChanged(PWSTR pwstrDeviceId, uint32 dwNewState) mut
			{
				return VT.OnDeviceStateChanged(&this, pwstrDeviceId, dwNewState);
			}
			public HRESULT OnDeviceAdded(PWSTR pwstrDeviceId) mut
			{
				return VT.OnDeviceAdded(&this, pwstrDeviceId);
			}
			public HRESULT OnDeviceRemoved(PWSTR pwstrDeviceId) mut
			{
				return VT.OnDeviceRemoved(&this, pwstrDeviceId);
			}
			public HRESULT OnDefaultDeviceChanged(EDataFlow flow, ERole role, PWSTR pwstrDefaultDeviceId) mut
			{
				return VT.OnDefaultDeviceChanged(&this, flow, role, pwstrDefaultDeviceId);
			}
			public HRESULT OnPropertyValueChanged(PWSTR pwstrDeviceId, PROPERTYKEY key) mut
			{
				return VT.OnPropertyValueChanged(&this, pwstrDeviceId, key);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMNotificationClient *self, PWSTR pwstrDeviceId, uint32 dwNewState) OnDeviceStateChanged;
				public new function HRESULT(IMMNotificationClient *self, PWSTR pwstrDeviceId) OnDeviceAdded;
				public new function HRESULT(IMMNotificationClient *self, PWSTR pwstrDeviceId) OnDeviceRemoved;
				public new function HRESULT(IMMNotificationClient *self, EDataFlow flow, ERole role, PWSTR pwstrDefaultDeviceId) OnDefaultDeviceChanged;
				public new function HRESULT(IMMNotificationClient *self, PWSTR pwstrDeviceId, PROPERTYKEY key) OnPropertyValueChanged;
			}
		}
		[CRepr]
		public struct IMMDevice : IUnknown
		{
			public const new Guid IID = .(0xd666063f, 0x1587, 0x4e43, 0x81, 0xf1, 0xb9, 0x48, 0xe8, 0x07, 0x36, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(Guid* iid, uint32 dwClsCtx, PROPVARIANT* pActivationParams, void** ppInterface) mut
			{
				return VT.Activate(&this, iid, dwClsCtx, pActivationParams, ppInterface);
			}
			public HRESULT OpenPropertyStore(uint32 stgmAccess, IPropertyStore** ppProperties) mut
			{
				return VT.OpenPropertyStore(&this, stgmAccess, ppProperties);
			}
			public HRESULT GetId(PWSTR* ppstrId) mut
			{
				return VT.GetId(&this, ppstrId);
			}
			public HRESULT GetState(uint32* pdwState) mut
			{
				return VT.GetState(&this, pdwState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMDevice *self, Guid* iid, uint32 dwClsCtx, PROPVARIANT* pActivationParams, void** ppInterface) Activate;
				public new function HRESULT(IMMDevice *self, uint32 stgmAccess, IPropertyStore** ppProperties) OpenPropertyStore;
				public new function HRESULT(IMMDevice *self, PWSTR* ppstrId) GetId;
				public new function HRESULT(IMMDevice *self, uint32* pdwState) GetState;
			}
		}
		[CRepr]
		public struct IMMDeviceCollection : IUnknown
		{
			public const new Guid IID = .(0x0bd7a1be, 0x7a1a, 0x44db, 0x83, 0x97, 0xcc, 0x53, 0x92, 0x38, 0x7b, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcDevices) mut
			{
				return VT.GetCount(&this, pcDevices);
			}
			public HRESULT Item(uint32 nDevice, IMMDevice** ppDevice) mut
			{
				return VT.Item(&this, nDevice, ppDevice);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMDeviceCollection *self, uint32* pcDevices) GetCount;
				public new function HRESULT(IMMDeviceCollection *self, uint32 nDevice, IMMDevice** ppDevice) Item;
			}
		}
		[CRepr]
		public struct IMMEndpoint : IUnknown
		{
			public const new Guid IID = .(0x1be09788, 0x6894, 0x4089, 0x85, 0x86, 0x9a, 0x2a, 0x6c, 0x26, 0x5a, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDataFlow(EDataFlow* pDataFlow) mut
			{
				return VT.GetDataFlow(&this, pDataFlow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMEndpoint *self, EDataFlow* pDataFlow) GetDataFlow;
			}
		}
		[CRepr]
		public struct IMMDeviceEnumerator : IUnknown
		{
			public const new Guid IID = .(0xa95664d2, 0x9614, 0x4f35, 0xa7, 0x46, 0xde, 0x8d, 0xb6, 0x36, 0x17, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumAudioEndpoints(EDataFlow dataFlow, uint32 dwStateMask, IMMDeviceCollection** ppDevices) mut
			{
				return VT.EnumAudioEndpoints(&this, dataFlow, dwStateMask, ppDevices);
			}
			public HRESULT GetDefaultAudioEndpoint(EDataFlow dataFlow, ERole role, IMMDevice** ppEndpoint) mut
			{
				return VT.GetDefaultAudioEndpoint(&this, dataFlow, role, ppEndpoint);
			}
			public HRESULT GetDevice(PWSTR pwstrId, IMMDevice** ppDevice) mut
			{
				return VT.GetDevice(&this, pwstrId, ppDevice);
			}
			public HRESULT RegisterEndpointNotificationCallback(IMMNotificationClient* pClient) mut
			{
				return VT.RegisterEndpointNotificationCallback(&this, pClient);
			}
			public HRESULT UnregisterEndpointNotificationCallback(IMMNotificationClient* pClient) mut
			{
				return VT.UnregisterEndpointNotificationCallback(&this, pClient);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMDeviceEnumerator *self, EDataFlow dataFlow, uint32 dwStateMask, IMMDeviceCollection** ppDevices) EnumAudioEndpoints;
				public new function HRESULT(IMMDeviceEnumerator *self, EDataFlow dataFlow, ERole role, IMMDevice** ppEndpoint) GetDefaultAudioEndpoint;
				public new function HRESULT(IMMDeviceEnumerator *self, PWSTR pwstrId, IMMDevice** ppDevice) GetDevice;
				public new function HRESULT(IMMDeviceEnumerator *self, IMMNotificationClient* pClient) RegisterEndpointNotificationCallback;
				public new function HRESULT(IMMDeviceEnumerator *self, IMMNotificationClient* pClient) UnregisterEndpointNotificationCallback;
			}
		}
		[CRepr]
		public struct IMMDeviceActivator : IUnknown
		{
			public const new Guid IID = .(0x3b0d0ea4, 0xd0a9, 0x4b0e, 0x93, 0x5b, 0x09, 0x51, 0x67, 0x46, 0xfa, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(Guid* iid, IMMDevice* pDevice, PROPVARIANT* pActivationParams, void** ppInterface) mut
			{
				return VT.Activate(&this, iid, pDevice, pActivationParams, ppInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMMDeviceActivator *self, Guid* iid, IMMDevice* pDevice, PROPVARIANT* pActivationParams, void** ppInterface) Activate;
			}
		}
		[CRepr]
		public struct IActivateAudioInterfaceCompletionHandler : IUnknown
		{
			public const new Guid IID = .(0x41d949ab, 0x9862, 0x444a, 0x80, 0xf6, 0xc2, 0x61, 0x33, 0x4d, 0xa5, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateCompleted(IActivateAudioInterfaceAsyncOperation* activateOperation) mut
			{
				return VT.ActivateCompleted(&this, activateOperation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActivateAudioInterfaceCompletionHandler *self, IActivateAudioInterfaceAsyncOperation* activateOperation) ActivateCompleted;
			}
		}
		[CRepr]
		public struct IActivateAudioInterfaceAsyncOperation : IUnknown
		{
			public const new Guid IID = .(0x72a22d78, 0xcde4, 0x431d, 0xb8, 0xcc, 0x84, 0x3a, 0x71, 0x19, 0x9b, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActivateResult(HRESULT* activateResult, IUnknown** activatedInterface) mut
			{
				return VT.GetActivateResult(&this, activateResult, activatedInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActivateAudioInterfaceAsyncOperation *self, HRESULT* activateResult, IUnknown** activatedInterface) GetActivateResult;
			}
		}
		[CRepr]
		public struct IAudioSystemEffectsPropertyChangeNotificationClient : IUnknown
		{
			public const new Guid IID = .(0x20049d40, 0x56d5, 0x400e, 0xa2, 0xef, 0x38, 0x55, 0x99, 0xfe, 0xed, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPropertyChanged(__MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 type, PROPERTYKEY key) mut
			{
				return VT.OnPropertyChanged(&this, type, key);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSystemEffectsPropertyChangeNotificationClient *self, __MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 type, PROPERTYKEY key) OnPropertyChanged;
			}
		}
		[CRepr]
		public struct IAudioSystemEffectsPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x302ae7f9, 0xd7e0, 0x43e4, 0x97, 0x1b, 0x1f, 0x82, 0x93, 0x61, 0x3d, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenDefaultPropertyStore(uint32 stgmAccess, IPropertyStore** propStore) mut
			{
				return VT.OpenDefaultPropertyStore(&this, stgmAccess, propStore);
			}
			public HRESULT OpenUserPropertyStore(uint32 stgmAccess, IPropertyStore** propStore) mut
			{
				return VT.OpenUserPropertyStore(&this, stgmAccess, propStore);
			}
			public HRESULT OpenVolatilePropertyStore(uint32 stgmAccess, IPropertyStore** propStore) mut
			{
				return VT.OpenVolatilePropertyStore(&this, stgmAccess, propStore);
			}
			public HRESULT ResetUserPropertyStore() mut
			{
				return VT.ResetUserPropertyStore(&this);
			}
			public HRESULT ResetVolatilePropertyStore() mut
			{
				return VT.ResetVolatilePropertyStore(&this);
			}
			public HRESULT RegisterPropertyChangeNotification(IAudioSystemEffectsPropertyChangeNotificationClient* callback) mut
			{
				return VT.RegisterPropertyChangeNotification(&this, callback);
			}
			public HRESULT UnregisterPropertyChangeNotification(IAudioSystemEffectsPropertyChangeNotificationClient* callback) mut
			{
				return VT.UnregisterPropertyChangeNotification(&this, callback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self, uint32 stgmAccess, IPropertyStore** propStore) OpenDefaultPropertyStore;
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self, uint32 stgmAccess, IPropertyStore** propStore) OpenUserPropertyStore;
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self, uint32 stgmAccess, IPropertyStore** propStore) OpenVolatilePropertyStore;
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self) ResetUserPropertyStore;
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self) ResetVolatilePropertyStore;
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self, IAudioSystemEffectsPropertyChangeNotificationClient* callback) RegisterPropertyChangeNotification;
				public new function HRESULT(IAudioSystemEffectsPropertyStore *self, IAudioSystemEffectsPropertyChangeNotificationClient* callback) UnregisterPropertyChangeNotification;
			}
		}
		[CRepr]
		public struct IPerChannelDbLevel : IUnknown
		{
			public const new Guid IID = .(0xc2f8e001, 0xf205, 0x4bc9, 0x99, 0xbc, 0xc1, 0x3b, 0x1e, 0x04, 0x8c, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChannelCount(uint32* pcChannels) mut
			{
				return VT.GetChannelCount(&this, pcChannels);
			}
			public HRESULT GetLevelRange(uint32 nChannel, float* pfMinLevelDB, float* pfMaxLevelDB, float* pfStepping) mut
			{
				return VT.GetLevelRange(&this, nChannel, pfMinLevelDB, pfMaxLevelDB, pfStepping);
			}
			public HRESULT GetLevel(uint32 nChannel, float* pfLevelDB) mut
			{
				return VT.GetLevel(&this, nChannel, pfLevelDB);
			}
			public HRESULT SetLevel(uint32 nChannel, float fLevelDB, Guid* pguidEventContext) mut
			{
				return VT.SetLevel(&this, nChannel, fLevelDB, pguidEventContext);
			}
			public HRESULT SetLevelUniform(float fLevelDB, Guid* pguidEventContext) mut
			{
				return VT.SetLevelUniform(&this, fLevelDB, pguidEventContext);
			}
			public HRESULT SetLevelAllChannels(float* aLevelsDB, uint32 cChannels, Guid* pguidEventContext) mut
			{
				return VT.SetLevelAllChannels(&this, aLevelsDB, cChannels, pguidEventContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPerChannelDbLevel *self, uint32* pcChannels) GetChannelCount;
				public new function HRESULT(IPerChannelDbLevel *self, uint32 nChannel, float* pfMinLevelDB, float* pfMaxLevelDB, float* pfStepping) GetLevelRange;
				public new function HRESULT(IPerChannelDbLevel *self, uint32 nChannel, float* pfLevelDB) GetLevel;
				public new function HRESULT(IPerChannelDbLevel *self, uint32 nChannel, float fLevelDB, Guid* pguidEventContext) SetLevel;
				public new function HRESULT(IPerChannelDbLevel *self, float fLevelDB, Guid* pguidEventContext) SetLevelUniform;
				public new function HRESULT(IPerChannelDbLevel *self, float* aLevelsDB, uint32 cChannels, Guid* pguidEventContext) SetLevelAllChannels;
			}
		}
		[CRepr]
		public struct IAudioVolumeLevel : IPerChannelDbLevel
		{
			public const new Guid IID = .(0x7fb7b48f, 0x531d, 0x44a2, 0xbc, 0xb3, 0x5a, 0xd5, 0xa1, 0x34, 0xb3, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPerChannelDbLevel.VTable
			{
			}
		}
		[CRepr]
		public struct IAudioChannelConfig : IUnknown
		{
			public const new Guid IID = .(0xbb11c46f, 0xec28, 0x493c, 0xb8, 0x8a, 0x5d, 0xb8, 0x80, 0x62, 0xce, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetChannelConfig(uint32 dwConfig, Guid* pguidEventContext) mut
			{
				return VT.SetChannelConfig(&this, dwConfig, pguidEventContext);
			}
			public HRESULT GetChannelConfig(uint32* pdwConfig) mut
			{
				return VT.GetChannelConfig(&this, pdwConfig);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioChannelConfig *self, uint32 dwConfig, Guid* pguidEventContext) SetChannelConfig;
				public new function HRESULT(IAudioChannelConfig *self, uint32* pdwConfig) GetChannelConfig;
			}
		}
		[CRepr]
		public struct IAudioLoudness : IUnknown
		{
			public const new Guid IID = .(0x7d8b1437, 0xdd53, 0x4350, 0x9c, 0x1b, 0x1e, 0xe2, 0x89, 0x0b, 0xd9, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnabled(BOOL* pbEnabled) mut
			{
				return VT.GetEnabled(&this, pbEnabled);
			}
			public HRESULT SetEnabled(BOOL bEnable, Guid* pguidEventContext) mut
			{
				return VT.SetEnabled(&this, bEnable, pguidEventContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioLoudness *self, BOOL* pbEnabled) GetEnabled;
				public new function HRESULT(IAudioLoudness *self, BOOL bEnable, Guid* pguidEventContext) SetEnabled;
			}
		}
		[CRepr]
		public struct IAudioInputSelector : IUnknown
		{
			public const new Guid IID = .(0x4f03dc02, 0x5e6e, 0x4653, 0x8f, 0x72, 0xa0, 0x30, 0xc1, 0x23, 0xd5, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelection(uint32* pnIdSelected) mut
			{
				return VT.GetSelection(&this, pnIdSelected);
			}
			public HRESULT SetSelection(uint32 nIdSelect, Guid* pguidEventContext) mut
			{
				return VT.SetSelection(&this, nIdSelect, pguidEventContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioInputSelector *self, uint32* pnIdSelected) GetSelection;
				public new function HRESULT(IAudioInputSelector *self, uint32 nIdSelect, Guid* pguidEventContext) SetSelection;
			}
		}
		[CRepr]
		public struct IAudioOutputSelector : IUnknown
		{
			public const new Guid IID = .(0xbb515f69, 0x94a7, 0x429e, 0x8b, 0x9c, 0x27, 0x1b, 0x3f, 0x11, 0xa3, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelection(uint32* pnIdSelected) mut
			{
				return VT.GetSelection(&this, pnIdSelected);
			}
			public HRESULT SetSelection(uint32 nIdSelect, Guid* pguidEventContext) mut
			{
				return VT.SetSelection(&this, nIdSelect, pguidEventContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioOutputSelector *self, uint32* pnIdSelected) GetSelection;
				public new function HRESULT(IAudioOutputSelector *self, uint32 nIdSelect, Guid* pguidEventContext) SetSelection;
			}
		}
		[CRepr]
		public struct IAudioMute : IUnknown
		{
			public const new Guid IID = .(0xdf45aeea, 0xb74a, 0x4b6b, 0xaf, 0xad, 0x23, 0x66, 0xb6, 0xaa, 0x01, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMute(BOOL bMuted, Guid* pguidEventContext) mut
			{
				return VT.SetMute(&this, bMuted, pguidEventContext);
			}
			public HRESULT GetMute(BOOL* pbMuted) mut
			{
				return VT.GetMute(&this, pbMuted);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioMute *self, BOOL bMuted, Guid* pguidEventContext) SetMute;
				public new function HRESULT(IAudioMute *self, BOOL* pbMuted) GetMute;
			}
		}
		[CRepr]
		public struct IAudioBass : IPerChannelDbLevel
		{
			public const new Guid IID = .(0xa2b1a1d9, 0x4db3, 0x425d, 0xa2, 0xb2, 0xbd, 0x33, 0x5c, 0xb3, 0xe2, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPerChannelDbLevel.VTable
			{
			}
		}
		[CRepr]
		public struct IAudioMidrange : IPerChannelDbLevel
		{
			public const new Guid IID = .(0x5e54b6d7, 0xb44b, 0x40d9, 0x9a, 0x9e, 0xe6, 0x91, 0xd9, 0xce, 0x6e, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPerChannelDbLevel.VTable
			{
			}
		}
		[CRepr]
		public struct IAudioTreble : IPerChannelDbLevel
		{
			public const new Guid IID = .(0x0a717812, 0x694e, 0x4907, 0xb7, 0x4b, 0xba, 0xfa, 0x5c, 0xfd, 0xca, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IPerChannelDbLevel.VTable
			{
			}
		}
		[CRepr]
		public struct IAudioAutoGainControl : IUnknown
		{
			public const new Guid IID = .(0x85401fd4, 0x6de4, 0x4b9d, 0x98, 0x69, 0x2d, 0x67, 0x53, 0xa8, 0x2f, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnabled(BOOL* pbEnabled) mut
			{
				return VT.GetEnabled(&this, pbEnabled);
			}
			public HRESULT SetEnabled(BOOL bEnable, Guid* pguidEventContext) mut
			{
				return VT.SetEnabled(&this, bEnable, pguidEventContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioAutoGainControl *self, BOOL* pbEnabled) GetEnabled;
				public new function HRESULT(IAudioAutoGainControl *self, BOOL bEnable, Guid* pguidEventContext) SetEnabled;
			}
		}
		[CRepr]
		public struct IAudioPeakMeter : IUnknown
		{
			public const new Guid IID = .(0xdd79923c, 0x0599, 0x45e0, 0xb8, 0xb6, 0xc8, 0xdf, 0x7d, 0xb6, 0xe7, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChannelCount(uint32* pcChannels) mut
			{
				return VT.GetChannelCount(&this, pcChannels);
			}
			public HRESULT GetLevel(uint32 nChannel, float* pfLevel) mut
			{
				return VT.GetLevel(&this, nChannel, pfLevel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioPeakMeter *self, uint32* pcChannels) GetChannelCount;
				public new function HRESULT(IAudioPeakMeter *self, uint32 nChannel, float* pfLevel) GetLevel;
			}
		}
		[CRepr]
		public struct IDeviceSpecificProperty : IUnknown
		{
			public const new Guid IID = .(0x3b22bcbf, 0x2586, 0x4af0, 0x85, 0x83, 0x20, 0x5d, 0x39, 0x1b, 0x80, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(uint16* pVType) mut
			{
				return VT.ComGetType(&this, pVType);
			}
			public HRESULT GetValue(void* pvValue, uint32* pcbValue) mut
			{
				return VT.GetValue(&this, pvValue, pcbValue);
			}
			public HRESULT SetValue(void* pvValue, uint32 cbValue, Guid* pguidEventContext) mut
			{
				return VT.SetValue(&this, pvValue, cbValue, pguidEventContext);
			}
			public HRESULT Get4BRange(int32* plMin, int32* plMax, int32* plStepping) mut
			{
				return VT.Get4BRange(&this, plMin, plMax, plStepping);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDeviceSpecificProperty *self, uint16* pVType) ComGetType;
				public new function HRESULT(IDeviceSpecificProperty *self, void* pvValue, uint32* pcbValue) GetValue;
				public new function HRESULT(IDeviceSpecificProperty *self, void* pvValue, uint32 cbValue, Guid* pguidEventContext) SetValue;
				public new function HRESULT(IDeviceSpecificProperty *self, int32* plMin, int32* plMax, int32* plStepping) Get4BRange;
			}
		}
		[CRepr]
		public struct IPartsList : IUnknown
		{
			public const new Guid IID = .(0x6daa848c, 0x5eb0, 0x45cc, 0xae, 0xa5, 0x99, 0x8a, 0x2c, 0xda, 0x1f, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetPart(uint32 nIndex, IPart** ppPart) mut
			{
				return VT.GetPart(&this, nIndex, ppPart);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPartsList *self, uint32* pCount) GetCount;
				public new function HRESULT(IPartsList *self, uint32 nIndex, IPart** ppPart) GetPart;
			}
		}
		[CRepr]
		public struct IPart : IUnknown
		{
			public const new Guid IID = .(0xae2de0e4, 0x5bca, 0x4f2d, 0xaa, 0x46, 0x5d, 0x13, 0xf8, 0xfd, 0xb3, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* ppwstrName) mut
			{
				return VT.GetName(&this, ppwstrName);
			}
			public HRESULT GetLocalId(uint32* pnId) mut
			{
				return VT.GetLocalId(&this, pnId);
			}
			public HRESULT GetGlobalId(PWSTR* ppwstrGlobalId) mut
			{
				return VT.GetGlobalId(&this, ppwstrGlobalId);
			}
			public HRESULT GetPartType(PartType* pPartType) mut
			{
				return VT.GetPartType(&this, pPartType);
			}
			public HRESULT GetSubType(Guid* pSubType) mut
			{
				return VT.GetSubType(&this, pSubType);
			}
			public HRESULT GetControlInterfaceCount(uint32* pCount) mut
			{
				return VT.GetControlInterfaceCount(&this, pCount);
			}
			public HRESULT GetControlInterface(uint32 nIndex, IControlInterface** ppInterfaceDesc) mut
			{
				return VT.GetControlInterface(&this, nIndex, ppInterfaceDesc);
			}
			public HRESULT EnumPartsIncoming(IPartsList** ppParts) mut
			{
				return VT.EnumPartsIncoming(&this, ppParts);
			}
			public HRESULT EnumPartsOutgoing(IPartsList** ppParts) mut
			{
				return VT.EnumPartsOutgoing(&this, ppParts);
			}
			public HRESULT GetTopologyObject(IDeviceTopology** ppTopology) mut
			{
				return VT.GetTopologyObject(&this, ppTopology);
			}
			public HRESULT Activate(uint32 dwClsContext, Guid* refiid, void** ppvObject) mut
			{
				return VT.Activate(&this, dwClsContext, refiid, ppvObject);
			}
			public HRESULT RegisterControlChangeCallback(Guid* riid, IControlChangeNotify* pNotify) mut
			{
				return VT.RegisterControlChangeCallback(&this, riid, pNotify);
			}
			public HRESULT UnregisterControlChangeCallback(IControlChangeNotify* pNotify) mut
			{
				return VT.UnregisterControlChangeCallback(&this, pNotify);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPart *self, PWSTR* ppwstrName) GetName;
				public new function HRESULT(IPart *self, uint32* pnId) GetLocalId;
				public new function HRESULT(IPart *self, PWSTR* ppwstrGlobalId) GetGlobalId;
				public new function HRESULT(IPart *self, PartType* pPartType) GetPartType;
				public new function HRESULT(IPart *self, Guid* pSubType) GetSubType;
				public new function HRESULT(IPart *self, uint32* pCount) GetControlInterfaceCount;
				public new function HRESULT(IPart *self, uint32 nIndex, IControlInterface** ppInterfaceDesc) GetControlInterface;
				public new function HRESULT(IPart *self, IPartsList** ppParts) EnumPartsIncoming;
				public new function HRESULT(IPart *self, IPartsList** ppParts) EnumPartsOutgoing;
				public new function HRESULT(IPart *self, IDeviceTopology** ppTopology) GetTopologyObject;
				public new function HRESULT(IPart *self, uint32 dwClsContext, Guid* refiid, void** ppvObject) Activate;
				public new function HRESULT(IPart *self, Guid* riid, IControlChangeNotify* pNotify) RegisterControlChangeCallback;
				public new function HRESULT(IPart *self, IControlChangeNotify* pNotify) UnregisterControlChangeCallback;
			}
		}
		[CRepr]
		public struct IConnector : IUnknown
		{
			public const new Guid IID = .(0x9c2c4058, 0x23f5, 0x41de, 0x87, 0x7a, 0xdf, 0x3a, 0xf2, 0x36, 0xa0, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(ConnectorType* pType) mut
			{
				return VT.ComGetType(&this, pType);
			}
			public HRESULT GetDataFlow(DataFlow* pFlow) mut
			{
				return VT.GetDataFlow(&this, pFlow);
			}
			public HRESULT ConnectTo(IConnector* pConnectTo) mut
			{
				return VT.ConnectTo(&this, pConnectTo);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT IsConnected(BOOL* pbConnected) mut
			{
				return VT.IsConnected(&this, pbConnected);
			}
			public HRESULT GetConnectedTo(IConnector** ppConTo) mut
			{
				return VT.GetConnectedTo(&this, ppConTo);
			}
			public HRESULT GetConnectorIdConnectedTo(PWSTR* ppwstrConnectorId) mut
			{
				return VT.GetConnectorIdConnectedTo(&this, ppwstrConnectorId);
			}
			public HRESULT GetDeviceIdConnectedTo(PWSTR* ppwstrDeviceId) mut
			{
				return VT.GetDeviceIdConnectedTo(&this, ppwstrDeviceId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConnector *self, ConnectorType* pType) ComGetType;
				public new function HRESULT(IConnector *self, DataFlow* pFlow) GetDataFlow;
				public new function HRESULT(IConnector *self, IConnector* pConnectTo) ConnectTo;
				public new function HRESULT(IConnector *self) Disconnect;
				public new function HRESULT(IConnector *self, BOOL* pbConnected) IsConnected;
				public new function HRESULT(IConnector *self, IConnector** ppConTo) GetConnectedTo;
				public new function HRESULT(IConnector *self, PWSTR* ppwstrConnectorId) GetConnectorIdConnectedTo;
				public new function HRESULT(IConnector *self, PWSTR* ppwstrDeviceId) GetDeviceIdConnectedTo;
			}
		}
		[CRepr]
		public struct ISubunit : IUnknown
		{
			public const new Guid IID = .(0x82149a85, 0xdba6, 0x4487, 0x86, 0xbb, 0xea, 0x8f, 0x7f, 0xef, 0xcc, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IControlInterface : IUnknown
		{
			public const new Guid IID = .(0x45d37c3f, 0x5140, 0x444a, 0xae, 0x24, 0x40, 0x07, 0x89, 0xf3, 0xcb, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* ppwstrName) mut
			{
				return VT.GetName(&this, ppwstrName);
			}
			public HRESULT GetIID(Guid* pIID) mut
			{
				return VT.GetIID(&this, pIID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IControlInterface *self, PWSTR* ppwstrName) GetName;
				public new function HRESULT(IControlInterface *self, Guid* pIID) GetIID;
			}
		}
		[CRepr]
		public struct IControlChangeNotify : IUnknown
		{
			public const new Guid IID = .(0xa09513ed, 0xc709, 0x4d21, 0xbd, 0x7b, 0x5f, 0x34, 0xc4, 0x7f, 0x39, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnNotify(uint32 dwSenderProcessId, Guid* pguidEventContext) mut
			{
				return VT.OnNotify(&this, dwSenderProcessId, pguidEventContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IControlChangeNotify *self, uint32 dwSenderProcessId, Guid* pguidEventContext) OnNotify;
			}
		}
		[CRepr]
		public struct IDeviceTopology : IUnknown
		{
			public const new Guid IID = .(0x2a07407e, 0x6497, 0x4a18, 0x97, 0x87, 0x32, 0xf7, 0x9b, 0xd0, 0xd9, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectorCount(uint32* pCount) mut
			{
				return VT.GetConnectorCount(&this, pCount);
			}
			public HRESULT GetConnector(uint32 nIndex, IConnector** ppConnector) mut
			{
				return VT.GetConnector(&this, nIndex, ppConnector);
			}
			public HRESULT GetSubunitCount(uint32* pCount) mut
			{
				return VT.GetSubunitCount(&this, pCount);
			}
			public HRESULT GetSubunit(uint32 nIndex, ISubunit** ppSubunit) mut
			{
				return VT.GetSubunit(&this, nIndex, ppSubunit);
			}
			public HRESULT GetPartById(uint32 nId, IPart** ppPart) mut
			{
				return VT.GetPartById(&this, nId, ppPart);
			}
			public HRESULT GetDeviceId(PWSTR* ppwstrDeviceId) mut
			{
				return VT.GetDeviceId(&this, ppwstrDeviceId);
			}
			public HRESULT GetSignalPath(IPart* pIPartFrom, IPart* pIPartTo, BOOL bRejectMixedPaths, IPartsList** ppParts) mut
			{
				return VT.GetSignalPath(&this, pIPartFrom, pIPartTo, bRejectMixedPaths, ppParts);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDeviceTopology *self, uint32* pCount) GetConnectorCount;
				public new function HRESULT(IDeviceTopology *self, uint32 nIndex, IConnector** ppConnector) GetConnector;
				public new function HRESULT(IDeviceTopology *self, uint32* pCount) GetSubunitCount;
				public new function HRESULT(IDeviceTopology *self, uint32 nIndex, ISubunit** ppSubunit) GetSubunit;
				public new function HRESULT(IDeviceTopology *self, uint32 nId, IPart** ppPart) GetPartById;
				public new function HRESULT(IDeviceTopology *self, PWSTR* ppwstrDeviceId) GetDeviceId;
				public new function HRESULT(IDeviceTopology *self, IPart* pIPartFrom, IPart* pIPartTo, BOOL bRejectMixedPaths, IPartsList** ppParts) GetSignalPath;
			}
		}
		[CRepr]
		public struct IAudioSessionEvents : IUnknown
		{
			public const new Guid IID = .(0x24918acc, 0x64b3, 0x37c1, 0x8c, 0xa9, 0x74, 0xa6, 0x6e, 0x99, 0x57, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDisplayNameChanged(PWSTR NewDisplayName, Guid* EventContext) mut
			{
				return VT.OnDisplayNameChanged(&this, NewDisplayName, EventContext);
			}
			public HRESULT OnIconPathChanged(PWSTR NewIconPath, Guid* EventContext) mut
			{
				return VT.OnIconPathChanged(&this, NewIconPath, EventContext);
			}
			public HRESULT OnSimpleVolumeChanged(float NewVolume, BOOL NewMute, Guid* EventContext) mut
			{
				return VT.OnSimpleVolumeChanged(&this, NewVolume, NewMute, EventContext);
			}
			public HRESULT OnChannelVolumeChanged(uint32 ChannelCount, float* NewChannelVolumeArray, uint32 ChangedChannel, Guid* EventContext) mut
			{
				return VT.OnChannelVolumeChanged(&this, ChannelCount, NewChannelVolumeArray, ChangedChannel, EventContext);
			}
			public HRESULT OnGroupingParamChanged(Guid* NewGroupingParam, Guid* EventContext) mut
			{
				return VT.OnGroupingParamChanged(&this, NewGroupingParam, EventContext);
			}
			public HRESULT OnStateChanged(AudioSessionState NewState) mut
			{
				return VT.OnStateChanged(&this, NewState);
			}
			public HRESULT OnSessionDisconnected(AudioSessionDisconnectReason DisconnectReason) mut
			{
				return VT.OnSessionDisconnected(&this, DisconnectReason);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSessionEvents *self, PWSTR NewDisplayName, Guid* EventContext) OnDisplayNameChanged;
				public new function HRESULT(IAudioSessionEvents *self, PWSTR NewIconPath, Guid* EventContext) OnIconPathChanged;
				public new function HRESULT(IAudioSessionEvents *self, float NewVolume, BOOL NewMute, Guid* EventContext) OnSimpleVolumeChanged;
				public new function HRESULT(IAudioSessionEvents *self, uint32 ChannelCount, float* NewChannelVolumeArray, uint32 ChangedChannel, Guid* EventContext) OnChannelVolumeChanged;
				public new function HRESULT(IAudioSessionEvents *self, Guid* NewGroupingParam, Guid* EventContext) OnGroupingParamChanged;
				public new function HRESULT(IAudioSessionEvents *self, AudioSessionState NewState) OnStateChanged;
				public new function HRESULT(IAudioSessionEvents *self, AudioSessionDisconnectReason DisconnectReason) OnSessionDisconnected;
			}
		}
		[CRepr]
		public struct IAudioSessionControl : IUnknown
		{
			public const new Guid IID = .(0xf4b1a599, 0x7266, 0x4319, 0xa8, 0xca, 0xe7, 0x0a, 0xcb, 0x11, 0xe8, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetState(AudioSessionState* pRetVal) mut
			{
				return VT.GetState(&this, pRetVal);
			}
			public HRESULT GetDisplayName(PWSTR* pRetVal) mut
			{
				return VT.GetDisplayName(&this, pRetVal);
			}
			public HRESULT SetDisplayName(PWSTR Value, Guid* EventContext) mut
			{
				return VT.SetDisplayName(&this, Value, EventContext);
			}
			public HRESULT GetIconPath(PWSTR* pRetVal) mut
			{
				return VT.GetIconPath(&this, pRetVal);
			}
			public HRESULT SetIconPath(PWSTR Value, Guid* EventContext) mut
			{
				return VT.SetIconPath(&this, Value, EventContext);
			}
			public HRESULT GetGroupingParam(Guid* pRetVal) mut
			{
				return VT.GetGroupingParam(&this, pRetVal);
			}
			public HRESULT SetGroupingParam(Guid* Override, Guid* EventContext) mut
			{
				return VT.SetGroupingParam(&this, Override, EventContext);
			}
			public HRESULT RegisterAudioSessionNotification(IAudioSessionEvents* NewNotifications) mut
			{
				return VT.RegisterAudioSessionNotification(&this, NewNotifications);
			}
			public HRESULT UnregisterAudioSessionNotification(IAudioSessionEvents* NewNotifications) mut
			{
				return VT.UnregisterAudioSessionNotification(&this, NewNotifications);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSessionControl *self, AudioSessionState* pRetVal) GetState;
				public new function HRESULT(IAudioSessionControl *self, PWSTR* pRetVal) GetDisplayName;
				public new function HRESULT(IAudioSessionControl *self, PWSTR Value, Guid* EventContext) SetDisplayName;
				public new function HRESULT(IAudioSessionControl *self, PWSTR* pRetVal) GetIconPath;
				public new function HRESULT(IAudioSessionControl *self, PWSTR Value, Guid* EventContext) SetIconPath;
				public new function HRESULT(IAudioSessionControl *self, Guid* pRetVal) GetGroupingParam;
				public new function HRESULT(IAudioSessionControl *self, Guid* Override, Guid* EventContext) SetGroupingParam;
				public new function HRESULT(IAudioSessionControl *self, IAudioSessionEvents* NewNotifications) RegisterAudioSessionNotification;
				public new function HRESULT(IAudioSessionControl *self, IAudioSessionEvents* NewNotifications) UnregisterAudioSessionNotification;
			}
		}
		[CRepr]
		public struct IAudioSessionControl2 : IAudioSessionControl
		{
			public const new Guid IID = .(0xbfb7ff88, 0x7239, 0x4fc9, 0x8f, 0xa2, 0x07, 0xc9, 0x50, 0xbe, 0x9c, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSessionIdentifier(PWSTR* pRetVal) mut
			{
				return VT.GetSessionIdentifier(&this, pRetVal);
			}
			public HRESULT GetSessionInstanceIdentifier(PWSTR* pRetVal) mut
			{
				return VT.GetSessionInstanceIdentifier(&this, pRetVal);
			}
			public HRESULT GetProcessId(uint32* pRetVal) mut
			{
				return VT.GetProcessId(&this, pRetVal);
			}
			public HRESULT IsSystemSoundsSession() mut
			{
				return VT.IsSystemSoundsSession(&this);
			}
			public HRESULT SetDuckingPreference(BOOL optOut) mut
			{
				return VT.SetDuckingPreference(&this, optOut);
			}
			[CRepr]
			public struct VTable : IAudioSessionControl.VTable
			{
				public new function HRESULT(IAudioSessionControl2 *self, PWSTR* pRetVal) GetSessionIdentifier;
				public new function HRESULT(IAudioSessionControl2 *self, PWSTR* pRetVal) GetSessionInstanceIdentifier;
				public new function HRESULT(IAudioSessionControl2 *self, uint32* pRetVal) GetProcessId;
				public new function HRESULT(IAudioSessionControl2 *self) IsSystemSoundsSession;
				public new function HRESULT(IAudioSessionControl2 *self, BOOL optOut) SetDuckingPreference;
			}
		}
		[CRepr]
		public struct IAudioSessionManager : IUnknown
		{
			public const new Guid IID = .(0xbfa971f1, 0x4d5e, 0x40bb, 0x93, 0x5e, 0x96, 0x70, 0x39, 0xbf, 0xbe, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAudioSessionControl(Guid* AudioSessionGuid, uint32 StreamFlags, IAudioSessionControl** SessionControl) mut
			{
				return VT.GetAudioSessionControl(&this, AudioSessionGuid, StreamFlags, SessionControl);
			}
			public HRESULT GetSimpleAudioVolume(Guid* AudioSessionGuid, uint32 StreamFlags, ISimpleAudioVolume** AudioVolume) mut
			{
				return VT.GetSimpleAudioVolume(&this, AudioSessionGuid, StreamFlags, AudioVolume);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSessionManager *self, Guid* AudioSessionGuid, uint32 StreamFlags, IAudioSessionControl** SessionControl) GetAudioSessionControl;
				public new function HRESULT(IAudioSessionManager *self, Guid* AudioSessionGuid, uint32 StreamFlags, ISimpleAudioVolume** AudioVolume) GetSimpleAudioVolume;
			}
		}
		[CRepr]
		public struct IAudioVolumeDuckNotification : IUnknown
		{
			public const new Guid IID = .(0xc3b284d4, 0x6d39, 0x4359, 0xb3, 0xcf, 0xb5, 0x6d, 0xdb, 0x3b, 0xb3, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnVolumeDuckNotification(PWSTR sessionID, uint32 countCommunicationSessions) mut
			{
				return VT.OnVolumeDuckNotification(&this, sessionID, countCommunicationSessions);
			}
			public HRESULT OnVolumeUnduckNotification(PWSTR sessionID) mut
			{
				return VT.OnVolumeUnduckNotification(&this, sessionID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioVolumeDuckNotification *self, PWSTR sessionID, uint32 countCommunicationSessions) OnVolumeDuckNotification;
				public new function HRESULT(IAudioVolumeDuckNotification *self, PWSTR sessionID) OnVolumeUnduckNotification;
			}
		}
		[CRepr]
		public struct IAudioSessionNotification : IUnknown
		{
			public const new Guid IID = .(0x641dd20b, 0x4d41, 0x49cc, 0xab, 0xa3, 0x17, 0x4b, 0x94, 0x77, 0xbb, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSessionCreated(IAudioSessionControl* NewSession) mut
			{
				return VT.OnSessionCreated(&this, NewSession);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSessionNotification *self, IAudioSessionControl* NewSession) OnSessionCreated;
			}
		}
		[CRepr]
		public struct IAudioSessionEnumerator : IUnknown
		{
			public const new Guid IID = .(0xe2f5bb11, 0x0570, 0x40ca, 0xac, 0xdd, 0x3a, 0xa0, 0x12, 0x77, 0xde, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(int32* SessionCount) mut
			{
				return VT.GetCount(&this, SessionCount);
			}
			public HRESULT GetSession(int32 SessionCount, IAudioSessionControl** Session) mut
			{
				return VT.GetSession(&this, SessionCount, Session);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioSessionEnumerator *self, int32* SessionCount) GetCount;
				public new function HRESULT(IAudioSessionEnumerator *self, int32 SessionCount, IAudioSessionControl** Session) GetSession;
			}
		}
		[CRepr]
		public struct IAudioSessionManager2 : IAudioSessionManager
		{
			public const new Guid IID = .(0x77aa99a0, 0x1bd6, 0x484f, 0x8b, 0xc7, 0x2c, 0x65, 0x4c, 0x9a, 0x9b, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSessionEnumerator(IAudioSessionEnumerator** SessionEnum) mut
			{
				return VT.GetSessionEnumerator(&this, SessionEnum);
			}
			public HRESULT RegisterSessionNotification(IAudioSessionNotification* SessionNotification) mut
			{
				return VT.RegisterSessionNotification(&this, SessionNotification);
			}
			public HRESULT UnregisterSessionNotification(IAudioSessionNotification* SessionNotification) mut
			{
				return VT.UnregisterSessionNotification(&this, SessionNotification);
			}
			public HRESULT RegisterDuckNotification(PWSTR sessionID, IAudioVolumeDuckNotification* duckNotification) mut
			{
				return VT.RegisterDuckNotification(&this, sessionID, duckNotification);
			}
			public HRESULT UnregisterDuckNotification(IAudioVolumeDuckNotification* duckNotification) mut
			{
				return VT.UnregisterDuckNotification(&this, duckNotification);
			}
			[CRepr]
			public struct VTable : IAudioSessionManager.VTable
			{
				public new function HRESULT(IAudioSessionManager2 *self, IAudioSessionEnumerator** SessionEnum) GetSessionEnumerator;
				public new function HRESULT(IAudioSessionManager2 *self, IAudioSessionNotification* SessionNotification) RegisterSessionNotification;
				public new function HRESULT(IAudioSessionManager2 *self, IAudioSessionNotification* SessionNotification) UnregisterSessionNotification;
				public new function HRESULT(IAudioSessionManager2 *self, PWSTR sessionID, IAudioVolumeDuckNotification* duckNotification) RegisterDuckNotification;
				public new function HRESULT(IAudioSessionManager2 *self, IAudioVolumeDuckNotification* duckNotification) UnregisterDuckNotification;
			}
		}
		[CRepr]
		public struct ISpatialAudioMetadataItems : IUnknown
		{
			public const new Guid IID = .(0xbcd7c78f, 0x3098, 0x4f22, 0xb5, 0x47, 0xa2, 0xf2, 0x5a, 0x38, 0x12, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFrameCount(uint16* frameCount) mut
			{
				return VT.GetFrameCount(&this, frameCount);
			}
			public HRESULT GetItemCount(uint16* itemCount) mut
			{
				return VT.GetItemCount(&this, itemCount);
			}
			public HRESULT GetMaxItemCount(uint16* maxItemCount) mut
			{
				return VT.GetMaxItemCount(&this, maxItemCount);
			}
			public HRESULT GetMaxValueBufferLength(uint32* maxValueBufferLength) mut
			{
				return VT.GetMaxValueBufferLength(&this, maxValueBufferLength);
			}
			public HRESULT GetInfo(SpatialAudioMetadataItemsInfo* info) mut
			{
				return VT.GetInfo(&this, info);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioMetadataItems *self, uint16* frameCount) GetFrameCount;
				public new function HRESULT(ISpatialAudioMetadataItems *self, uint16* itemCount) GetItemCount;
				public new function HRESULT(ISpatialAudioMetadataItems *self, uint16* maxItemCount) GetMaxItemCount;
				public new function HRESULT(ISpatialAudioMetadataItems *self, uint32* maxValueBufferLength) GetMaxValueBufferLength;
				public new function HRESULT(ISpatialAudioMetadataItems *self, SpatialAudioMetadataItemsInfo* info) GetInfo;
			}
		}
		[CRepr]
		public struct ISpatialAudioMetadataWriter : IUnknown
		{
			public const new Guid IID = .(0x1b17ca01, 0x2955, 0x444d, 0xa4, 0x30, 0x53, 0x7d, 0xc5, 0x89, 0xa8, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(ISpatialAudioMetadataItems* metadataItems) mut
			{
				return VT.Open(&this, metadataItems);
			}
			public HRESULT WriteNextItem(uint16 frameOffset) mut
			{
				return VT.WriteNextItem(&this, frameOffset);
			}
			public HRESULT WriteNextItemCommand(uint8 commandID, void* valueBuffer, uint32 valueBufferLength) mut
			{
				return VT.WriteNextItemCommand(&this, commandID, valueBuffer, valueBufferLength);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioMetadataWriter *self, ISpatialAudioMetadataItems* metadataItems) Open;
				public new function HRESULT(ISpatialAudioMetadataWriter *self, uint16 frameOffset) WriteNextItem;
				public new function HRESULT(ISpatialAudioMetadataWriter *self, uint8 commandID, void* valueBuffer, uint32 valueBufferLength) WriteNextItemCommand;
				public new function HRESULT(ISpatialAudioMetadataWriter *self) Close;
			}
		}
		[CRepr]
		public struct ISpatialAudioMetadataReader : IUnknown
		{
			public const new Guid IID = .(0xb78e86a2, 0x31d9, 0x4c32, 0x94, 0xd2, 0x7d, 0xf4, 0x0f, 0xc7, 0xeb, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(ISpatialAudioMetadataItems* metadataItems) mut
			{
				return VT.Open(&this, metadataItems);
			}
			public HRESULT ReadNextItem(uint8* commandCount, uint16* frameOffset) mut
			{
				return VT.ReadNextItem(&this, commandCount, frameOffset);
			}
			public HRESULT ReadNextItemCommand(uint8* commandID, void* valueBuffer, uint32 maxValueBufferLength, uint32* valueBufferLength) mut
			{
				return VT.ReadNextItemCommand(&this, commandID, valueBuffer, maxValueBufferLength, valueBufferLength);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioMetadataReader *self, ISpatialAudioMetadataItems* metadataItems) Open;
				public new function HRESULT(ISpatialAudioMetadataReader *self, uint8* commandCount, uint16* frameOffset) ReadNextItem;
				public new function HRESULT(ISpatialAudioMetadataReader *self, uint8* commandID, void* valueBuffer, uint32 maxValueBufferLength, uint32* valueBufferLength) ReadNextItemCommand;
				public new function HRESULT(ISpatialAudioMetadataReader *self) Close;
			}
		}
		[CRepr]
		public struct ISpatialAudioMetadataCopier : IUnknown
		{
			public const new Guid IID = .(0xd224b233, 0xe251, 0x4fd0, 0x9c, 0xa2, 0xd5, 0xec, 0xf9, 0xa6, 0x84, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(ISpatialAudioMetadataItems* metadataItems) mut
			{
				return VT.Open(&this, metadataItems);
			}
			public HRESULT CopyMetadataForFrames(uint16 copyFrameCount, SpatialAudioMetadataCopyMode copyMode, ISpatialAudioMetadataItems* dstMetadataItems, uint16* itemsCopied) mut
			{
				return VT.CopyMetadataForFrames(&this, copyFrameCount, copyMode, dstMetadataItems, itemsCopied);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioMetadataCopier *self, ISpatialAudioMetadataItems* metadataItems) Open;
				public new function HRESULT(ISpatialAudioMetadataCopier *self, uint16 copyFrameCount, SpatialAudioMetadataCopyMode copyMode, ISpatialAudioMetadataItems* dstMetadataItems, uint16* itemsCopied) CopyMetadataForFrames;
				public new function HRESULT(ISpatialAudioMetadataCopier *self) Close;
			}
		}
		[CRepr]
		public struct ISpatialAudioMetadataItemsBuffer : IUnknown
		{
			public const new Guid IID = .(0x42640a16, 0xe1bd, 0x42d9, 0x9f, 0xf6, 0x03, 0x1a, 0xb7, 0x1a, 0x2d, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AttachToBuffer(uint8* buffer, uint32 bufferLength) mut
			{
				return VT.AttachToBuffer(&this, buffer, bufferLength);
			}
			public HRESULT AttachToPopulatedBuffer(uint8* buffer, uint32 bufferLength) mut
			{
				return VT.AttachToPopulatedBuffer(&this, buffer, bufferLength);
			}
			public HRESULT DetachBuffer() mut
			{
				return VT.DetachBuffer(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioMetadataItemsBuffer *self, uint8* buffer, uint32 bufferLength) AttachToBuffer;
				public new function HRESULT(ISpatialAudioMetadataItemsBuffer *self, uint8* buffer, uint32 bufferLength) AttachToPopulatedBuffer;
				public new function HRESULT(ISpatialAudioMetadataItemsBuffer *self) DetachBuffer;
			}
		}
		[CRepr]
		public struct ISpatialAudioMetadataClient : IUnknown
		{
			public const new Guid IID = .(0x777d4a3b, 0xf6ff, 0x4a26, 0x85, 0xdc, 0x68, 0xd7, 0xcd, 0xed, 0xa1, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateSpatialAudioMetadataItems(uint16 maxItemCount, uint16 frameCount, ISpatialAudioMetadataItemsBuffer** metadataItemsBuffer, ISpatialAudioMetadataItems** metadataItems) mut
			{
				return VT.ActivateSpatialAudioMetadataItems(&this, maxItemCount, frameCount, metadataItemsBuffer, metadataItems);
			}
			public HRESULT GetSpatialAudioMetadataItemsBufferLength(uint16 maxItemCount, uint32* bufferLength) mut
			{
				return VT.GetSpatialAudioMetadataItemsBufferLength(&this, maxItemCount, bufferLength);
			}
			public HRESULT ActivateSpatialAudioMetadataWriter(SpatialAudioMetadataWriterOverflowMode overflowMode, ISpatialAudioMetadataWriter** metadataWriter) mut
			{
				return VT.ActivateSpatialAudioMetadataWriter(&this, overflowMode, metadataWriter);
			}
			public HRESULT ActivateSpatialAudioMetadataCopier(ISpatialAudioMetadataCopier** metadataCopier) mut
			{
				return VT.ActivateSpatialAudioMetadataCopier(&this, metadataCopier);
			}
			public HRESULT ActivateSpatialAudioMetadataReader(ISpatialAudioMetadataReader** metadataReader) mut
			{
				return VT.ActivateSpatialAudioMetadataReader(&this, metadataReader);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpatialAudioMetadataClient *self, uint16 maxItemCount, uint16 frameCount, ISpatialAudioMetadataItemsBuffer** metadataItemsBuffer, ISpatialAudioMetadataItems** metadataItems) ActivateSpatialAudioMetadataItems;
				public new function HRESULT(ISpatialAudioMetadataClient *self, uint16 maxItemCount, uint32* bufferLength) GetSpatialAudioMetadataItemsBufferLength;
				public new function HRESULT(ISpatialAudioMetadataClient *self, SpatialAudioMetadataWriterOverflowMode overflowMode, ISpatialAudioMetadataWriter** metadataWriter) ActivateSpatialAudioMetadataWriter;
				public new function HRESULT(ISpatialAudioMetadataClient *self, ISpatialAudioMetadataCopier** metadataCopier) ActivateSpatialAudioMetadataCopier;
				public new function HRESULT(ISpatialAudioMetadataClient *self, ISpatialAudioMetadataReader** metadataReader) ActivateSpatialAudioMetadataReader;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectForMetadataCommands : ISpatialAudioObjectBase
		{
			public const new Guid IID = .(0x0df2c94b, 0xf5f9, 0x472d, 0xaf, 0x6b, 0xc4, 0x6e, 0x0a, 0xc9, 0xcd, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteNextMetadataCommand(uint8 commandID, void* valueBuffer, uint32 valueBufferLength) mut
			{
				return VT.WriteNextMetadataCommand(&this, commandID, valueBuffer, valueBufferLength);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectBase.VTable
			{
				public new function HRESULT(ISpatialAudioObjectForMetadataCommands *self, uint8 commandID, void* valueBuffer, uint32 valueBufferLength) WriteNextMetadataCommand;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectForMetadataItems : ISpatialAudioObjectBase
		{
			public const new Guid IID = .(0xddea49ff, 0x3bc0, 0x4377, 0x8a, 0xad, 0x9f, 0xbc, 0xfd, 0x80, 0x85, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSpatialAudioMetadataItems(ISpatialAudioMetadataItems** metadataItems) mut
			{
				return VT.GetSpatialAudioMetadataItems(&this, metadataItems);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectBase.VTable
			{
				public new function HRESULT(ISpatialAudioObjectForMetadataItems *self, ISpatialAudioMetadataItems** metadataItems) GetSpatialAudioMetadataItems;
			}
		}
		[CRepr]
		public struct ISpatialAudioObjectRenderStreamForMetadata : ISpatialAudioObjectRenderStreamBase
		{
			public const new Guid IID = .(0xbbc9c907, 0x48d5, 0x4a2e, 0xa0, 0xc7, 0xf7, 0xf0, 0xd6, 0x7c, 0x1f, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateSpatialAudioObjectForMetadataCommands(AudioObjectType type, ISpatialAudioObjectForMetadataCommands** audioObject) mut
			{
				return VT.ActivateSpatialAudioObjectForMetadataCommands(&this, type, audioObject);
			}
			public HRESULT ActivateSpatialAudioObjectForMetadataItems(AudioObjectType type, ISpatialAudioObjectForMetadataItems** audioObject) mut
			{
				return VT.ActivateSpatialAudioObjectForMetadataItems(&this, type, audioObject);
			}
			[CRepr]
			public struct VTable : ISpatialAudioObjectRenderStreamBase.VTable
			{
				public new function HRESULT(ISpatialAudioObjectRenderStreamForMetadata *self, AudioObjectType type, ISpatialAudioObjectForMetadataCommands** audioObject) ActivateSpatialAudioObjectForMetadataCommands;
				public new function HRESULT(ISpatialAudioObjectRenderStreamForMetadata *self, AudioObjectType type, ISpatialAudioObjectForMetadataItems** audioObject) ActivateSpatialAudioObjectForMetadataItems;
			}
		}
		[CRepr]
		public struct IAudioStateMonitor : IUnknown
		{
			public const new Guid IID = .(0x63bd8738, 0xe30d, 0x4c77, 0xbf, 0x5c, 0x83, 0x4e, 0x87, 0xc6, 0x57, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterCallback(PAudioStateMonitorCallback callback, void* context, int64* registration) mut
			{
				return VT.RegisterCallback(&this, callback, context, registration);
			}
			public void UnregisterCallback(int64 registration) mut
			{
				VT.UnregisterCallback(&this, registration);
			}
			public AudioStateMonitorSoundLevel GetSoundLevel() mut
			{
				return VT.GetSoundLevel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioStateMonitor *self, PAudioStateMonitorCallback callback, void* context, int64* registration) RegisterCallback;
				public new function void(IAudioStateMonitor *self, int64 registration) UnregisterCallback;
				public new function AudioStateMonitorSoundLevel(IAudioStateMonitor *self) GetSoundLevel;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterMessageFilter(IMessageFilter* lpMessageFilter, IMessageFilter** lplpMessageFilter);
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
		public static extern HRESULT ActivateAudioInterfaceAsync(PWSTR deviceInterfacePath, Guid* riid, PROPVARIANT* activationParams, IActivateAudioInterfaceCompletionHandler* completionHandler, IActivateAudioInterfaceAsyncOperation** activationOperation);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitor(IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitorForCategory(AUDIO_STREAM_CATEGORY category, IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitorForCategoryAndDeviceRole(AUDIO_STREAM_CATEGORY category, ERole role, IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRenderAudioStateMonitorForCategoryAndDeviceId(AUDIO_STREAM_CATEGORY category, PWSTR deviceId, IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitor(IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitorForCategory(AUDIO_STREAM_CATEGORY category, IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitorForCategoryAndDeviceRole(AUDIO_STREAM_CATEGORY category, ERole role, IAudioStateMonitor** audioStateMonitor);
		[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateCaptureAudioStateMonitorForCategoryAndDeviceId(AUDIO_STREAM_CATEGORY category, PWSTR deviceId, IAudioStateMonitor** audioStateMonitor);
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
