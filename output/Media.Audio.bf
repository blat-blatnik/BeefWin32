namespace Win32.Media.Audio;

using System;
using Win32.Foundation;
using Win32.Media;
using Win32.Media.Multimedia;
using Win32.System.Com;
using Win32.System.Com.StructuredStorage;
using Win32.UI.Shell.PropertiesSystem;
using Win32.UI.WindowsAndMessaging;

static
{
	#region Constants
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
	public const PROPERTYKEY PKEY_AudioEndpoint_FormFactor = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 0);
	public const PROPERTYKEY PKEY_AudioEndpoint_ControlPanelPageProvider = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 1);
	public const PROPERTYKEY PKEY_AudioEndpoint_Association = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 2);
	public const PROPERTYKEY PKEY_AudioEndpoint_PhysicalSpeakers = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 3);
	public const PROPERTYKEY PKEY_AudioEndpoint_GUID = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 4);
	public const PROPERTYKEY PKEY_AudioEndpoint_Disable_SysFx = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 5);
	public const uint32 ENDPOINT_SYSFX_ENABLED = 0;
	public const uint32 ENDPOINT_SYSFX_DISABLED = 1;
	public const PROPERTYKEY PKEY_AudioEndpoint_FullRangeSpeakers = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 6);
	public const PROPERTYKEY PKEY_AudioEndpoint_Supports_EventDriven_Mode = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 7);
	public const PROPERTYKEY PKEY_AudioEndpoint_JackSubType = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 8);
	public const PROPERTYKEY PKEY_AudioEndpoint_Default_VolumeInDb = .(.(0x1da5d803, 0xd492, 0x4edd, 0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x0e), 9);
	public const PROPERTYKEY PKEY_AudioEngine_DeviceFormat = .(.(0xf19f064d, 0x082c, 0x4e27, 0xbc, 0x73, 0x68, 0x82, 0xa1, 0xbb, 0x8e, 0x4c), 0);
	public const PROPERTYKEY PKEY_AudioEngine_OEMFormat = .(.(0xe4870e26, 0x3cc5, 0x4cd2, 0xba, 0x46, 0xca, 0x0a, 0x9a, 0x70, 0xed, 0x04), 3);
	public const PROPERTYKEY PKEY_AudioEndpointLogo_IconEffects = .(.(0xf1ab780d, 0x2010, 0x4ed3, 0xa3, 0xa6, 0x8b, 0x87, 0xf0, 0xf0, 0xc4, 0x76), 0);
	public const PROPERTYKEY PKEY_AudioEndpointLogo_IconPath = .(.(0xf1ab780d, 0x2010, 0x4ed3, 0xa3, 0xa6, 0x8b, 0x87, 0xf0, 0xf0, 0xc4, 0x76), 1);
	public const PROPERTYKEY PKEY_AudioEndpointSettings_MenuText = .(.(0x14242002, 0x0320, 0x4de4, 0x95, 0x55, 0xa7, 0xd8, 0x2b, 0x73, 0xc2, 0x86), 0);
	public const PROPERTYKEY PKEY_AudioEndpointSettings_LaunchContract = .(.(0x14242002, 0x0320, 0x4de4, 0x95, 0x55, 0xa7, 0xd8, 0x2b, 0x73, 0xc2, 0x86), 1);
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
	#endregion
	
	#region Typedefs
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
	#endregion
	
	#region Enums
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
	public enum MIXERLINE_COMPONENTTYPE : uint32
	{
		DST_DIGITAL = 1,
		DST_HEADPHONES = 5,
		DST_LINE = 2,
		DST_MONITOR = 3,
		DST_SPEAKERS = 4,
		DST_TELEPHONE = 6,
		DST_UNDEFINED = 0,
		DST_VOICEIN = 8,
		DST_WAVEIN = 7,
		SRC_ANALOG = 4106,
		SRC_AUXILIARY = 4105,
		SRC_COMPACTDISC = 4101,
		SRC_DIGITAL = 4097,
		SRC_LINE = 4098,
		SRC_MICROPHONE = 4099,
		SRC_PCSPEAKER = 4103,
		SRC_SYNTHESIZER = 4100,
		SRC_TELEPHONE = 4102,
		SRC_UNDEFINED = 4096,
		SRC_WAVEOUT = 4104,
	}
	public enum AUDCLNT_SHAREMODE : int32
	{
		SHARED = 0,
		EXCLUSIVE = 1,
	}
	public enum AUDIO_STREAM_CATEGORY : int32
	{
		Other = 0,
		ForegroundOnlyMedia = 1,
		Communications = 3,
		Alerts = 4,
		SoundEffects = 5,
		GameEffects = 6,
		GameMedia = 7,
		GameChat = 8,
		Speech = 9,
		Movie = 10,
		Media = 11,
		FarFieldSpeech = 12,
		UniformSpeech = 13,
		VoiceTyping = 14,
	}
	public enum AudioSessionState : int32
	{
		Inactive = 0,
		Active = 1,
		Expired = 2,
	}
	public enum _AUDCLNT_BUFFERFLAGS : int32
	{
		DATA_DISCONTINUITY = 1,
		SILENT = 2,
		TIMESTAMP_ERROR = 4,
	}
	public enum AUDCLNT_STREAMOPTIONS : uint32
	{
		NONE = 0,
		RAW = 1,
		MATCH_FORMAT = 2,
		AMBISONICS = 4,
	}
	public enum AUDIO_DUCKING_OPTIONS : uint32
	{
		DEFAULT = 0,
		DO_NOT_DUCK_OTHER_STREAMS = 1,
	}
	public enum AUDIO_EFFECT_STATE : int32
	{
		OFF = 0,
		ON = 1,
	}
	public enum AMBISONICS_TYPE : int32
	{
		TYPE_FULL3D = 0,
	}
	public enum AMBISONICS_CHANNEL_ORDERING : int32
	{
		ORDERING_ACN = 0,
	}
	public enum AMBISONICS_NORMALIZATION : int32
	{
		SN3D = 0,
		N3D = 1,
	}
	public enum AudioObjectType : uint32
	{
		None = 0,
		Dynamic = 1,
		FrontLeft = 2,
		FrontRight = 4,
		FrontCenter = 8,
		LowFrequency = 16,
		SideLeft = 32,
		SideRight = 64,
		BackLeft = 128,
		BackRight = 256,
		TopFrontLeft = 512,
		TopFrontRight = 1024,
		TopBackLeft = 2048,
		TopBackRight = 4096,
		BottomFrontLeft = 8192,
		BottomFrontRight = 16384,
		BottomBackLeft = 32768,
		BottomBackRight = 65536,
		BackCenter = 131072,
	}
	public enum SPATIAL_AUDIO_STREAM_OPTIONS : uint32
	{
		NONE = 0,
		OFFLOAD = 1,
	}
	public enum SpatialAudioHrtfDirectivityType : int32
	{
		OmniDirectional = 0,
		Cardioid = 1,
		Cone = 2,
	}
	public enum SpatialAudioHrtfEnvironmentType : int32
	{
		Small = 0,
		Medium = 1,
		Large = 2,
		Outdoors = 3,
		Average = 4,
	}
	public enum SpatialAudioHrtfDistanceDecayType : int32
	{
		NaturalDecay = 0,
		CustomDecay = 1,
	}
	public enum EDataFlow : int32
	{
		eRender = 0,
		eCapture = 1,
		eAll = 2,
		EDataFlow_enum_count = 3,
	}
	public enum ERole : int32
	{
		eConsole = 0,
		eMultimedia = 1,
		eCommunications = 2,
		ERole_enum_count = 3,
	}
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
	public enum __MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 : int32
	{
		DEFAULT = 0,
		USER = 1,
		VOLATILE = 2,
		ENUM_COUNT = 3,
	}
	public enum DataFlow : int32
	{
		In = 0,
		Out = 1,
	}
	public enum PartType : int32
	{
		Connector = 0,
		Subunit = 1,
	}
	public enum ConnectorType : int32
	{
		Unknown_Connector = 0,
		Physical_Internal = 1,
		Physical_External = 2,
		Software_IO = 3,
		Software_Fixed = 4,
		Network = 5,
	}
	public enum AudioSessionDisconnectReason : int32
	{
		DeviceRemoval = 0,
		ServerShutdown = 1,
		FormatChanged = 2,
		SessionLogoff = 3,
		SessionDisconnected = 4,
		ExclusiveModeOverride = 5,
	}
	public enum SpatialAudioMetadataWriterOverflowMode : int32
	{
		Fail = 0,
		MergeWithNew = 1,
		MergeWithLast = 2,
	}
	public enum SpatialAudioMetadataCopyMode : int32
	{
		Overwrite = 0,
		Append = 1,
		AppendMergeWithLast = 2,
		AppendMergeWithFirst = 3,
	}
	public enum PROCESS_LOOPBACK_MODE : int32
	{
		INCLUDE_TARGET_PROCESS_TREE = 0,
		EXCLUDE_TARGET_PROCESS_TREE = 1,
	}
	public enum AUDIOCLIENT_ACTIVATION_TYPE : int32
	{
		DEFAULT = 0,
		PROCESS_LOOPBACK = 1,
	}
	public enum AudioStateMonitorSoundLevel : int32
	{
		Muted = 0,
		Low = 1,
		Full = 2,
	}
	#endregion
	
	#region Function pointers
	public function void LPWAVECALLBACK(HDRVR hdrvr, uint32 uMsg, uint dwUser, uint dw1, uint dw2);
	public function void LPMIDICALLBACK(HDRVR hdrvr, uint32 uMsg, uint dwUser, uint dw1, uint dw2);
	public function void PAudioStateMonitorCallback(ref IAudioStateMonitor audioStateMonitor, void* context);
	public function BOOL ACMDRIVERENUMCB(HACMDRIVERID hadid, uint dwInstance, uint32 fdwSupport);
	public function LRESULT LPACMDRIVERPROC(uint param0, HACMDRIVERID param1, uint32 param2, LPARAM param3, LPARAM param4);
	public function BOOL ACMFORMATTAGENUMCBA(HACMDRIVERID hadid, out ACMFORMATTAGDETAILSA paftd, uint dwInstance, uint32 fdwSupport);
	public function BOOL ACMFORMATTAGENUMCBW(HACMDRIVERID hadid, out ACMFORMATTAGDETAILSW paftd, uint dwInstance, uint32 fdwSupport);
	public function BOOL ACMFORMATENUMCBA(HACMDRIVERID hadid, out ACMFORMATDETAILSA pafd, uint dwInstance, uint32 fdwSupport);
	public function BOOL ACMFORMATENUMCBW(HACMDRIVERID hadid, out tACMFORMATDETAILSW pafd, uint dwInstance, uint32 fdwSupport);
	public function uint32 ACMFORMATCHOOSEHOOKPROCA(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	public function uint32 ACMFORMATCHOOSEHOOKPROCW(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	public function BOOL ACMFILTERTAGENUMCBA(HACMDRIVERID hadid, out ACMFILTERTAGDETAILSA paftd, uint dwInstance, uint32 fdwSupport);
	public function BOOL ACMFILTERTAGENUMCBW(HACMDRIVERID hadid, out ACMFILTERTAGDETAILSW paftd, uint dwInstance, uint32 fdwSupport);
	public function BOOL ACMFILTERENUMCBA(HACMDRIVERID hadid, out ACMFILTERDETAILSA pafd, uint dwInstance, uint32 fdwSupport);
	public function BOOL ACMFILTERENUMCBW(HACMDRIVERID hadid, out ACMFILTERDETAILSW pafd, uint dwInstance, uint32 fdwSupport);
	public function uint32 ACMFILTERCHOOSEHOOKPROCA(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	public function uint32 ACMFILTERCHOOSEHOOKPROCW(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	#endregion
	
	#region Structs
	[CRepr]
	public struct AUDIO_VOLUME_NOTIFICATION_DATA
	{
		public Guid guidEventContext;
		public BOOL bMuted;
		public float fMasterVolume;
		public uint32 nChannels;
		public float[1] afChannelVolumes_array;
		
		public float* afChannelVolumes mut => &afChannelVolumes_array[0];
	}
	[CRepr, Packed(1)]
	public struct WAVEFORMATEXTENSIBLE
	{
		public WAVEFORMATEX Format;
		public _Samples_e__Union Samples;
		public uint32 dwChannelMask;
		public Guid SubFormat;
		
		[CRepr, Union, Packed(1)]
		public struct _Samples_e__Union
		{
			public uint16 wValidBitsPerSample;
			public uint16 wSamplesPerBlock;
			public uint16 wReserved;
		}
	}
	[CRepr, Packed(1)]
	public struct WAVEFILTER
	{
		public uint32 cbStruct;
		public uint32 dwFilterTag;
		public uint32 fdwFilter;
		public uint32[5] dwReserved;
	}
	[CRepr, Packed(1)]
	public struct VOLUMEWAVEFILTER
	{
		public WAVEFILTER wfltr;
		public uint32 dwVolume;
	}
	[CRepr, Packed(1)]
	public struct ECHOWAVEFILTER
	{
		public WAVEFILTER wfltr;
		public uint32 dwVolume;
		public uint32 dwDelay;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct WAVEFORMAT
	{
		public uint16 wFormatTag;
		public uint16 nChannels;
		public uint32 nSamplesPerSec;
		public uint32 nAvgBytesPerSec;
		public uint16 nBlockAlign;
	}
	[CRepr, Packed(1)]
	public struct PCMWAVEFORMAT
	{
		public WAVEFORMAT wf;
		public uint16 wBitsPerSample;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct MIDIINCAPSA
	{
		public uint16 wMid;
		public uint16 wPid;
		public uint32 vDriverVersion;
		public CHAR[32] szPname;
		public uint32 dwSupport;
	}
	[CRepr, Packed(1)]
	public struct MIDIINCAPSW
	{
		public uint16 wMid;
		public uint16 wPid;
		public uint32 vDriverVersion;
		public char16[32] szPname;
		public uint32 dwSupport;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct MIDIEVENT
	{
		public uint32 dwDeltaTime;
		public uint32 dwStreamID;
		public uint32 dwEvent;
		public uint32[1] dwParms_array;
		
		public uint32* dwParms mut => &dwParms_array[0];
	}
	[CRepr, Packed(1)]
	public struct MIDISTRMBUFFVER
	{
		public uint32 dwVersion;
		public uint32 dwMid;
		public uint32 dwOEMVersion;
	}
	[CRepr, Packed(1)]
	public struct MIDIPROPTIMEDIV
	{
		public uint32 cbStruct;
		public uint32 dwTimeDiv;
	}
	[CRepr, Packed(1)]
	public struct MIDIPROPTEMPO
	{
		public uint32 cbStruct;
		public uint32 dwTempo;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct MIXERCAPSA
	{
		public uint16 wMid;
		public uint16 wPid;
		public uint32 vDriverVersion;
		public CHAR[32] szPname;
		public uint32 fdwSupport;
		public uint32 cDestinations;
	}
	[CRepr, Packed(1)]
	public struct MIXERCAPSW
	{
		public uint16 wMid;
		public uint16 wPid;
		public uint32 vDriverVersion;
		public char16[32] szPname;
		public uint32 fdwSupport;
		public uint32 cDestinations;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
		
		[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
		
		[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
		
		[CRepr, Union, Packed(1)]
		public struct _Bounds_e__Union
		{
			public _Anonymous1_e__Struct Anonymous1;
			public _Anonymous2_e__Struct Anonymous2;
			public uint32[6] dwReserved;
			
			[CRepr, Packed(1)]
			public struct _Anonymous2_e__Struct
			{
				public uint32 dwMinimum;
				public uint32 dwMaximum;
			}
			[CRepr, Packed(1)]
			public struct _Anonymous1_e__Struct
			{
				public int32 lMinimum;
				public int32 lMaximum;
			}
		}
		[CRepr, Union, Packed(1)]
		public struct _Metrics_e__Union
		{
			public uint32 cSteps;
			public uint32 cbCustomData;
			public uint32[6] dwReserved;
		}
	}
	[CRepr, Packed(1)]
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
		
		[CRepr, Union, Packed(1)]
		public struct _Bounds_e__Union
		{
			public _Anonymous1_e__Struct Anonymous1;
			public _Anonymous2_e__Struct Anonymous2;
			public uint32[6] dwReserved;
			
			[CRepr, Packed(1)]
			public struct _Anonymous1_e__Struct
			{
				public int32 lMinimum;
				public int32 lMaximum;
			}
			[CRepr, Packed(1)]
			public struct _Anonymous2_e__Struct
			{
				public uint32 dwMinimum;
				public uint32 dwMaximum;
			}
		}
		[CRepr, Union, Packed(1)]
		public struct _Metrics_e__Union
		{
			public uint32 cSteps;
			public uint32 cbCustomData;
			public uint32[6] dwReserved;
		}
	}
	[CRepr, Packed(1)]
	public struct MIXERLINECONTROLSA
	{
		public uint32 cbStruct;
		public uint32 dwLineID;
		public using _Anonymous_e__Union Anonymous;
		public uint32 cControls;
		public uint32 cbmxctrl;
		public MIXERCONTROLA* pamxctrl;
		
		[CRepr, Union, Packed(1)]
		public struct _Anonymous_e__Union
		{
			public uint32 dwControlID;
			public uint32 dwControlType;
		}
	}
	[CRepr, Packed(1)]
	public struct MIXERLINECONTROLSW
	{
		public uint32 cbStruct;
		public uint32 dwLineID;
		public using _Anonymous_e__Union Anonymous;
		public uint32 cControls;
		public uint32 cbmxctrl;
		public MIXERCONTROLW* pamxctrl;
		
		[CRepr, Union, Packed(1)]
		public struct _Anonymous_e__Union
		{
			public uint32 dwControlID;
			public uint32 dwControlType;
		}
	}
	[CRepr, Packed(1)]
	public struct MIXERCONTROLDETAILS
	{
		public uint32 cbStruct;
		public uint32 dwControlID;
		public uint32 cChannels;
		public using _Anonymous_e__Union Anonymous;
		public uint32 cbDetails;
		public void* paDetails;
		
		[CRepr, Union, Packed(1)]
		public struct _Anonymous_e__Union
		{
			public HWND hwndOwner;
			public uint32 cMultipleItems;
		}
	}
	[CRepr, Packed(1)]
	public struct MIXERCONTROLDETAILS_LISTTEXTA
	{
		public uint32 dwParam1;
		public uint32 dwParam2;
		public CHAR[64] szName;
	}
	[CRepr, Packed(1)]
	public struct MIXERCONTROLDETAILS_LISTTEXTW
	{
		public uint32 dwParam1;
		public uint32 dwParam2;
		public char16[64] szName;
	}
	[CRepr, Packed(1)]
	public struct MIXERCONTROLDETAILS_BOOLEAN
	{
		public int32 fValue;
	}
	[CRepr, Packed(1)]
	public struct MIXERCONTROLDETAILS_SIGNED
	{
		public int32 lValue;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct SpatialAudioHrtfDirectivity
	{
		public SpatialAudioHrtfDirectivityType Type;
		public float Scaling;
	}
	[CRepr, Packed(1)]
	public struct SpatialAudioHrtfDirectivityCardioid
	{
		public SpatialAudioHrtfDirectivity directivity;
		public float Order;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct SpatialAudioHrtfDistanceDecay
	{
		public SpatialAudioHrtfDistanceDecayType Type;
		public float MaxGain;
		public float MinGain;
		public float UnityGainDistance;
		public float CutoffDistance;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct SpatialAudioMetadataItemsInfo
	{
		public uint16 FrameCount;
		public uint16 ItemCount;
		public uint16 MaxItemCount;
		public uint32 MaxValueBufferLength;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS ProcessLoopbackParams;
		}
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct ACMDRVSTREAMSIZE
	{
		public uint32 cbStruct;
		public uint32 fdwSize;
		public uint32 cbSrcLength;
		public uint32 cbDstLength;
	}
	[CRepr, Packed(1)]
	public struct ACMDRVFORMATSUGGEST
	{
		public uint32 cbStruct;
		public uint32 fdwSuggest;
		public WAVEFORMATEX* pwfxSrc;
		public uint32 cbwfxSrc;
		public WAVEFORMATEX* pwfxDst;
		public uint32 cbwfxDst;
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_MMDeviceEnumerator = .(0xbcde0395, 0xe52f, 0x467c, 0x8e, 0x3d, 0xc4, 0x57, 0x92, 0x91, 0x69, 0x2e);
	public const Guid CLSID_DeviceTopology = .(0x1df639d0, 0x5ec1, 0x47aa, 0x93, 0x79, 0x82, 0x8d, 0xc1, 0xaa, 0x8c, 0x59);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IMessageFilter : IUnknown
	{
		public const new Guid IID = .(0x00000016, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 HandleInComingCall(uint32 dwCallType, HTASK htaskCaller, uint32 dwTickCount, INTERFACEINFO* lpInterfaceInfo) mut => VT.HandleInComingCall(ref this, dwCallType, htaskCaller, dwTickCount, lpInterfaceInfo);
		public uint32 RetryRejectedCall(HTASK htaskCallee, uint32 dwTickCount, uint32 dwRejectType) mut => VT.RetryRejectedCall(ref this, htaskCallee, dwTickCount, dwRejectType);
		public uint32 MessagePending(HTASK htaskCallee, uint32 dwTickCount, uint32 dwPendingType) mut => VT.MessagePending(ref this, htaskCallee, dwTickCount, dwPendingType);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IMessageFilter self, uint32 dwCallType, HTASK htaskCaller, uint32 dwTickCount, INTERFACEINFO* lpInterfaceInfo) HandleInComingCall;
			public new function [CallingConvention(.Stdcall)] uint32(ref IMessageFilter self, HTASK htaskCallee, uint32 dwTickCount, uint32 dwRejectType) RetryRejectedCall;
			public new function [CallingConvention(.Stdcall)] uint32(ref IMessageFilter self, HTASK htaskCallee, uint32 dwTickCount, uint32 dwPendingType) MessagePending;
		}
	}
	[CRepr]
	public struct IAudioClient : IUnknown
	{
		public const new Guid IID = .(0x1cb9ad4c, 0xdbfa, 0x4c32, 0xb1, 0x78, 0xc2, 0xf5, 0x68, 0xa7, 0x03, 0xb2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(AUDCLNT_SHAREMODE ShareMode, uint32 StreamFlags, int64 hnsBufferDuration, int64 hnsPeriodicity, in WAVEFORMATEX pFormat, Guid* AudioSessionGuid) mut => VT.Initialize(ref this, ShareMode, StreamFlags, hnsBufferDuration, hnsPeriodicity, pFormat, AudioSessionGuid);
		public HRESULT GetBufferSize(out uint32 pNumBufferFrames) mut => VT.GetBufferSize(ref this, out pNumBufferFrames);
		public HRESULT GetStreamLatency(out int64 phnsLatency) mut => VT.GetStreamLatency(ref this, out phnsLatency);
		public HRESULT GetCurrentPadding(out uint32 pNumPaddingFrames) mut => VT.GetCurrentPadding(ref this, out pNumPaddingFrames);
		public HRESULT IsFormatSupported(AUDCLNT_SHAREMODE ShareMode, in WAVEFORMATEX pFormat, WAVEFORMATEX** ppClosestMatch) mut => VT.IsFormatSupported(ref this, ShareMode, pFormat, ppClosestMatch);
		public HRESULT GetMixFormat(out WAVEFORMATEX* ppDeviceFormat) mut => VT.GetMixFormat(ref this, out ppDeviceFormat);
		public HRESULT GetDevicePeriod(int64* phnsDefaultDevicePeriod, int64* phnsMinimumDevicePeriod) mut => VT.GetDevicePeriod(ref this, phnsDefaultDevicePeriod, phnsMinimumDevicePeriod);
		public HRESULT Start() mut => VT.Start(ref this);
		public HRESULT Stop() mut => VT.Stop(ref this);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT SetEventHandle(HANDLE eventHandle) mut => VT.SetEventHandle(ref this, eventHandle);
		public HRESULT GetService(in Guid riid, void** ppv) mut => VT.GetService(ref this, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, AUDCLNT_SHAREMODE ShareMode, uint32 StreamFlags, int64 hnsBufferDuration, int64 hnsPeriodicity, in WAVEFORMATEX pFormat, Guid* AudioSessionGuid) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, out uint32 pNumBufferFrames) GetBufferSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, out int64 phnsLatency) GetStreamLatency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, out uint32 pNumPaddingFrames) GetCurrentPadding;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, AUDCLNT_SHAREMODE ShareMode, in WAVEFORMATEX pFormat, WAVEFORMATEX** ppClosestMatch) IsFormatSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, out WAVEFORMATEX* ppDeviceFormat) GetMixFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, int64* phnsDefaultDevicePeriod, int64* phnsMinimumDevicePeriod) GetDevicePeriod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self) Start;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self) Stop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, HANDLE eventHandle) SetEventHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient self, in Guid riid, void** ppv) GetService;
		}
	}
	[CRepr]
	public struct IAudioClient2 : IAudioClient
	{
		public const new Guid IID = .(0x726778cd, 0xf60a, 0x4eda, 0x82, 0xde, 0xe4, 0x76, 0x10, 0xcd, 0x78, 0xaa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsOffloadCapable(AUDIO_STREAM_CATEGORY Category, out BOOL pbOffloadCapable) mut => VT.IsOffloadCapable(ref this, Category, out pbOffloadCapable);
		public HRESULT SetClientProperties(in AudioClientProperties pProperties) mut => VT.SetClientProperties(ref this, pProperties);
		public HRESULT GetBufferSizeLimits(in WAVEFORMATEX pFormat, BOOL bEventDriven, out int64 phnsMinBufferDuration, out int64 phnsMaxBufferDuration) mut => VT.GetBufferSizeLimits(ref this, pFormat, bEventDriven, out phnsMinBufferDuration, out phnsMaxBufferDuration);

		[CRepr]
		public struct VTable : IAudioClient.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient2 self, AUDIO_STREAM_CATEGORY Category, out BOOL pbOffloadCapable) IsOffloadCapable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient2 self, in AudioClientProperties pProperties) SetClientProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient2 self, in WAVEFORMATEX pFormat, BOOL bEventDriven, out int64 phnsMinBufferDuration, out int64 phnsMaxBufferDuration) GetBufferSizeLimits;
		}
	}
	[CRepr]
	public struct IAudioClient3 : IAudioClient2
	{
		public const new Guid IID = .(0x7ed4ee07, 0x8e67, 0x4cd4, 0x8c, 0x1a, 0x2b, 0x7a, 0x59, 0x87, 0xad, 0x42);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSharedModeEnginePeriod(in WAVEFORMATEX pFormat, out uint32 pDefaultPeriodInFrames, out uint32 pFundamentalPeriodInFrames, out uint32 pMinPeriodInFrames, out uint32 pMaxPeriodInFrames) mut => VT.GetSharedModeEnginePeriod(ref this, pFormat, out pDefaultPeriodInFrames, out pFundamentalPeriodInFrames, out pMinPeriodInFrames, out pMaxPeriodInFrames);
		public HRESULT GetCurrentSharedModeEnginePeriod(out WAVEFORMATEX* ppFormat, out uint32 pCurrentPeriodInFrames) mut => VT.GetCurrentSharedModeEnginePeriod(ref this, out ppFormat, out pCurrentPeriodInFrames);
		public HRESULT InitializeSharedAudioStream(uint32 StreamFlags, uint32 PeriodInFrames, in WAVEFORMATEX pFormat, Guid* AudioSessionGuid) mut => VT.InitializeSharedAudioStream(ref this, StreamFlags, PeriodInFrames, pFormat, AudioSessionGuid);

		[CRepr]
		public struct VTable : IAudioClient2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient3 self, in WAVEFORMATEX pFormat, out uint32 pDefaultPeriodInFrames, out uint32 pFundamentalPeriodInFrames, out uint32 pMinPeriodInFrames, out uint32 pMaxPeriodInFrames) GetSharedModeEnginePeriod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient3 self, out WAVEFORMATEX* ppFormat, out uint32 pCurrentPeriodInFrames) GetCurrentSharedModeEnginePeriod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClient3 self, uint32 StreamFlags, uint32 PeriodInFrames, in WAVEFORMATEX pFormat, Guid* AudioSessionGuid) InitializeSharedAudioStream;
		}
	}
	[CRepr]
	public struct IAudioRenderClient : IUnknown
	{
		public const new Guid IID = .(0xf294acfc, 0x3146, 0x4483, 0xa7, 0xbf, 0xad, 0xdc, 0xa7, 0xc2, 0x60, 0xe2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBuffer(uint32 NumFramesRequested, out uint8* ppData) mut => VT.GetBuffer(ref this, NumFramesRequested, out ppData);
		public HRESULT ReleaseBuffer(uint32 NumFramesWritten, uint32 dwFlags) mut => VT.ReleaseBuffer(ref this, NumFramesWritten, dwFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioRenderClient self, uint32 NumFramesRequested, out uint8* ppData) GetBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioRenderClient self, uint32 NumFramesWritten, uint32 dwFlags) ReleaseBuffer;
		}
	}
	[CRepr]
	public struct IAudioCaptureClient : IUnknown
	{
		public const new Guid IID = .(0xc8adbd64, 0xe71e, 0x48a0, 0xa4, 0xde, 0x18, 0x5c, 0x39, 0x5c, 0xd3, 0x17);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBuffer(out uint8* ppData, out uint32 pNumFramesToRead, out uint32 pdwFlags, uint64* pu64DevicePosition, uint64* pu64QPCPosition) mut => VT.GetBuffer(ref this, out ppData, out pNumFramesToRead, out pdwFlags, pu64DevicePosition, pu64QPCPosition);
		public HRESULT ReleaseBuffer(uint32 NumFramesRead) mut => VT.ReleaseBuffer(ref this, NumFramesRead);
		public HRESULT GetNextPacketSize(out uint32 pNumFramesInNextPacket) mut => VT.GetNextPacketSize(ref this, out pNumFramesInNextPacket);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioCaptureClient self, out uint8* ppData, out uint32 pNumFramesToRead, out uint32 pdwFlags, uint64* pu64DevicePosition, uint64* pu64QPCPosition) GetBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioCaptureClient self, uint32 NumFramesRead) ReleaseBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioCaptureClient self, out uint32 pNumFramesInNextPacket) GetNextPacketSize;
		}
	}
	[CRepr]
	public struct IAudioClock : IUnknown
	{
		public const new Guid IID = .(0xcd63314f, 0x3fba, 0x4a1b, 0x81, 0x2c, 0xef, 0x96, 0x35, 0x87, 0x28, 0xe7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFrequency(out uint64 pu64Frequency) mut => VT.GetFrequency(ref this, out pu64Frequency);
		public HRESULT GetPosition(out uint64 pu64Position, uint64* pu64QPCPosition) mut => VT.GetPosition(ref this, out pu64Position, pu64QPCPosition);
		public HRESULT GetCharacteristics(out uint32 pdwCharacteristics) mut => VT.GetCharacteristics(ref this, out pdwCharacteristics);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClock self, out uint64 pu64Frequency) GetFrequency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClock self, out uint64 pu64Position, uint64* pu64QPCPosition) GetPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClock self, out uint32 pdwCharacteristics) GetCharacteristics;
		}
	}
	[CRepr]
	public struct IAudioClock2 : IUnknown
	{
		public const new Guid IID = .(0x6f49ff73, 0x6727, 0x49ac, 0xa0, 0x08, 0xd9, 0x8c, 0xf5, 0xe7, 0x00, 0x48);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDevicePosition(out uint64 DevicePosition, uint64* QPCPosition) mut => VT.GetDevicePosition(ref this, out DevicePosition, QPCPosition);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClock2 self, out uint64 DevicePosition, uint64* QPCPosition) GetDevicePosition;
		}
	}
	[CRepr]
	public struct IAudioClockAdjustment : IUnknown
	{
		public const new Guid IID = .(0xf6e4c0a0, 0x46d9, 0x4fb8, 0xbe, 0x21, 0x57, 0xa3, 0xef, 0x2b, 0x62, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSampleRate(float flSampleRate) mut => VT.SetSampleRate(ref this, flSampleRate);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClockAdjustment self, float flSampleRate) SetSampleRate;
		}
	}
	[CRepr]
	public struct ISimpleAudioVolume : IUnknown
	{
		public const new Guid IID = .(0x87ce5498, 0x68d6, 0x44e5, 0x92, 0x15, 0x6d, 0xa4, 0x7e, 0xf8, 0x83, 0xd8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMasterVolume(float fLevel, in Guid EventContext) mut => VT.SetMasterVolume(ref this, fLevel, EventContext);
		public HRESULT GetMasterVolume(out float pfLevel) mut => VT.GetMasterVolume(ref this, out pfLevel);
		public HRESULT SetMute(BOOL bMute, in Guid EventContext) mut => VT.SetMute(ref this, bMute, EventContext);
		public HRESULT GetMute(out BOOL pbMute) mut => VT.GetMute(ref this, out pbMute);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISimpleAudioVolume self, float fLevel, in Guid EventContext) SetMasterVolume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISimpleAudioVolume self, out float pfLevel) GetMasterVolume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISimpleAudioVolume self, BOOL bMute, in Guid EventContext) SetMute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISimpleAudioVolume self, out BOOL pbMute) GetMute;
		}
	}
	[CRepr]
	public struct IAudioClientDuckingControl : IUnknown
	{
		public const new Guid IID = .(0xc789d381, 0xa28c, 0x4168, 0xb2, 0x8f, 0xd3, 0xa8, 0x37, 0x92, 0x4d, 0xc3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetDuckingOptionsForCurrentStream(AUDIO_DUCKING_OPTIONS options) mut => VT.SetDuckingOptionsForCurrentStream(ref this, options);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioClientDuckingControl self, AUDIO_DUCKING_OPTIONS options) SetDuckingOptionsForCurrentStream;
		}
	}
	[CRepr]
	public struct IAudioEffectsChangedNotificationClient : IUnknown
	{
		public const new Guid IID = .(0xa5ded44f, 0x3c5d, 0x4b2b, 0xbd, 0x1e, 0x5d, 0xc1, 0xee, 0x20, 0xbb, 0xf6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnAudioEffectsChanged() mut => VT.OnAudioEffectsChanged(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEffectsChangedNotificationClient self) OnAudioEffectsChanged;
		}
	}
	[CRepr]
	public struct IAudioEffectsManager : IUnknown
	{
		public const new Guid IID = .(0x4460b3ae, 0x4b44, 0x4527, 0x86, 0x76, 0x75, 0x48, 0xa8, 0xac, 0xd2, 0x60);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterAudioEffectsChangedNotificationCallback(ref IAudioEffectsChangedNotificationClient client) mut => VT.RegisterAudioEffectsChangedNotificationCallback(ref this, ref client);
		public HRESULT UnregisterAudioEffectsChangedNotificationCallback(ref IAudioEffectsChangedNotificationClient client) mut => VT.UnregisterAudioEffectsChangedNotificationCallback(ref this, ref client);
		public HRESULT GetAudioEffects(AUDIO_EFFECT** effects, out uint32 numEffects) mut => VT.GetAudioEffects(ref this, effects, out numEffects);
		public HRESULT SetAudioEffectState(Guid effectId, AUDIO_EFFECT_STATE state) mut => VT.SetAudioEffectState(ref this, effectId, state);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEffectsManager self, ref IAudioEffectsChangedNotificationClient client) RegisterAudioEffectsChangedNotificationCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEffectsManager self, ref IAudioEffectsChangedNotificationClient client) UnregisterAudioEffectsChangedNotificationCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEffectsManager self, AUDIO_EFFECT** effects, out uint32 numEffects) GetAudioEffects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEffectsManager self, Guid effectId, AUDIO_EFFECT_STATE state) SetAudioEffectState;
		}
	}
	[CRepr]
	public struct IAudioStreamVolume : IUnknown
	{
		public const new Guid IID = .(0x93014887, 0x242d, 0x4068, 0x8a, 0x15, 0xcf, 0x5e, 0x93, 0xb9, 0x0f, 0xe3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetChannelCount(out uint32 pdwCount) mut => VT.GetChannelCount(ref this, out pdwCount);
		public HRESULT SetChannelVolume(uint32 dwIndex, float fLevel) mut => VT.SetChannelVolume(ref this, dwIndex, fLevel);
		public HRESULT GetChannelVolume(uint32 dwIndex, out float pfLevel) mut => VT.GetChannelVolume(ref this, dwIndex, out pfLevel);
		public HRESULT SetAllVolumes(uint32 dwCount, float* pfVolumes) mut => VT.SetAllVolumes(ref this, dwCount, pfVolumes);
		public HRESULT GetAllVolumes(uint32 dwCount, float* pfVolumes) mut => VT.GetAllVolumes(ref this, dwCount, pfVolumes);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioStreamVolume self, out uint32 pdwCount) GetChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioStreamVolume self, uint32 dwIndex, float fLevel) SetChannelVolume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioStreamVolume self, uint32 dwIndex, out float pfLevel) GetChannelVolume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioStreamVolume self, uint32 dwCount, float* pfVolumes) SetAllVolumes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioStreamVolume self, uint32 dwCount, float* pfVolumes) GetAllVolumes;
		}
	}
	[CRepr]
	public struct IAudioAmbisonicsControl : IUnknown
	{
		public const new Guid IID = .(0x28724c91, 0xdf35, 0x4856, 0x9f, 0x76, 0xd6, 0xa2, 0x64, 0x13, 0xf3, 0xdf);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetData(AMBISONICS_PARAMS* pAmbisonicsParams, uint32 cbAmbisonicsParams) mut => VT.SetData(ref this, pAmbisonicsParams, cbAmbisonicsParams);
		public HRESULT SetHeadTracking(BOOL bEnableHeadTracking) mut => VT.SetHeadTracking(ref this, bEnableHeadTracking);
		public HRESULT GetHeadTracking(out BOOL pbEnableHeadTracking) mut => VT.GetHeadTracking(ref this, out pbEnableHeadTracking);
		public HRESULT SetRotation(float X, float Y, float Z, float W) mut => VT.SetRotation(ref this, X, Y, Z, W);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioAmbisonicsControl self, AMBISONICS_PARAMS* pAmbisonicsParams, uint32 cbAmbisonicsParams) SetData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioAmbisonicsControl self, BOOL bEnableHeadTracking) SetHeadTracking;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioAmbisonicsControl self, out BOOL pbEnableHeadTracking) GetHeadTracking;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioAmbisonicsControl self, float X, float Y, float Z, float W) SetRotation;
		}
	}
	[CRepr]
	public struct IChannelAudioVolume : IUnknown
	{
		public const new Guid IID = .(0x1c158861, 0xb533, 0x4b30, 0xb1, 0xcf, 0xe8, 0x53, 0xe5, 0x1c, 0x59, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetChannelCount(out uint32 pdwCount) mut => VT.GetChannelCount(ref this, out pdwCount);
		public HRESULT SetChannelVolume(uint32 dwIndex, float fLevel, in Guid EventContext) mut => VT.SetChannelVolume(ref this, dwIndex, fLevel, EventContext);
		public HRESULT GetChannelVolume(uint32 dwIndex, out float pfLevel) mut => VT.GetChannelVolume(ref this, dwIndex, out pfLevel);
		public HRESULT SetAllVolumes(uint32 dwCount, float* pfVolumes, in Guid EventContext) mut => VT.SetAllVolumes(ref this, dwCount, pfVolumes, EventContext);
		public HRESULT GetAllVolumes(uint32 dwCount, float* pfVolumes) mut => VT.GetAllVolumes(ref this, dwCount, pfVolumes);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelAudioVolume self, out uint32 pdwCount) GetChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelAudioVolume self, uint32 dwIndex, float fLevel, in Guid EventContext) SetChannelVolume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelAudioVolume self, uint32 dwIndex, out float pfLevel) GetChannelVolume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelAudioVolume self, uint32 dwCount, float* pfVolumes, in Guid EventContext) SetAllVolumes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelAudioVolume self, uint32 dwCount, float* pfVolumes) GetAllVolumes;
		}
	}
	[CRepr]
	public struct IAudioFormatEnumerator : IUnknown
	{
		public const new Guid IID = .(0xdcdaa858, 0x895a, 0x4a22, 0xa5, 0xeb, 0x67, 0xbd, 0xa5, 0x06, 0x09, 0x6d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out uint32 count) mut => VT.GetCount(ref this, out count);
		public HRESULT GetFormat(uint32 index, out WAVEFORMATEX* format) mut => VT.GetFormat(ref this, index, out format);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioFormatEnumerator self, out uint32 count) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioFormatEnumerator self, uint32 index, out WAVEFORMATEX* format) GetFormat;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectBase : IUnknown
	{
		public const new Guid IID = .(0xcce0b8f2, 0x8d4d, 0x4efb, 0xa8, 0xcf, 0x3d, 0x6e, 0xcf, 0x1c, 0x30, 0xe0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBuffer(out uint8* buffer, out uint32 bufferLength) mut => VT.GetBuffer(ref this, out buffer, out bufferLength);
		public HRESULT SetEndOfStream(uint32 frameCount) mut => VT.SetEndOfStream(ref this, frameCount);
		public HRESULT IsActive(out BOOL isActive) mut => VT.IsActive(ref this, out isActive);
		public HRESULT GetAudioObjectType(out AudioObjectType audioObjectType) mut => VT.GetAudioObjectType(ref this, out audioObjectType);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectBase self, out uint8* buffer, out uint32 bufferLength) GetBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectBase self, uint32 frameCount) SetEndOfStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectBase self, out BOOL isActive) IsActive;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectBase self, out AudioObjectType audioObjectType) GetAudioObjectType;
		}
	}
	[CRepr]
	public struct ISpatialAudioObject : ISpatialAudioObjectBase
	{
		public const new Guid IID = .(0xdde28967, 0x521b, 0x46e5, 0x8f, 0x00, 0xbd, 0x6f, 0x2b, 0xc8, 0xab, 0x1d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetPosition(float x, float y, float z) mut => VT.SetPosition(ref this, x, y, z);
		public HRESULT SetVolume(float volume) mut => VT.SetVolume(ref this, volume);

		[CRepr]
		public struct VTable : ISpatialAudioObjectBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObject self, float x, float y, float z) SetPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObject self, float volume) SetVolume;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectRenderStreamBase : IUnknown
	{
		public const new Guid IID = .(0xfeaaf403, 0xc1d8, 0x450d, 0xaa, 0x05, 0xe0, 0xcc, 0xee, 0x75, 0x02, 0xa8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAvailableDynamicObjectCount(out uint32 value) mut => VT.GetAvailableDynamicObjectCount(ref this, out value);
		public HRESULT GetService(in Guid riid, void** service) mut => VT.GetService(ref this, riid, service);
		public HRESULT Start() mut => VT.Start(ref this);
		public HRESULT Stop() mut => VT.Stop(ref this);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT BeginUpdatingAudioObjects(out uint32 availableDynamicObjectCount, out uint32 frameCountPerBuffer) mut => VT.BeginUpdatingAudioObjects(ref this, out availableDynamicObjectCount, out frameCountPerBuffer);
		public HRESULT EndUpdatingAudioObjects() mut => VT.EndUpdatingAudioObjects(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self, out uint32 value) GetAvailableDynamicObjectCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self, in Guid riid, void** service) GetService;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self) Start;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self) Stop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self, out uint32 availableDynamicObjectCount, out uint32 frameCountPerBuffer) BeginUpdatingAudioObjects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamBase self) EndUpdatingAudioObjects;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectRenderStream : ISpatialAudioObjectRenderStreamBase
	{
		public const new Guid IID = .(0xbab5f473, 0xb423, 0x477b, 0x85, 0xf5, 0xb5, 0xa3, 0x32, 0xa0, 0x41, 0x53);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateSpatialAudioObject(AudioObjectType type, out ISpatialAudioObject* audioObject) mut => VT.ActivateSpatialAudioObject(ref this, type, out audioObject);

		[CRepr]
		public struct VTable : ISpatialAudioObjectRenderStreamBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStream self, AudioObjectType type, out ISpatialAudioObject* audioObject) ActivateSpatialAudioObject;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectRenderStreamNotify : IUnknown
	{
		public const new Guid IID = .(0xdddf83e6, 0x68d7, 0x4c70, 0x88, 0x3f, 0xa1, 0x83, 0x6a, 0xfb, 0x4a, 0x50);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnAvailableDynamicObjectCountChange(ref ISpatialAudioObjectRenderStreamBase sender, int64 hnsComplianceDeadlineTime, uint32 availableDynamicObjectCountChange) mut => VT.OnAvailableDynamicObjectCountChange(ref this, ref sender, hnsComplianceDeadlineTime, availableDynamicObjectCountChange);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamNotify self, ref ISpatialAudioObjectRenderStreamBase sender, int64 hnsComplianceDeadlineTime, uint32 availableDynamicObjectCountChange) OnAvailableDynamicObjectCountChange;
		}
	}
	[CRepr]
	public struct ISpatialAudioClient : IUnknown
	{
		public const new Guid IID = .(0xbbf8e066, 0xaaaa, 0x49be, 0x9a, 0x4d, 0xfd, 0x2a, 0x85, 0x8e, 0xa2, 0x7f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetStaticObjectPosition(AudioObjectType type, out float x, out float y, out float z) mut => VT.GetStaticObjectPosition(ref this, type, out x, out y, out z);
		public HRESULT GetNativeStaticObjectTypeMask(out AudioObjectType mask) mut => VT.GetNativeStaticObjectTypeMask(ref this, out mask);
		public HRESULT GetMaxDynamicObjectCount(out uint32 value) mut => VT.GetMaxDynamicObjectCount(ref this, out value);
		public HRESULT GetSupportedAudioObjectFormatEnumerator(out IAudioFormatEnumerator* enumerator) mut => VT.GetSupportedAudioObjectFormatEnumerator(ref this, out enumerator);
		public HRESULT GetMaxFrameCount(in WAVEFORMATEX objectFormat, out uint32 frameCountPerBuffer) mut => VT.GetMaxFrameCount(ref this, objectFormat, out frameCountPerBuffer);
		public HRESULT IsAudioObjectFormatSupported(in WAVEFORMATEX objectFormat) mut => VT.IsAudioObjectFormatSupported(ref this, objectFormat);
		public HRESULT IsSpatialAudioStreamAvailable(in Guid streamUuid, PROPVARIANT* auxiliaryInfo) mut => VT.IsSpatialAudioStreamAvailable(ref this, streamUuid, auxiliaryInfo);
		public HRESULT ActivateSpatialAudioStream(in PROPVARIANT activationParams, in Guid riid, void** stream) mut => VT.ActivateSpatialAudioStream(ref this, activationParams, riid, stream);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, AudioObjectType type, out float x, out float y, out float z) GetStaticObjectPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, out AudioObjectType mask) GetNativeStaticObjectTypeMask;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, out uint32 value) GetMaxDynamicObjectCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, out IAudioFormatEnumerator* enumerator) GetSupportedAudioObjectFormatEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, in WAVEFORMATEX objectFormat, out uint32 frameCountPerBuffer) GetMaxFrameCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, in WAVEFORMATEX objectFormat) IsAudioObjectFormatSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, in Guid streamUuid, PROPVARIANT* auxiliaryInfo) IsSpatialAudioStreamAvailable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient self, in PROPVARIANT activationParams, in Guid riid, void** stream) ActivateSpatialAudioStream;
		}
	}
	[CRepr]
	public struct ISpatialAudioClient2 : ISpatialAudioClient
	{
		public const new Guid IID = .(0xcaabe452, 0xa66a, 0x4bee, 0xa9, 0x3e, 0xe3, 0x20, 0x46, 0x3f, 0x6a, 0x53);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsOffloadCapable(AUDIO_STREAM_CATEGORY category, out BOOL isOffloadCapable) mut => VT.IsOffloadCapable(ref this, category, out isOffloadCapable);
		public HRESULT GetMaxFrameCountForCategory(AUDIO_STREAM_CATEGORY category, BOOL offloadEnabled, in WAVEFORMATEX objectFormat, out uint32 frameCountPerBuffer) mut => VT.GetMaxFrameCountForCategory(ref this, category, offloadEnabled, objectFormat, out frameCountPerBuffer);

		[CRepr]
		public struct VTable : ISpatialAudioClient.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient2 self, AUDIO_STREAM_CATEGORY category, out BOOL isOffloadCapable) IsOffloadCapable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioClient2 self, AUDIO_STREAM_CATEGORY category, BOOL offloadEnabled, in WAVEFORMATEX objectFormat, out uint32 frameCountPerBuffer) GetMaxFrameCountForCategory;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectForHrtf : ISpatialAudioObjectBase
	{
		public const new Guid IID = .(0xd7436ade, 0x1978, 0x4e14, 0xab, 0xa0, 0x55, 0x5b, 0xd8, 0xeb, 0x83, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetPosition(float x, float y, float z) mut => VT.SetPosition(ref this, x, y, z);
		public HRESULT SetGain(float gain) mut => VT.SetGain(ref this, gain);
		public HRESULT SetOrientation(in float* orientation) mut => VT.SetOrientation(ref this, orientation);
		public HRESULT SetEnvironment(SpatialAudioHrtfEnvironmentType environment) mut => VT.SetEnvironment(ref this, environment);
		public HRESULT SetDistanceDecay(ref SpatialAudioHrtfDistanceDecay distanceDecay) mut => VT.SetDistanceDecay(ref this, ref distanceDecay);
		public HRESULT SetDirectivity(ref SpatialAudioHrtfDirectivityUnion directivity) mut => VT.SetDirectivity(ref this, ref directivity);

		[CRepr]
		public struct VTable : ISpatialAudioObjectBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForHrtf self, float x, float y, float z) SetPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForHrtf self, float gain) SetGain;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForHrtf self, in float* orientation) SetOrientation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForHrtf self, SpatialAudioHrtfEnvironmentType environment) SetEnvironment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForHrtf self, ref SpatialAudioHrtfDistanceDecay distanceDecay) SetDistanceDecay;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForHrtf self, ref SpatialAudioHrtfDirectivityUnion directivity) SetDirectivity;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectRenderStreamForHrtf : ISpatialAudioObjectRenderStreamBase
	{
		public const new Guid IID = .(0xe08deef9, 0x5363, 0x406e, 0x9f, 0xdc, 0x08, 0x0e, 0xe2, 0x47, 0xbb, 0xe0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateSpatialAudioObjectForHrtf(AudioObjectType type, out ISpatialAudioObjectForHrtf* audioObject) mut => VT.ActivateSpatialAudioObjectForHrtf(ref this, type, out audioObject);

		[CRepr]
		public struct VTable : ISpatialAudioObjectRenderStreamBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamForHrtf self, AudioObjectType type, out ISpatialAudioObjectForHrtf* audioObject) ActivateSpatialAudioObjectForHrtf;
		}
	}
	[CRepr]
	public struct IMMNotificationClient : IUnknown
	{
		public const new Guid IID = .(0x7991eec9, 0x7e89, 0x4d85, 0x83, 0x90, 0x6c, 0x70, 0x3c, 0xec, 0x60, 0xc0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnDeviceStateChanged(PWSTR pwstrDeviceId, uint32 dwNewState) mut => VT.OnDeviceStateChanged(ref this, pwstrDeviceId, dwNewState);
		public HRESULT OnDeviceAdded(PWSTR pwstrDeviceId) mut => VT.OnDeviceAdded(ref this, pwstrDeviceId);
		public HRESULT OnDeviceRemoved(PWSTR pwstrDeviceId) mut => VT.OnDeviceRemoved(ref this, pwstrDeviceId);
		public HRESULT OnDefaultDeviceChanged(EDataFlow flow, ERole role, PWSTR pwstrDefaultDeviceId) mut => VT.OnDefaultDeviceChanged(ref this, flow, role, pwstrDefaultDeviceId);
		public HRESULT OnPropertyValueChanged(PWSTR pwstrDeviceId, PROPERTYKEY key) mut => VT.OnPropertyValueChanged(ref this, pwstrDeviceId, key);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMNotificationClient self, PWSTR pwstrDeviceId, uint32 dwNewState) OnDeviceStateChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMNotificationClient self, PWSTR pwstrDeviceId) OnDeviceAdded;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMNotificationClient self, PWSTR pwstrDeviceId) OnDeviceRemoved;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMNotificationClient self, EDataFlow flow, ERole role, PWSTR pwstrDefaultDeviceId) OnDefaultDeviceChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMNotificationClient self, PWSTR pwstrDeviceId, PROPERTYKEY key) OnPropertyValueChanged;
		}
	}
	[CRepr]
	public struct IMMDevice : IUnknown
	{
		public const new Guid IID = .(0xd666063f, 0x1587, 0x4e43, 0x81, 0xf1, 0xb9, 0x48, 0xe8, 0x07, 0x36, 0x3f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Activate(in Guid iid, uint32 dwClsCtx, PROPVARIANT* pActivationParams, void** ppInterface) mut => VT.Activate(ref this, iid, dwClsCtx, pActivationParams, ppInterface);
		public HRESULT OpenPropertyStore(uint32 stgmAccess, out IPropertyStore* ppProperties) mut => VT.OpenPropertyStore(ref this, stgmAccess, out ppProperties);
		public HRESULT GetId(out PWSTR ppstrId) mut => VT.GetId(ref this, out ppstrId);
		public HRESULT GetState(out uint32 pdwState) mut => VT.GetState(ref this, out pdwState);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDevice self, in Guid iid, uint32 dwClsCtx, PROPVARIANT* pActivationParams, void** ppInterface) Activate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDevice self, uint32 stgmAccess, out IPropertyStore* ppProperties) OpenPropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDevice self, out PWSTR ppstrId) GetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDevice self, out uint32 pdwState) GetState;
		}
	}
	[CRepr]
	public struct IMMDeviceCollection : IUnknown
	{
		public const new Guid IID = .(0x0bd7a1be, 0x7a1a, 0x44db, 0x83, 0x97, 0xcc, 0x53, 0x92, 0x38, 0x7b, 0x5e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out uint32 pcDevices) mut => VT.GetCount(ref this, out pcDevices);
		public HRESULT Item(uint32 nDevice, out IMMDevice* ppDevice) mut => VT.Item(ref this, nDevice, out ppDevice);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceCollection self, out uint32 pcDevices) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceCollection self, uint32 nDevice, out IMMDevice* ppDevice) Item;
		}
	}
	[CRepr]
	public struct IMMEndpoint : IUnknown
	{
		public const new Guid IID = .(0x1be09788, 0x6894, 0x4089, 0x85, 0x86, 0x9a, 0x2a, 0x6c, 0x26, 0x5a, 0xc5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDataFlow(out EDataFlow pDataFlow) mut => VT.GetDataFlow(ref this, out pDataFlow);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMEndpoint self, out EDataFlow pDataFlow) GetDataFlow;
		}
	}
	[CRepr]
	public struct IMMDeviceEnumerator : IUnknown
	{
		public const new Guid IID = .(0xa95664d2, 0x9614, 0x4f35, 0xa7, 0x46, 0xde, 0x8d, 0xb6, 0x36, 0x17, 0xe6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumAudioEndpoints(EDataFlow dataFlow, uint32 dwStateMask, out IMMDeviceCollection* ppDevices) mut => VT.EnumAudioEndpoints(ref this, dataFlow, dwStateMask, out ppDevices);
		public HRESULT GetDefaultAudioEndpoint(EDataFlow dataFlow, ERole role, out IMMDevice* ppEndpoint) mut => VT.GetDefaultAudioEndpoint(ref this, dataFlow, role, out ppEndpoint);
		public HRESULT GetDevice(PWSTR pwstrId, out IMMDevice* ppDevice) mut => VT.GetDevice(ref this, pwstrId, out ppDevice);
		public HRESULT RegisterEndpointNotificationCallback(ref IMMNotificationClient pClient) mut => VT.RegisterEndpointNotificationCallback(ref this, ref pClient);
		public HRESULT UnregisterEndpointNotificationCallback(ref IMMNotificationClient pClient) mut => VT.UnregisterEndpointNotificationCallback(ref this, ref pClient);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceEnumerator self, EDataFlow dataFlow, uint32 dwStateMask, out IMMDeviceCollection* ppDevices) EnumAudioEndpoints;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceEnumerator self, EDataFlow dataFlow, ERole role, out IMMDevice* ppEndpoint) GetDefaultAudioEndpoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceEnumerator self, PWSTR pwstrId, out IMMDevice* ppDevice) GetDevice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceEnumerator self, ref IMMNotificationClient pClient) RegisterEndpointNotificationCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceEnumerator self, ref IMMNotificationClient pClient) UnregisterEndpointNotificationCallback;
		}
	}
	[CRepr]
	public struct IMMDeviceActivator : IUnknown
	{
		public const new Guid IID = .(0x3b0d0ea4, 0xd0a9, 0x4b0e, 0x93, 0x5b, 0x09, 0x51, 0x67, 0x46, 0xfa, 0xc0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Activate(in Guid iid, ref IMMDevice pDevice, PROPVARIANT* pActivationParams, void** ppInterface) mut => VT.Activate(ref this, iid, ref pDevice, pActivationParams, ppInterface);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMMDeviceActivator self, in Guid iid, ref IMMDevice pDevice, PROPVARIANT* pActivationParams, void** ppInterface) Activate;
		}
	}
	[CRepr]
	public struct IActivateAudioInterfaceCompletionHandler : IUnknown
	{
		public const new Guid IID = .(0x41d949ab, 0x9862, 0x444a, 0x80, 0xf6, 0xc2, 0x61, 0x33, 0x4d, 0xa5, 0xeb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateCompleted(ref IActivateAudioInterfaceAsyncOperation activateOperation) mut => VT.ActivateCompleted(ref this, ref activateOperation);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActivateAudioInterfaceCompletionHandler self, ref IActivateAudioInterfaceAsyncOperation activateOperation) ActivateCompleted;
		}
	}
	[CRepr]
	public struct IActivateAudioInterfaceAsyncOperation : IUnknown
	{
		public const new Guid IID = .(0x72a22d78, 0xcde4, 0x431d, 0xb8, 0xcc, 0x84, 0x3a, 0x71, 0x19, 0x9b, 0x6d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetActivateResult(out HRESULT activateResult, IUnknown** activatedInterface) mut => VT.GetActivateResult(ref this, out activateResult, activatedInterface);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActivateAudioInterfaceAsyncOperation self, out HRESULT activateResult, IUnknown** activatedInterface) GetActivateResult;
		}
	}
	[CRepr]
	public struct IAudioSystemEffectsPropertyChangeNotificationClient : IUnknown
	{
		public const new Guid IID = .(0x20049d40, 0x56d5, 0x400e, 0xa2, 0xef, 0x38, 0x55, 0x99, 0xfe, 0xed, 0x49);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnPropertyChanged(__MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 type, PROPERTYKEY key) mut => VT.OnPropertyChanged(ref this, type, key);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyChangeNotificationClient self, __MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 type, PROPERTYKEY key) OnPropertyChanged;
		}
	}
	[CRepr]
	public struct IAudioSystemEffectsPropertyStore : IUnknown
	{
		public const new Guid IID = .(0x302ae7f9, 0xd7e0, 0x43e4, 0x97, 0x1b, 0x1f, 0x82, 0x93, 0x61, 0x3d, 0x2a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OpenDefaultPropertyStore(uint32 stgmAccess, out IPropertyStore* propStore) mut => VT.OpenDefaultPropertyStore(ref this, stgmAccess, out propStore);
		public HRESULT OpenUserPropertyStore(uint32 stgmAccess, out IPropertyStore* propStore) mut => VT.OpenUserPropertyStore(ref this, stgmAccess, out propStore);
		public HRESULT OpenVolatilePropertyStore(uint32 stgmAccess, out IPropertyStore* propStore) mut => VT.OpenVolatilePropertyStore(ref this, stgmAccess, out propStore);
		public HRESULT ResetUserPropertyStore() mut => VT.ResetUserPropertyStore(ref this);
		public HRESULT ResetVolatilePropertyStore() mut => VT.ResetVolatilePropertyStore(ref this);
		public HRESULT RegisterPropertyChangeNotification(ref IAudioSystemEffectsPropertyChangeNotificationClient callback) mut => VT.RegisterPropertyChangeNotification(ref this, ref callback);
		public HRESULT UnregisterPropertyChangeNotification(ref IAudioSystemEffectsPropertyChangeNotificationClient callback) mut => VT.UnregisterPropertyChangeNotification(ref this, ref callback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self, uint32 stgmAccess, out IPropertyStore* propStore) OpenDefaultPropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self, uint32 stgmAccess, out IPropertyStore* propStore) OpenUserPropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self, uint32 stgmAccess, out IPropertyStore* propStore) OpenVolatilePropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self) ResetUserPropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self) ResetVolatilePropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self, ref IAudioSystemEffectsPropertyChangeNotificationClient callback) RegisterPropertyChangeNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsPropertyStore self, ref IAudioSystemEffectsPropertyChangeNotificationClient callback) UnregisterPropertyChangeNotification;
		}
	}
	[CRepr]
	public struct IPerChannelDbLevel : IUnknown
	{
		public const new Guid IID = .(0xc2f8e001, 0xf205, 0x4bc9, 0x99, 0xbc, 0xc1, 0x3b, 0x1e, 0x04, 0x8c, 0xcb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetChannelCount(out uint32 pcChannels) mut => VT.GetChannelCount(ref this, out pcChannels);
		public HRESULT GetLevelRange(uint32 nChannel, out float pfMinLevelDB, out float pfMaxLevelDB, out float pfStepping) mut => VT.GetLevelRange(ref this, nChannel, out pfMinLevelDB, out pfMaxLevelDB, out pfStepping);
		public HRESULT GetLevel(uint32 nChannel, out float pfLevelDB) mut => VT.GetLevel(ref this, nChannel, out pfLevelDB);
		public HRESULT SetLevel(uint32 nChannel, float fLevelDB, Guid* pguidEventContext) mut => VT.SetLevel(ref this, nChannel, fLevelDB, pguidEventContext);
		public HRESULT SetLevelUniform(float fLevelDB, Guid* pguidEventContext) mut => VT.SetLevelUniform(ref this, fLevelDB, pguidEventContext);
		public HRESULT SetLevelAllChannels(float* aLevelsDB, uint32 cChannels, Guid* pguidEventContext) mut => VT.SetLevelAllChannels(ref this, aLevelsDB, cChannels, pguidEventContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerChannelDbLevel self, out uint32 pcChannels) GetChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerChannelDbLevel self, uint32 nChannel, out float pfMinLevelDB, out float pfMaxLevelDB, out float pfStepping) GetLevelRange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerChannelDbLevel self, uint32 nChannel, out float pfLevelDB) GetLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerChannelDbLevel self, uint32 nChannel, float fLevelDB, Guid* pguidEventContext) SetLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerChannelDbLevel self, float fLevelDB, Guid* pguidEventContext) SetLevelUniform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerChannelDbLevel self, float* aLevelsDB, uint32 cChannels, Guid* pguidEventContext) SetLevelAllChannels;
		}
	}
	[CRepr]
	public struct IAudioVolumeLevel : IPerChannelDbLevel
	{
		public const new Guid IID = .(0x7fb7b48f, 0x531d, 0x44a2, 0xbc, 0xb3, 0x5a, 0xd5, 0xa1, 0x34, 0xb3, 0xdc);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IPerChannelDbLevel.VTable {}
	}
	[CRepr]
	public struct IAudioChannelConfig : IUnknown
	{
		public const new Guid IID = .(0xbb11c46f, 0xec28, 0x493c, 0xb8, 0x8a, 0x5d, 0xb8, 0x80, 0x62, 0xce, 0x98);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetChannelConfig(uint32 dwConfig, Guid* pguidEventContext) mut => VT.SetChannelConfig(ref this, dwConfig, pguidEventContext);
		public HRESULT GetChannelConfig(out uint32 pdwConfig) mut => VT.GetChannelConfig(ref this, out pdwConfig);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioChannelConfig self, uint32 dwConfig, Guid* pguidEventContext) SetChannelConfig;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioChannelConfig self, out uint32 pdwConfig) GetChannelConfig;
		}
	}
	[CRepr]
	public struct IAudioLoudness : IUnknown
	{
		public const new Guid IID = .(0x7d8b1437, 0xdd53, 0x4350, 0x9c, 0x1b, 0x1e, 0xe2, 0x89, 0x0b, 0xd9, 0x38);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetEnabled(out BOOL pbEnabled) mut => VT.GetEnabled(ref this, out pbEnabled);
		public HRESULT SetEnabled(BOOL bEnable, Guid* pguidEventContext) mut => VT.SetEnabled(ref this, bEnable, pguidEventContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioLoudness self, out BOOL pbEnabled) GetEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioLoudness self, BOOL bEnable, Guid* pguidEventContext) SetEnabled;
		}
	}
	[CRepr]
	public struct IAudioInputSelector : IUnknown
	{
		public const new Guid IID = .(0x4f03dc02, 0x5e6e, 0x4653, 0x8f, 0x72, 0xa0, 0x30, 0xc1, 0x23, 0xd5, 0x98);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSelection(out uint32 pnIdSelected) mut => VT.GetSelection(ref this, out pnIdSelected);
		public HRESULT SetSelection(uint32 nIdSelect, Guid* pguidEventContext) mut => VT.SetSelection(ref this, nIdSelect, pguidEventContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioInputSelector self, out uint32 pnIdSelected) GetSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioInputSelector self, uint32 nIdSelect, Guid* pguidEventContext) SetSelection;
		}
	}
	[CRepr]
	public struct IAudioOutputSelector : IUnknown
	{
		public const new Guid IID = .(0xbb515f69, 0x94a7, 0x429e, 0x8b, 0x9c, 0x27, 0x1b, 0x3f, 0x11, 0xa3, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSelection(out uint32 pnIdSelected) mut => VT.GetSelection(ref this, out pnIdSelected);
		public HRESULT SetSelection(uint32 nIdSelect, Guid* pguidEventContext) mut => VT.SetSelection(ref this, nIdSelect, pguidEventContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioOutputSelector self, out uint32 pnIdSelected) GetSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioOutputSelector self, uint32 nIdSelect, Guid* pguidEventContext) SetSelection;
		}
	}
	[CRepr]
	public struct IAudioMute : IUnknown
	{
		public const new Guid IID = .(0xdf45aeea, 0xb74a, 0x4b6b, 0xaf, 0xad, 0x23, 0x66, 0xb6, 0xaa, 0x01, 0x2e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMute(BOOL bMuted, Guid* pguidEventContext) mut => VT.SetMute(ref this, bMuted, pguidEventContext);
		public HRESULT GetMute(out BOOL pbMuted) mut => VT.GetMute(ref this, out pbMuted);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMute self, BOOL bMuted, Guid* pguidEventContext) SetMute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMute self, out BOOL pbMuted) GetMute;
		}
	}
	[CRepr]
	public struct IAudioBass : IPerChannelDbLevel
	{
		public const new Guid IID = .(0xa2b1a1d9, 0x4db3, 0x425d, 0xa2, 0xb2, 0xbd, 0x33, 0x5c, 0xb3, 0xe2, 0xe5);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IPerChannelDbLevel.VTable {}
	}
	[CRepr]
	public struct IAudioMidrange : IPerChannelDbLevel
	{
		public const new Guid IID = .(0x5e54b6d7, 0xb44b, 0x40d9, 0x9a, 0x9e, 0xe6, 0x91, 0xd9, 0xce, 0x6e, 0xdf);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IPerChannelDbLevel.VTable {}
	}
	[CRepr]
	public struct IAudioTreble : IPerChannelDbLevel
	{
		public const new Guid IID = .(0x0a717812, 0x694e, 0x4907, 0xb7, 0x4b, 0xba, 0xfa, 0x5c, 0xfd, 0xca, 0x7b);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IPerChannelDbLevel.VTable {}
	}
	[CRepr]
	public struct IAudioAutoGainControl : IUnknown
	{
		public const new Guid IID = .(0x85401fd4, 0x6de4, 0x4b9d, 0x98, 0x69, 0x2d, 0x67, 0x53, 0xa8, 0x2f, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetEnabled(out BOOL pbEnabled) mut => VT.GetEnabled(ref this, out pbEnabled);
		public HRESULT SetEnabled(BOOL bEnable, Guid* pguidEventContext) mut => VT.SetEnabled(ref this, bEnable, pguidEventContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioAutoGainControl self, out BOOL pbEnabled) GetEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioAutoGainControl self, BOOL bEnable, Guid* pguidEventContext) SetEnabled;
		}
	}
	[CRepr]
	public struct IAudioPeakMeter : IUnknown
	{
		public const new Guid IID = .(0xdd79923c, 0x0599, 0x45e0, 0xb8, 0xb6, 0xc8, 0xdf, 0x7d, 0xb6, 0xe7, 0x96);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetChannelCount(out uint32 pcChannels) mut => VT.GetChannelCount(ref this, out pcChannels);
		public HRESULT GetLevel(uint32 nChannel, out float pfLevel) mut => VT.GetLevel(ref this, nChannel, out pfLevel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioPeakMeter self, out uint32 pcChannels) GetChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioPeakMeter self, uint32 nChannel, out float pfLevel) GetLevel;
		}
	}
	[CRepr]
	public struct IDeviceSpecificProperty : IUnknown
	{
		public const new Guid IID = .(0x3b22bcbf, 0x2586, 0x4af0, 0x85, 0x83, 0x20, 0x5d, 0x39, 0x1b, 0x80, 0x7c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ComGetType(out uint16 pVType) mut => VT.ComGetType(ref this, out pVType);
		public HRESULT GetValue(void* pvValue, out uint32 pcbValue) mut => VT.GetValue(ref this, pvValue, out pcbValue);
		public HRESULT SetValue(void* pvValue, uint32 cbValue, Guid* pguidEventContext) mut => VT.SetValue(ref this, pvValue, cbValue, pguidEventContext);
		public HRESULT Get4BRange(out int32 plMin, out int32 plMax, out int32 plStepping) mut => VT.Get4BRange(ref this, out plMin, out plMax, out plStepping);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceSpecificProperty self, out uint16 pVType) ComGetType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceSpecificProperty self, void* pvValue, out uint32 pcbValue) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceSpecificProperty self, void* pvValue, uint32 cbValue, Guid* pguidEventContext) SetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceSpecificProperty self, out int32 plMin, out int32 plMax, out int32 plStepping) Get4BRange;
		}
	}
	[CRepr]
	public struct IPartsList : IUnknown
	{
		public const new Guid IID = .(0x6daa848c, 0x5eb0, 0x45cc, 0xae, 0xa5, 0x99, 0x8a, 0x2c, 0xda, 0x1f, 0xfb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out uint32 pCount) mut => VT.GetCount(ref this, out pCount);
		public HRESULT GetPart(uint32 nIndex, out IPart* ppPart) mut => VT.GetPart(ref this, nIndex, out ppPart);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPartsList self, out uint32 pCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPartsList self, uint32 nIndex, out IPart* ppPart) GetPart;
		}
	}
	[CRepr]
	public struct IPart : IUnknown
	{
		public const new Guid IID = .(0xae2de0e4, 0x5bca, 0x4f2d, 0xaa, 0x46, 0x5d, 0x13, 0xf8, 0xfd, 0xb3, 0xa9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetName(out PWSTR ppwstrName) mut => VT.GetName(ref this, out ppwstrName);
		public HRESULT GetLocalId(out uint32 pnId) mut => VT.GetLocalId(ref this, out pnId);
		public HRESULT GetGlobalId(out PWSTR ppwstrGlobalId) mut => VT.GetGlobalId(ref this, out ppwstrGlobalId);
		public HRESULT GetPartType(out PartType pPartType) mut => VT.GetPartType(ref this, out pPartType);
		public HRESULT GetSubType(out Guid pSubType) mut => VT.GetSubType(ref this, out pSubType);
		public HRESULT GetControlInterfaceCount(out uint32 pCount) mut => VT.GetControlInterfaceCount(ref this, out pCount);
		public HRESULT GetControlInterface(uint32 nIndex, out IControlInterface* ppInterfaceDesc) mut => VT.GetControlInterface(ref this, nIndex, out ppInterfaceDesc);
		public HRESULT EnumPartsIncoming(out IPartsList* ppParts) mut => VT.EnumPartsIncoming(ref this, out ppParts);
		public HRESULT EnumPartsOutgoing(out IPartsList* ppParts) mut => VT.EnumPartsOutgoing(ref this, out ppParts);
		public HRESULT GetTopologyObject(out IDeviceTopology* ppTopology) mut => VT.GetTopologyObject(ref this, out ppTopology);
		public HRESULT Activate(uint32 dwClsContext, in Guid refiid, void** ppvObject) mut => VT.Activate(ref this, dwClsContext, refiid, ppvObject);
		public HRESULT RegisterControlChangeCallback(in Guid riid, ref IControlChangeNotify pNotify) mut => VT.RegisterControlChangeCallback(ref this, riid, ref pNotify);
		public HRESULT UnregisterControlChangeCallback(ref IControlChangeNotify pNotify) mut => VT.UnregisterControlChangeCallback(ref this, ref pNotify);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out PWSTR ppwstrName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out uint32 pnId) GetLocalId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out PWSTR ppwstrGlobalId) GetGlobalId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out PartType pPartType) GetPartType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out Guid pSubType) GetSubType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out uint32 pCount) GetControlInterfaceCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, uint32 nIndex, out IControlInterface* ppInterfaceDesc) GetControlInterface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out IPartsList* ppParts) EnumPartsIncoming;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out IPartsList* ppParts) EnumPartsOutgoing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, out IDeviceTopology* ppTopology) GetTopologyObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, uint32 dwClsContext, in Guid refiid, void** ppvObject) Activate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, in Guid riid, ref IControlChangeNotify pNotify) RegisterControlChangeCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPart self, ref IControlChangeNotify pNotify) UnregisterControlChangeCallback;
		}
	}
	[CRepr]
	public struct IConnector : IUnknown
	{
		public const new Guid IID = .(0x9c2c4058, 0x23f5, 0x41de, 0x87, 0x7a, 0xdf, 0x3a, 0xf2, 0x36, 0xa0, 0x9e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ComGetType(out ConnectorType pType) mut => VT.ComGetType(ref this, out pType);
		public HRESULT GetDataFlow(out DataFlow pFlow) mut => VT.GetDataFlow(ref this, out pFlow);
		public HRESULT ConnectTo(ref IConnector pConnectTo) mut => VT.ConnectTo(ref this, ref pConnectTo);
		public HRESULT Disconnect() mut => VT.Disconnect(ref this);
		public HRESULT IsConnected(out BOOL pbConnected) mut => VT.IsConnected(ref this, out pbConnected);
		public HRESULT GetConnectedTo(out IConnector* ppConTo) mut => VT.GetConnectedTo(ref this, out ppConTo);
		public HRESULT GetConnectorIdConnectedTo(out PWSTR ppwstrConnectorId) mut => VT.GetConnectorIdConnectedTo(ref this, out ppwstrConnectorId);
		public HRESULT GetDeviceIdConnectedTo(out PWSTR ppwstrDeviceId) mut => VT.GetDeviceIdConnectedTo(ref this, out ppwstrDeviceId);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, out ConnectorType pType) ComGetType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, out DataFlow pFlow) GetDataFlow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, ref IConnector pConnectTo) ConnectTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self) Disconnect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, out BOOL pbConnected) IsConnected;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, out IConnector* ppConTo) GetConnectedTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, out PWSTR ppwstrConnectorId) GetConnectorIdConnectedTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnector self, out PWSTR ppwstrDeviceId) GetDeviceIdConnectedTo;
		}
	}
	[CRepr]
	public struct ISubunit : IUnknown
	{
		public const new Guid IID = .(0x82149a85, 0xdba6, 0x4487, 0x86, 0xbb, 0xea, 0x8f, 0x7f, 0xef, 0xcc, 0x71);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IControlInterface : IUnknown
	{
		public const new Guid IID = .(0x45d37c3f, 0x5140, 0x444a, 0xae, 0x24, 0x40, 0x07, 0x89, 0xf3, 0xcb, 0xf3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetName(out PWSTR ppwstrName) mut => VT.GetName(ref this, out ppwstrName);
		public HRESULT GetIID(out Guid pIID) mut => VT.GetIID(ref this, out pIID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IControlInterface self, out PWSTR ppwstrName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IControlInterface self, out Guid pIID) GetIID;
		}
	}
	[CRepr]
	public struct IControlChangeNotify : IUnknown
	{
		public const new Guid IID = .(0xa09513ed, 0xc709, 0x4d21, 0xbd, 0x7b, 0x5f, 0x34, 0xc4, 0x7f, 0x39, 0x47);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnNotify(uint32 dwSenderProcessId, Guid* pguidEventContext) mut => VT.OnNotify(ref this, dwSenderProcessId, pguidEventContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IControlChangeNotify self, uint32 dwSenderProcessId, Guid* pguidEventContext) OnNotify;
		}
	}
	[CRepr]
	public struct IDeviceTopology : IUnknown
	{
		public const new Guid IID = .(0x2a07407e, 0x6497, 0x4a18, 0x97, 0x87, 0x32, 0xf7, 0x9b, 0xd0, 0xd9, 0x8f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetConnectorCount(out uint32 pCount) mut => VT.GetConnectorCount(ref this, out pCount);
		public HRESULT GetConnector(uint32 nIndex, out IConnector* ppConnector) mut => VT.GetConnector(ref this, nIndex, out ppConnector);
		public HRESULT GetSubunitCount(out uint32 pCount) mut => VT.GetSubunitCount(ref this, out pCount);
		public HRESULT GetSubunit(uint32 nIndex, out ISubunit* ppSubunit) mut => VT.GetSubunit(ref this, nIndex, out ppSubunit);
		public HRESULT GetPartById(uint32 nId, out IPart* ppPart) mut => VT.GetPartById(ref this, nId, out ppPart);
		public HRESULT GetDeviceId(out PWSTR ppwstrDeviceId) mut => VT.GetDeviceId(ref this, out ppwstrDeviceId);
		public HRESULT GetSignalPath(ref IPart pIPartFrom, ref IPart pIPartTo, BOOL bRejectMixedPaths, out IPartsList* ppParts) mut => VT.GetSignalPath(ref this, ref pIPartFrom, ref pIPartTo, bRejectMixedPaths, out ppParts);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, out uint32 pCount) GetConnectorCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, uint32 nIndex, out IConnector* ppConnector) GetConnector;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, out uint32 pCount) GetSubunitCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, uint32 nIndex, out ISubunit* ppSubunit) GetSubunit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, uint32 nId, out IPart* ppPart) GetPartById;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, out PWSTR ppwstrDeviceId) GetDeviceId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceTopology self, ref IPart pIPartFrom, ref IPart pIPartTo, BOOL bRejectMixedPaths, out IPartsList* ppParts) GetSignalPath;
		}
	}
	[CRepr]
	public struct IAudioSessionEvents : IUnknown
	{
		public const new Guid IID = .(0x24918acc, 0x64b3, 0x37c1, 0x8c, 0xa9, 0x74, 0xa6, 0x6e, 0x99, 0x57, 0xa8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnDisplayNameChanged(PWSTR NewDisplayName, in Guid EventContext) mut => VT.OnDisplayNameChanged(ref this, NewDisplayName, EventContext);
		public HRESULT OnIconPathChanged(PWSTR NewIconPath, in Guid EventContext) mut => VT.OnIconPathChanged(ref this, NewIconPath, EventContext);
		public HRESULT OnSimpleVolumeChanged(float NewVolume, BOOL NewMute, in Guid EventContext) mut => VT.OnSimpleVolumeChanged(ref this, NewVolume, NewMute, EventContext);
		public HRESULT OnChannelVolumeChanged(uint32 ChannelCount, float* NewChannelVolumeArray, uint32 ChangedChannel, in Guid EventContext) mut => VT.OnChannelVolumeChanged(ref this, ChannelCount, NewChannelVolumeArray, ChangedChannel, EventContext);
		public HRESULT OnGroupingParamChanged(in Guid NewGroupingParam, in Guid EventContext) mut => VT.OnGroupingParamChanged(ref this, NewGroupingParam, EventContext);
		public HRESULT OnStateChanged(AudioSessionState NewState) mut => VT.OnStateChanged(ref this, NewState);
		public HRESULT OnSessionDisconnected(AudioSessionDisconnectReason DisconnectReason) mut => VT.OnSessionDisconnected(ref this, DisconnectReason);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, PWSTR NewDisplayName, in Guid EventContext) OnDisplayNameChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, PWSTR NewIconPath, in Guid EventContext) OnIconPathChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, float NewVolume, BOOL NewMute, in Guid EventContext) OnSimpleVolumeChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, uint32 ChannelCount, float* NewChannelVolumeArray, uint32 ChangedChannel, in Guid EventContext) OnChannelVolumeChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, in Guid NewGroupingParam, in Guid EventContext) OnGroupingParamChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, AudioSessionState NewState) OnStateChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEvents self, AudioSessionDisconnectReason DisconnectReason) OnSessionDisconnected;
		}
	}
	[CRepr]
	public struct IAudioSessionControl : IUnknown
	{
		public const new Guid IID = .(0xf4b1a599, 0x7266, 0x4319, 0xa8, 0xca, 0xe7, 0x0a, 0xcb, 0x11, 0xe8, 0xcd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetState(out AudioSessionState pRetVal) mut => VT.GetState(ref this, out pRetVal);
		public HRESULT GetDisplayName(out PWSTR pRetVal) mut => VT.GetDisplayName(ref this, out pRetVal);
		public HRESULT SetDisplayName(PWSTR Value, in Guid EventContext) mut => VT.SetDisplayName(ref this, Value, EventContext);
		public HRESULT GetIconPath(out PWSTR pRetVal) mut => VT.GetIconPath(ref this, out pRetVal);
		public HRESULT SetIconPath(PWSTR Value, in Guid EventContext) mut => VT.SetIconPath(ref this, Value, EventContext);
		public HRESULT GetGroupingParam(out Guid pRetVal) mut => VT.GetGroupingParam(ref this, out pRetVal);
		public HRESULT SetGroupingParam(in Guid Override, in Guid EventContext) mut => VT.SetGroupingParam(ref this, Override, EventContext);
		public HRESULT RegisterAudioSessionNotification(ref IAudioSessionEvents NewNotifications) mut => VT.RegisterAudioSessionNotification(ref this, ref NewNotifications);
		public HRESULT UnregisterAudioSessionNotification(ref IAudioSessionEvents NewNotifications) mut => VT.UnregisterAudioSessionNotification(ref this, ref NewNotifications);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, out AudioSessionState pRetVal) GetState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, out PWSTR pRetVal) GetDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, PWSTR Value, in Guid EventContext) SetDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, out PWSTR pRetVal) GetIconPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, PWSTR Value, in Guid EventContext) SetIconPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, out Guid pRetVal) GetGroupingParam;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, in Guid Override, in Guid EventContext) SetGroupingParam;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, ref IAudioSessionEvents NewNotifications) RegisterAudioSessionNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl self, ref IAudioSessionEvents NewNotifications) UnregisterAudioSessionNotification;
		}
	}
	[CRepr]
	public struct IAudioSessionControl2 : IAudioSessionControl
	{
		public const new Guid IID = .(0xbfb7ff88, 0x7239, 0x4fc9, 0x8f, 0xa2, 0x07, 0xc9, 0x50, 0xbe, 0x9c, 0x6d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSessionIdentifier(out PWSTR pRetVal) mut => VT.GetSessionIdentifier(ref this, out pRetVal);
		public HRESULT GetSessionInstanceIdentifier(out PWSTR pRetVal) mut => VT.GetSessionInstanceIdentifier(ref this, out pRetVal);
		public HRESULT GetProcessId(out uint32 pRetVal) mut => VT.GetProcessId(ref this, out pRetVal);
		public HRESULT IsSystemSoundsSession() mut => VT.IsSystemSoundsSession(ref this);
		public HRESULT SetDuckingPreference(BOOL optOut) mut => VT.SetDuckingPreference(ref this, optOut);

		[CRepr]
		public struct VTable : IAudioSessionControl.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl2 self, out PWSTR pRetVal) GetSessionIdentifier;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl2 self, out PWSTR pRetVal) GetSessionInstanceIdentifier;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl2 self, out uint32 pRetVal) GetProcessId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl2 self) IsSystemSoundsSession;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionControl2 self, BOOL optOut) SetDuckingPreference;
		}
	}
	[CRepr]
	public struct IAudioSessionManager : IUnknown
	{
		public const new Guid IID = .(0xbfa971f1, 0x4d5e, 0x40bb, 0x93, 0x5e, 0x96, 0x70, 0x39, 0xbf, 0xbe, 0xe4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAudioSessionControl(Guid* AudioSessionGuid, uint32 StreamFlags, out IAudioSessionControl* SessionControl) mut => VT.GetAudioSessionControl(ref this, AudioSessionGuid, StreamFlags, out SessionControl);
		public HRESULT GetSimpleAudioVolume(Guid* AudioSessionGuid, uint32 StreamFlags, out ISimpleAudioVolume* AudioVolume) mut => VT.GetSimpleAudioVolume(ref this, AudioSessionGuid, StreamFlags, out AudioVolume);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager self, Guid* AudioSessionGuid, uint32 StreamFlags, out IAudioSessionControl* SessionControl) GetAudioSessionControl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager self, Guid* AudioSessionGuid, uint32 StreamFlags, out ISimpleAudioVolume* AudioVolume) GetSimpleAudioVolume;
		}
	}
	[CRepr]
	public struct IAudioVolumeDuckNotification : IUnknown
	{
		public const new Guid IID = .(0xc3b284d4, 0x6d39, 0x4359, 0xb3, 0xcf, 0xb5, 0x6d, 0xdb, 0x3b, 0xb3, 0x9c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnVolumeDuckNotification(PWSTR sessionID, uint32 countCommunicationSessions) mut => VT.OnVolumeDuckNotification(ref this, sessionID, countCommunicationSessions);
		public HRESULT OnVolumeUnduckNotification(PWSTR sessionID) mut => VT.OnVolumeUnduckNotification(ref this, sessionID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioVolumeDuckNotification self, PWSTR sessionID, uint32 countCommunicationSessions) OnVolumeDuckNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioVolumeDuckNotification self, PWSTR sessionID) OnVolumeUnduckNotification;
		}
	}
	[CRepr]
	public struct IAudioSessionNotification : IUnknown
	{
		public const new Guid IID = .(0x641dd20b, 0x4d41, 0x49cc, 0xab, 0xa3, 0x17, 0x4b, 0x94, 0x77, 0xbb, 0x08);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnSessionCreated(ref IAudioSessionControl NewSession) mut => VT.OnSessionCreated(ref this, ref NewSession);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionNotification self, ref IAudioSessionControl NewSession) OnSessionCreated;
		}
	}
	[CRepr]
	public struct IAudioSessionEnumerator : IUnknown
	{
		public const new Guid IID = .(0xe2f5bb11, 0x0570, 0x40ca, 0xac, 0xdd, 0x3a, 0xa0, 0x12, 0x77, 0xde, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out int32 SessionCount) mut => VT.GetCount(ref this, out SessionCount);
		public HRESULT GetSession(int32 SessionCount, out IAudioSessionControl* Session) mut => VT.GetSession(ref this, SessionCount, out Session);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEnumerator self, out int32 SessionCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionEnumerator self, int32 SessionCount, out IAudioSessionControl* Session) GetSession;
		}
	}
	[CRepr]
	public struct IAudioSessionManager2 : IAudioSessionManager
	{
		public const new Guid IID = .(0x77aa99a0, 0x1bd6, 0x484f, 0x8b, 0xc7, 0x2c, 0x65, 0x4c, 0x9a, 0x9b, 0x6f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSessionEnumerator(out IAudioSessionEnumerator* SessionEnum) mut => VT.GetSessionEnumerator(ref this, out SessionEnum);
		public HRESULT RegisterSessionNotification(ref IAudioSessionNotification SessionNotification) mut => VT.RegisterSessionNotification(ref this, ref SessionNotification);
		public HRESULT UnregisterSessionNotification(ref IAudioSessionNotification SessionNotification) mut => VT.UnregisterSessionNotification(ref this, ref SessionNotification);
		public HRESULT RegisterDuckNotification(PWSTR sessionID, ref IAudioVolumeDuckNotification duckNotification) mut => VT.RegisterDuckNotification(ref this, sessionID, ref duckNotification);
		public HRESULT UnregisterDuckNotification(ref IAudioVolumeDuckNotification duckNotification) mut => VT.UnregisterDuckNotification(ref this, ref duckNotification);

		[CRepr]
		public struct VTable : IAudioSessionManager.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager2 self, out IAudioSessionEnumerator* SessionEnum) GetSessionEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager2 self, ref IAudioSessionNotification SessionNotification) RegisterSessionNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager2 self, ref IAudioSessionNotification SessionNotification) UnregisterSessionNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager2 self, PWSTR sessionID, ref IAudioVolumeDuckNotification duckNotification) RegisterDuckNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSessionManager2 self, ref IAudioVolumeDuckNotification duckNotification) UnregisterDuckNotification;
		}
	}
	[CRepr]
	public struct ISpatialAudioMetadataItems : IUnknown
	{
		public const new Guid IID = .(0xbcd7c78f, 0x3098, 0x4f22, 0xb5, 0x47, 0xa2, 0xf2, 0x5a, 0x38, 0x12, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFrameCount(out uint16 frameCount) mut => VT.GetFrameCount(ref this, out frameCount);
		public HRESULT GetItemCount(out uint16 itemCount) mut => VT.GetItemCount(ref this, out itemCount);
		public HRESULT GetMaxItemCount(out uint16 maxItemCount) mut => VT.GetMaxItemCount(ref this, out maxItemCount);
		public HRESULT GetMaxValueBufferLength(out uint32 maxValueBufferLength) mut => VT.GetMaxValueBufferLength(ref this, out maxValueBufferLength);
		public HRESULT GetInfo(out SpatialAudioMetadataItemsInfo info) mut => VT.GetInfo(ref this, out info);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItems self, out uint16 frameCount) GetFrameCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItems self, out uint16 itemCount) GetItemCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItems self, out uint16 maxItemCount) GetMaxItemCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItems self, out uint32 maxValueBufferLength) GetMaxValueBufferLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItems self, out SpatialAudioMetadataItemsInfo info) GetInfo;
		}
	}
	[CRepr]
	public struct ISpatialAudioMetadataWriter : IUnknown
	{
		public const new Guid IID = .(0x1b17ca01, 0x2955, 0x444d, 0xa4, 0x30, 0x53, 0x7d, 0xc5, 0x89, 0xa8, 0x44);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open(ref ISpatialAudioMetadataItems metadataItems) mut => VT.Open(ref this, ref metadataItems);
		public HRESULT WriteNextItem(uint16 frameOffset) mut => VT.WriteNextItem(ref this, frameOffset);
		public HRESULT WriteNextItemCommand(uint8 commandID, void* valueBuffer, uint32 valueBufferLength) mut => VT.WriteNextItemCommand(ref this, commandID, valueBuffer, valueBufferLength);
		public HRESULT Close() mut => VT.Close(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataWriter self, ref ISpatialAudioMetadataItems metadataItems) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataWriter self, uint16 frameOffset) WriteNextItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataWriter self, uint8 commandID, void* valueBuffer, uint32 valueBufferLength) WriteNextItemCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataWriter self) Close;
		}
	}
	[CRepr]
	public struct ISpatialAudioMetadataReader : IUnknown
	{
		public const new Guid IID = .(0xb78e86a2, 0x31d9, 0x4c32, 0x94, 0xd2, 0x7d, 0xf4, 0x0f, 0xc7, 0xeb, 0xec);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open(ref ISpatialAudioMetadataItems metadataItems) mut => VT.Open(ref this, ref metadataItems);
		public HRESULT ReadNextItem(out uint8 commandCount, out uint16 frameOffset) mut => VT.ReadNextItem(ref this, out commandCount, out frameOffset);
		public HRESULT ReadNextItemCommand(out uint8 commandID, void* valueBuffer, uint32 maxValueBufferLength, out uint32 valueBufferLength) mut => VT.ReadNextItemCommand(ref this, out commandID, valueBuffer, maxValueBufferLength, out valueBufferLength);
		public HRESULT Close() mut => VT.Close(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataReader self, ref ISpatialAudioMetadataItems metadataItems) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataReader self, out uint8 commandCount, out uint16 frameOffset) ReadNextItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataReader self, out uint8 commandID, void* valueBuffer, uint32 maxValueBufferLength, out uint32 valueBufferLength) ReadNextItemCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataReader self) Close;
		}
	}
	[CRepr]
	public struct ISpatialAudioMetadataCopier : IUnknown
	{
		public const new Guid IID = .(0xd224b233, 0xe251, 0x4fd0, 0x9c, 0xa2, 0xd5, 0xec, 0xf9, 0xa6, 0x84, 0x04);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open(ref ISpatialAudioMetadataItems metadataItems) mut => VT.Open(ref this, ref metadataItems);
		public HRESULT CopyMetadataForFrames(uint16 copyFrameCount, SpatialAudioMetadataCopyMode copyMode, ref ISpatialAudioMetadataItems dstMetadataItems, out uint16 itemsCopied) mut => VT.CopyMetadataForFrames(ref this, copyFrameCount, copyMode, ref dstMetadataItems, out itemsCopied);
		public HRESULT Close() mut => VT.Close(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataCopier self, ref ISpatialAudioMetadataItems metadataItems) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataCopier self, uint16 copyFrameCount, SpatialAudioMetadataCopyMode copyMode, ref ISpatialAudioMetadataItems dstMetadataItems, out uint16 itemsCopied) CopyMetadataForFrames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataCopier self) Close;
		}
	}
	[CRepr]
	public struct ISpatialAudioMetadataItemsBuffer : IUnknown
	{
		public const new Guid IID = .(0x42640a16, 0xe1bd, 0x42d9, 0x9f, 0xf6, 0x03, 0x1a, 0xb7, 0x1a, 0x2d, 0xba);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AttachToBuffer(out uint8 buffer, uint32 bufferLength) mut => VT.AttachToBuffer(ref this, out buffer, bufferLength);
		public HRESULT AttachToPopulatedBuffer(out uint8 buffer, uint32 bufferLength) mut => VT.AttachToPopulatedBuffer(ref this, out buffer, bufferLength);
		public HRESULT DetachBuffer() mut => VT.DetachBuffer(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItemsBuffer self, out uint8 buffer, uint32 bufferLength) AttachToBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItemsBuffer self, out uint8 buffer, uint32 bufferLength) AttachToPopulatedBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataItemsBuffer self) DetachBuffer;
		}
	}
	[CRepr]
	public struct ISpatialAudioMetadataClient : IUnknown
	{
		public const new Guid IID = .(0x777d4a3b, 0xf6ff, 0x4a26, 0x85, 0xdc, 0x68, 0xd7, 0xcd, 0xed, 0xa1, 0xd4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateSpatialAudioMetadataItems(uint16 maxItemCount, uint16 frameCount, ISpatialAudioMetadataItemsBuffer** metadataItemsBuffer, out ISpatialAudioMetadataItems* metadataItems) mut => VT.ActivateSpatialAudioMetadataItems(ref this, maxItemCount, frameCount, metadataItemsBuffer, out metadataItems);
		public HRESULT GetSpatialAudioMetadataItemsBufferLength(uint16 maxItemCount, out uint32 bufferLength) mut => VT.GetSpatialAudioMetadataItemsBufferLength(ref this, maxItemCount, out bufferLength);
		public HRESULT ActivateSpatialAudioMetadataWriter(SpatialAudioMetadataWriterOverflowMode overflowMode, out ISpatialAudioMetadataWriter* metadataWriter) mut => VT.ActivateSpatialAudioMetadataWriter(ref this, overflowMode, out metadataWriter);
		public HRESULT ActivateSpatialAudioMetadataCopier(out ISpatialAudioMetadataCopier* metadataCopier) mut => VT.ActivateSpatialAudioMetadataCopier(ref this, out metadataCopier);
		public HRESULT ActivateSpatialAudioMetadataReader(out ISpatialAudioMetadataReader* metadataReader) mut => VT.ActivateSpatialAudioMetadataReader(ref this, out metadataReader);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataClient self, uint16 maxItemCount, uint16 frameCount, ISpatialAudioMetadataItemsBuffer** metadataItemsBuffer, out ISpatialAudioMetadataItems* metadataItems) ActivateSpatialAudioMetadataItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataClient self, uint16 maxItemCount, out uint32 bufferLength) GetSpatialAudioMetadataItemsBufferLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataClient self, SpatialAudioMetadataWriterOverflowMode overflowMode, out ISpatialAudioMetadataWriter* metadataWriter) ActivateSpatialAudioMetadataWriter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataClient self, out ISpatialAudioMetadataCopier* metadataCopier) ActivateSpatialAudioMetadataCopier;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioMetadataClient self, out ISpatialAudioMetadataReader* metadataReader) ActivateSpatialAudioMetadataReader;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectForMetadataCommands : ISpatialAudioObjectBase
	{
		public const new Guid IID = .(0x0df2c94b, 0xf5f9, 0x472d, 0xaf, 0x6b, 0xc4, 0x6e, 0x0a, 0xc9, 0xcd, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT WriteNextMetadataCommand(uint8 commandID, void* valueBuffer, uint32 valueBufferLength) mut => VT.WriteNextMetadataCommand(ref this, commandID, valueBuffer, valueBufferLength);

		[CRepr]
		public struct VTable : ISpatialAudioObjectBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForMetadataCommands self, uint8 commandID, void* valueBuffer, uint32 valueBufferLength) WriteNextMetadataCommand;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectForMetadataItems : ISpatialAudioObjectBase
	{
		public const new Guid IID = .(0xddea49ff, 0x3bc0, 0x4377, 0x8a, 0xad, 0x9f, 0xbc, 0xfd, 0x80, 0x85, 0x66);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSpatialAudioMetadataItems(out ISpatialAudioMetadataItems* metadataItems) mut => VT.GetSpatialAudioMetadataItems(ref this, out metadataItems);

		[CRepr]
		public struct VTable : ISpatialAudioObjectBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectForMetadataItems self, out ISpatialAudioMetadataItems* metadataItems) GetSpatialAudioMetadataItems;
		}
	}
	[CRepr]
	public struct ISpatialAudioObjectRenderStreamForMetadata : ISpatialAudioObjectRenderStreamBase
	{
		public const new Guid IID = .(0xbbc9c907, 0x48d5, 0x4a2e, 0xa0, 0xc7, 0xf7, 0xf0, 0xd6, 0x7c, 0x1f, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateSpatialAudioObjectForMetadataCommands(AudioObjectType type, out ISpatialAudioObjectForMetadataCommands* audioObject) mut => VT.ActivateSpatialAudioObjectForMetadataCommands(ref this, type, out audioObject);
		public HRESULT ActivateSpatialAudioObjectForMetadataItems(AudioObjectType type, out ISpatialAudioObjectForMetadataItems* audioObject) mut => VT.ActivateSpatialAudioObjectForMetadataItems(ref this, type, out audioObject);

		[CRepr]
		public struct VTable : ISpatialAudioObjectRenderStreamBase.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamForMetadata self, AudioObjectType type, out ISpatialAudioObjectForMetadataCommands* audioObject) ActivateSpatialAudioObjectForMetadataCommands;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpatialAudioObjectRenderStreamForMetadata self, AudioObjectType type, out ISpatialAudioObjectForMetadataItems* audioObject) ActivateSpatialAudioObjectForMetadataItems;
		}
	}
	[CRepr]
	public struct IAudioStateMonitor : IUnknown
	{
		public const new Guid IID = .(0x63bd8738, 0xe30d, 0x4c77, 0xbf, 0x5c, 0x83, 0x4e, 0x87, 0xc6, 0x57, 0xe2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterCallback(PAudioStateMonitorCallback callback, void* context, out int64 registration) mut => VT.RegisterCallback(ref this, callback, context, out registration);
		public void UnregisterCallback(int64 registration) mut => VT.UnregisterCallback(ref this, registration);
		public AudioStateMonitorSoundLevel GetSoundLevel() mut => VT.GetSoundLevel(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioStateMonitor self, PAudioStateMonitorCallback callback, void* context, out int64 registration) RegisterCallback;
			public new function [CallingConvention(.Stdcall)] void(ref IAudioStateMonitor self, int64 registration) UnregisterCallback;
			public new function [CallingConvention(.Stdcall)] AudioStateMonitorSoundLevel(ref IAudioStateMonitor self) GetSoundLevel;
		}
	}
	#endregion
	
	#region Functions
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
	public static extern uint32 waveOutGetDevCapsA(uint uDeviceID, out WAVEOUTCAPSA pwoc, uint32 cbwoc);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetDevCapsW(uint uDeviceID, out WAVEOUTCAPSW pwoc, uint32 cbwoc);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetVolume(HWAVEOUT hwo, out uint32 pdwVolume);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutSetVolume(HWAVEOUT hwo, uint32 dwVolume);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutOpen(HWAVEOUT* phwo, uint32 uDeviceID, ref WAVEFORMATEX pwfx, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutClose(HWAVEOUT hwo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutPrepareHeader(HWAVEOUT hwo, out WAVEHDR pwh, uint32 cbwh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutUnprepareHeader(HWAVEOUT hwo, out WAVEHDR pwh, uint32 cbwh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutWrite(HWAVEOUT hwo, out WAVEHDR pwh, uint32 cbwh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutPause(HWAVEOUT hwo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutRestart(HWAVEOUT hwo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutReset(HWAVEOUT hwo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutBreakLoop(HWAVEOUT hwo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetPosition(HWAVEOUT hwo, out MMTIME pmmt, uint32 cbmmt);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetPitch(HWAVEOUT hwo, out uint32 pdwPitch);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutSetPitch(HWAVEOUT hwo, uint32 dwPitch);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetPlaybackRate(HWAVEOUT hwo, out uint32 pdwRate);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutSetPlaybackRate(HWAVEOUT hwo, uint32 dwRate);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutGetID(HWAVEOUT hwo, out uint32 puDeviceID);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveOutMessage(HWAVEOUT hwo, uint32 uMsg, uint dw1, uint dw2);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetNumDevs();
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetDevCapsA(uint uDeviceID, out WAVEINCAPSA pwic, uint32 cbwic);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetDevCapsW(uint uDeviceID, out WAVEINCAPSW pwic, uint32 cbwic);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInOpen(HWAVEIN* phwi, uint32 uDeviceID, ref WAVEFORMATEX pwfx, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInClose(HWAVEIN hwi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInPrepareHeader(HWAVEIN hwi, out WAVEHDR pwh, uint32 cbwh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInUnprepareHeader(HWAVEIN hwi, out WAVEHDR pwh, uint32 cbwh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInAddBuffer(HWAVEIN hwi, out WAVEHDR pwh, uint32 cbwh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInStart(HWAVEIN hwi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInStop(HWAVEIN hwi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInReset(HWAVEIN hwi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetPosition(HWAVEIN hwi, out MMTIME pmmt, uint32 cbmmt);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInGetID(HWAVEIN hwi, ref uint32 puDeviceID);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 waveInMessage(HWAVEIN hwi, uint32 uMsg, uint dw1, uint dw2);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutGetNumDevs();
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiStreamOpen(out HMIDISTRM phms, uint32* puDeviceID, uint32 cMidi, uint dwCallback, uint dwInstance, uint32 fdwOpen);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiStreamClose(HMIDISTRM hms);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiStreamProperty(HMIDISTRM hms, out uint8 lppropdata, uint32 dwProperty);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiStreamPosition(HMIDISTRM hms, out MMTIME lpmmt, uint32 cbmmt);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiStreamOut(HMIDISTRM hms, out MIDIHDR pmh, uint32 cbmh);
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
	public static extern uint32 midiOutGetDevCapsA(uint uDeviceID, out MIDIOUTCAPSA pmoc, uint32 cbmoc);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutGetDevCapsW(uint uDeviceID, out MIDIOUTCAPSW pmoc, uint32 cbmoc);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutGetVolume(HMIDIOUT hmo, out uint32 pdwVolume);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutSetVolume(HMIDIOUT hmo, uint32 dwVolume);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutOpen(out HMIDIOUT phmo, uint32 uDeviceID, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutClose(HMIDIOUT hmo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutPrepareHeader(HMIDIOUT hmo, out MIDIHDR pmh, uint32 cbmh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutUnprepareHeader(HMIDIOUT hmo, out MIDIHDR pmh, uint32 cbmh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutShortMsg(HMIDIOUT hmo, uint32 dwMsg);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutLongMsg(HMIDIOUT hmo, ref MIDIHDR pmh, uint32 cbmh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutReset(HMIDIOUT hmo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutCachePatches(HMIDIOUT hmo, uint32 uBank, uint16* pwpa, uint32 fuCache);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutCacheDrumPatches(HMIDIOUT hmo, uint32 uPatch, uint16* pwkya, uint32 fuCache);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutGetID(HMIDIOUT hmo, out uint32 puDeviceID);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiOutMessage(HMIDIOUT hmo, uint32 uMsg, uint dw1, uint dw2);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInGetNumDevs();
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInGetDevCapsA(uint uDeviceID, out MIDIINCAPSA pmic, uint32 cbmic);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInGetDevCapsW(uint uDeviceID, out MIDIINCAPSW pmic, uint32 cbmic);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInGetErrorTextA(uint32 mmrError, uint8* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInGetErrorTextW(uint32 mmrError, char16* pszText, uint32 cchText);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInOpen(out HMIDIIN phmi, uint32 uDeviceID, uint dwCallback, uint dwInstance, MIDI_WAVE_OPEN_TYPE fdwOpen);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInClose(HMIDIIN hmi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInPrepareHeader(HMIDIIN hmi, out MIDIHDR pmh, uint32 cbmh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInUnprepareHeader(HMIDIIN hmi, out MIDIHDR pmh, uint32 cbmh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInAddBuffer(HMIDIIN hmi, out MIDIHDR pmh, uint32 cbmh);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInStart(HMIDIIN hmi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInStop(HMIDIIN hmi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInReset(HMIDIIN hmi);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInGetID(HMIDIIN hmi, out uint32 puDeviceID);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 midiInMessage(HMIDIIN hmi, uint32 uMsg, uint dw1, uint dw2);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 auxGetNumDevs();
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 auxGetDevCapsA(uint uDeviceID, out AUXCAPSA pac, uint32 cbac);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 auxGetDevCapsW(uint uDeviceID, out AUXCAPSW pac, uint32 cbac);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 auxSetVolume(uint32 uDeviceID, uint32 dwVolume);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 auxGetVolume(uint32 uDeviceID, out uint32 pdwVolume);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 auxOutMessage(uint32 uDeviceID, uint32 uMsg, uint dw1, uint dw2);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetNumDevs();
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetDevCapsA(uint uMxId, out MIXERCAPSA pmxcaps, uint32 cbmxcaps);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetDevCapsW(uint uMxId, out MIXERCAPSW pmxcaps, uint32 cbmxcaps);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerOpen(int* phmx, uint32 uMxId, uint dwCallback, uint dwInstance, uint32 fdwOpen);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerClose(HMIXER hmx);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerMessage(HMIXER hmx, uint32 uMsg, uint dwParam1, uint dwParam2);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetLineInfoA(HMIXEROBJ hmxobj, out MIXERLINEA pmxl, uint32 fdwInfo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetLineInfoW(HMIXEROBJ hmxobj, out MIXERLINEW pmxl, uint32 fdwInfo);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetID(HMIXEROBJ hmxobj, out uint32 puMxId, uint32 fdwId);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetLineControlsA(HMIXEROBJ hmxobj, out MIXERLINECONTROLSA pmxlc, uint32 fdwControls);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetLineControlsW(HMIXEROBJ hmxobj, out MIXERLINECONTROLSW pmxlc, uint32 fdwControls);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetControlDetailsA(HMIXEROBJ hmxobj, out MIXERCONTROLDETAILS pmxcd, uint32 fdwDetails);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerGetControlDetailsW(HMIXEROBJ hmxobj, out MIXERCONTROLDETAILS pmxcd, uint32 fdwDetails);
	[Import("winmm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 mixerSetControlDetails(HMIXEROBJ hmxobj, ref MIXERCONTROLDETAILS pmxcd, uint32 fdwDetails);
	[Import("mmdevapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ActivateAudioInterfaceAsync(PWSTR deviceInterfacePath, in Guid riid, PROPVARIANT* activationParams, ref IActivateAudioInterfaceCompletionHandler completionHandler, out IActivateAudioInterfaceAsyncOperation* activationOperation);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateRenderAudioStateMonitor(out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateRenderAudioStateMonitorForCategory(AUDIO_STREAM_CATEGORY category, out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateRenderAudioStateMonitorForCategoryAndDeviceRole(AUDIO_STREAM_CATEGORY category, ERole role, out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateRenderAudioStateMonitorForCategoryAndDeviceId(AUDIO_STREAM_CATEGORY category, PWSTR deviceId, out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateCaptureAudioStateMonitor(out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateCaptureAudioStateMonitorForCategory(AUDIO_STREAM_CATEGORY category, out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateCaptureAudioStateMonitorForCategoryAndDeviceRole(AUDIO_STREAM_CATEGORY category, ERole role, out IAudioStateMonitor* audioStateMonitor);
	[Import("windows.media.mediacontrol.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateCaptureAudioStateMonitorForCategoryAndDeviceId(AUDIO_STREAM_CATEGORY category, PWSTR deviceId, out IAudioStateMonitor* audioStateMonitor);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmGetVersion();
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmMetrics(HACMOBJ hao, uint32 uMetric, void* pMetric);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverEnum(ACMDRIVERENUMCB fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverID(HACMOBJ hao, out int phadid, uint32 fdwDriverID);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverAddA(out int phadid, HINSTANCE hinstModule, LPARAM lParam, uint32 dwPriority, uint32 fdwAdd);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverAddW(out int phadid, HINSTANCE hinstModule, LPARAM lParam, uint32 dwPriority, uint32 fdwAdd);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverRemove(HACMDRIVERID hadid, uint32 fdwRemove);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverOpen(out int phad, HACMDRIVERID hadid, uint32 fdwOpen);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverClose(HACMDRIVER had, uint32 fdwClose);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT acmDriverMessage(HACMDRIVER had, uint32 uMsg, LPARAM lParam1, LPARAM lParam2);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverPriority(HACMDRIVERID hadid, uint32 dwPriority, uint32 fdwPriority);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverDetailsA(HACMDRIVERID hadid, out ACMDRIVERDETAILSA padd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmDriverDetailsW(HACMDRIVERID hadid, out ACMDRIVERDETAILSW padd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatTagDetailsA(HACMDRIVER had, out ACMFORMATTAGDETAILSA paftd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatTagDetailsW(HACMDRIVER had, out ACMFORMATTAGDETAILSW paftd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatTagEnumA(HACMDRIVER had, out ACMFORMATTAGDETAILSA paftd, ACMFORMATTAGENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatTagEnumW(HACMDRIVER had, out ACMFORMATTAGDETAILSW paftd, ACMFORMATTAGENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatDetailsA(HACMDRIVER had, out ACMFORMATDETAILSA pafd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatDetailsW(HACMDRIVER had, out tACMFORMATDETAILSW pafd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatEnumA(HACMDRIVER had, out ACMFORMATDETAILSA pafd, ACMFORMATENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatEnumW(HACMDRIVER had, out tACMFORMATDETAILSW pafd, ACMFORMATENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatSuggest(HACMDRIVER had, out WAVEFORMATEX pwfxSrc, out WAVEFORMATEX pwfxDst, uint32 cbwfxDst, uint32 fdwSuggest);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatChooseA(out ACMFORMATCHOOSEA pafmtc);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFormatChooseW(out ACMFORMATCHOOSEW pafmtc);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterTagDetailsA(HACMDRIVER had, out ACMFILTERTAGDETAILSA paftd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterTagDetailsW(HACMDRIVER had, out ACMFILTERTAGDETAILSW paftd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterTagEnumA(HACMDRIVER had, out ACMFILTERTAGDETAILSA paftd, ACMFILTERTAGENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterTagEnumW(HACMDRIVER had, out ACMFILTERTAGDETAILSW paftd, ACMFILTERTAGENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterDetailsA(HACMDRIVER had, out ACMFILTERDETAILSA pafd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterDetailsW(HACMDRIVER had, out ACMFILTERDETAILSW pafd, uint32 fdwDetails);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterEnumA(HACMDRIVER had, out ACMFILTERDETAILSA pafd, ACMFILTERENUMCBA fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterEnumW(HACMDRIVER had, out ACMFILTERDETAILSW pafd, ACMFILTERENUMCBW fnCallback, uint dwInstance, uint32 fdwEnum);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterChooseA(out ACMFILTERCHOOSEA pafltrc);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmFilterChooseW(out ACMFILTERCHOOSEW pafltrc);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamOpen(out int phas, HACMDRIVER had, out WAVEFORMATEX pwfxSrc, out WAVEFORMATEX pwfxDst, out WAVEFILTER pwfltr, uint dwCallback, uint dwInstance, uint32 fdwOpen);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamClose(HACMSTREAM has, uint32 fdwClose);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamSize(HACMSTREAM has, uint32 cbInput, out uint32 pdwOutputBytes, uint32 fdwSize);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamReset(HACMSTREAM has, uint32 fdwReset);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamMessage(HACMSTREAM has, uint32 uMsg, LPARAM lParam1, LPARAM lParam2);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamConvert(HACMSTREAM has, out ACMSTREAMHEADER pash, uint32 fdwConvert);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamPrepareHeader(HACMSTREAM has, out ACMSTREAMHEADER pash, uint32 fdwPrepare);
	[Import("msacm32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 acmStreamUnprepareHeader(HACMSTREAM has, out ACMSTREAMHEADER pash, uint32 fdwUnprepare);
	#endregion
}
