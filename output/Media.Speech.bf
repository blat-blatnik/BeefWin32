using System;

// namespace Media.Speech
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 SP_LOW_CONFIDENCE = -1;
		public const uint32 SP_NORMAL_CONFIDENCE = 0;
		public const uint32 DEFAULT_WEIGHT = 1;
		public const uint32 SP_MAX_WORD_LENGTH = 128;
		public const uint32 SP_MAX_PRON_LENGTH = 384;
		public const uint32 SP_EMULATE_RESULT = 1073741824;
		public const uint32 SP_STREAMPOS_ASAP = 0;
		public const int32 SP_STREAMPOS_REALTIME = -1;
		public const uint32 SPRP_NORMAL = 0;
		public const uint32 SP_MAX_LANGIDS = 20;
		public const uint32 SAPI_ERROR_BASE = 20480;
		public const float Speech_Default_Weight = 1f;
		public const int32 Speech_Max_Word_Length = 128;
		public const int32 Speech_Max_Pron_Length = 384;
		public const int32 Speech_StreamPos_Asap = 0;
		public const int32 Speech_StreamPos_RealTime = -1;
		public const int32 SpeechAllElements = -1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SPDATAKEYLOCATION : int32
		{
			SPDKL_DefaultLocation = 0,
			SPDKL_CurrentUser = 1,
			SPDKL_LocalMachine = 2,
			SPDKL_CurrentConfig = 5,
		}
		[AllowDuplicates]
		public enum SPSTREAMFORMAT : int32
		{
			SPSF_Default = -1,
			SPSF_NoAssignedFormat = 0,
			SPSF_Text = 1,
			SPSF_NonStandardFormat = 2,
			SPSF_ExtendedAudioFormat = 3,
			SPSF_8kHz8BitMono = 4,
			SPSF_8kHz8BitStereo = 5,
			SPSF_8kHz16BitMono = 6,
			SPSF_8kHz16BitStereo = 7,
			SPSF_11kHz8BitMono = 8,
			SPSF_11kHz8BitStereo = 9,
			SPSF_11kHz16BitMono = 10,
			SPSF_11kHz16BitStereo = 11,
			SPSF_12kHz8BitMono = 12,
			SPSF_12kHz8BitStereo = 13,
			SPSF_12kHz16BitMono = 14,
			SPSF_12kHz16BitStereo = 15,
			SPSF_16kHz8BitMono = 16,
			SPSF_16kHz8BitStereo = 17,
			SPSF_16kHz16BitMono = 18,
			SPSF_16kHz16BitStereo = 19,
			SPSF_22kHz8BitMono = 20,
			SPSF_22kHz8BitStereo = 21,
			SPSF_22kHz16BitMono = 22,
			SPSF_22kHz16BitStereo = 23,
			SPSF_24kHz8BitMono = 24,
			SPSF_24kHz8BitStereo = 25,
			SPSF_24kHz16BitMono = 26,
			SPSF_24kHz16BitStereo = 27,
			SPSF_32kHz8BitMono = 28,
			SPSF_32kHz8BitStereo = 29,
			SPSF_32kHz16BitMono = 30,
			SPSF_32kHz16BitStereo = 31,
			SPSF_44kHz8BitMono = 32,
			SPSF_44kHz8BitStereo = 33,
			SPSF_44kHz16BitMono = 34,
			SPSF_44kHz16BitStereo = 35,
			SPSF_48kHz8BitMono = 36,
			SPSF_48kHz8BitStereo = 37,
			SPSF_48kHz16BitMono = 38,
			SPSF_48kHz16BitStereo = 39,
			SPSF_TrueSpeech_8kHz1BitMono = 40,
			SPSF_CCITT_ALaw_8kHzMono = 41,
			SPSF_CCITT_ALaw_8kHzStereo = 42,
			SPSF_CCITT_ALaw_11kHzMono = 43,
			SPSF_CCITT_ALaw_11kHzStereo = 44,
			SPSF_CCITT_ALaw_22kHzMono = 45,
			SPSF_CCITT_ALaw_22kHzStereo = 46,
			SPSF_CCITT_ALaw_44kHzMono = 47,
			SPSF_CCITT_ALaw_44kHzStereo = 48,
			SPSF_CCITT_uLaw_8kHzMono = 49,
			SPSF_CCITT_uLaw_8kHzStereo = 50,
			SPSF_CCITT_uLaw_11kHzMono = 51,
			SPSF_CCITT_uLaw_11kHzStereo = 52,
			SPSF_CCITT_uLaw_22kHzMono = 53,
			SPSF_CCITT_uLaw_22kHzStereo = 54,
			SPSF_CCITT_uLaw_44kHzMono = 55,
			SPSF_CCITT_uLaw_44kHzStereo = 56,
			SPSF_ADPCM_8kHzMono = 57,
			SPSF_ADPCM_8kHzStereo = 58,
			SPSF_ADPCM_11kHzMono = 59,
			SPSF_ADPCM_11kHzStereo = 60,
			SPSF_ADPCM_22kHzMono = 61,
			SPSF_ADPCM_22kHzStereo = 62,
			SPSF_ADPCM_44kHzMono = 63,
			SPSF_ADPCM_44kHzStereo = 64,
			SPSF_GSM610_8kHzMono = 65,
			SPSF_GSM610_11kHzMono = 66,
			SPSF_GSM610_22kHzMono = 67,
			SPSF_GSM610_44kHzMono = 68,
			SPSF_NUM_FORMATS = 69,
		}
		[AllowDuplicates]
		public enum SPEVENTLPARAMTYPE : int32
		{
			SPET_LPARAM_IS_UNDEFINED = 0,
			SPET_LPARAM_IS_TOKEN = 1,
			SPET_LPARAM_IS_OBJECT = 2,
			SPET_LPARAM_IS_POINTER = 3,
			SPET_LPARAM_IS_STRING = 4,
		}
		[AllowDuplicates]
		public enum SPEVENTENUM : int32
		{
			SPEI_UNDEFINED = 0,
			SPEI_START_INPUT_STREAM = 1,
			SPEI_END_INPUT_STREAM = 2,
			SPEI_VOICE_CHANGE = 3,
			SPEI_TTS_BOOKMARK = 4,
			SPEI_WORD_BOUNDARY = 5,
			SPEI_PHONEME = 6,
			SPEI_SENTENCE_BOUNDARY = 7,
			SPEI_VISEME = 8,
			SPEI_TTS_AUDIO_LEVEL = 9,
			SPEI_TTS_PRIVATE = 15,
			SPEI_MIN_TTS = 1,
			SPEI_MAX_TTS = 15,
			SPEI_END_SR_STREAM = 34,
			SPEI_SOUND_START = 35,
			SPEI_SOUND_END = 36,
			SPEI_PHRASE_START = 37,
			SPEI_RECOGNITION = 38,
			SPEI_HYPOTHESIS = 39,
			SPEI_SR_BOOKMARK = 40,
			SPEI_PROPERTY_NUM_CHANGE = 41,
			SPEI_PROPERTY_STRING_CHANGE = 42,
			SPEI_FALSE_RECOGNITION = 43,
			SPEI_INTERFERENCE = 44,
			SPEI_REQUEST_UI = 45,
			SPEI_RECO_STATE_CHANGE = 46,
			SPEI_ADAPTATION = 47,
			SPEI_START_SR_STREAM = 48,
			SPEI_RECO_OTHER_CONTEXT = 49,
			SPEI_SR_AUDIO_LEVEL = 50,
			SPEI_SR_RETAINEDAUDIO = 51,
			SPEI_SR_PRIVATE = 52,
			SPEI_RESERVED4 = 53,
			SPEI_RESERVED5 = 54,
			SPEI_RESERVED6 = 55,
			SPEI_MIN_SR = 34,
			SPEI_MAX_SR = 55,
			SPEI_RESERVED1 = 30,
			SPEI_RESERVED2 = 33,
			SPEI_RESERVED3 = 63,
		}
		[AllowDuplicates]
		public enum SPINTERFERENCE : int32
		{
			SPINTERFERENCE_NONE = 0,
			SPINTERFERENCE_NOISE = 1,
			SPINTERFERENCE_NOSIGNAL = 2,
			SPINTERFERENCE_TOOLOUD = 3,
			SPINTERFERENCE_TOOQUIET = 4,
			SPINTERFERENCE_TOOFAST = 5,
			SPINTERFERENCE_TOOSLOW = 6,
			SPINTERFERENCE_LATENCY_WARNING = 7,
			SPINTERFERENCE_LATENCY_TRUNCATE_BEGIN = 8,
			SPINTERFERENCE_LATENCY_TRUNCATE_END = 9,
		}
		[AllowDuplicates]
		public enum SPENDSRSTREAMFLAGS : int32
		{
			SPESF_NONE = 0,
			SPESF_STREAM_RELEASED = 1,
			SPESF_EMULATED = 2,
		}
		[AllowDuplicates]
		public enum SPVFEATURE : int32
		{
			SPVFEATURE_STRESSED = 1,
			SPVFEATURE_EMPHASIS = 2,
		}
		[AllowDuplicates]
		public enum SPVISEMES : int32
		{
			SP_VISEME_0 = 0,
			SP_VISEME_1 = 1,
			SP_VISEME_2 = 2,
			SP_VISEME_3 = 3,
			SP_VISEME_4 = 4,
			SP_VISEME_5 = 5,
			SP_VISEME_6 = 6,
			SP_VISEME_7 = 7,
			SP_VISEME_8 = 8,
			SP_VISEME_9 = 9,
			SP_VISEME_10 = 10,
			SP_VISEME_11 = 11,
			SP_VISEME_12 = 12,
			SP_VISEME_13 = 13,
			SP_VISEME_14 = 14,
			SP_VISEME_15 = 15,
			SP_VISEME_16 = 16,
			SP_VISEME_17 = 17,
			SP_VISEME_18 = 18,
			SP_VISEME_19 = 19,
			SP_VISEME_20 = 20,
			SP_VISEME_21 = 21,
		}
		[AllowDuplicates]
		public enum SPFILEMODE : int32
		{
			SPFM_OPEN_READONLY = 0,
			SPFM_OPEN_READWRITE = 1,
			SPFM_CREATE = 2,
			SPFM_CREATE_ALWAYS = 3,
			SPFM_NUM_MODES = 4,
		}
		[AllowDuplicates]
		public enum SPAUDIOSTATE : int32
		{
			SPAS_CLOSED = 0,
			SPAS_STOP = 1,
			SPAS_PAUSE = 2,
			SPAS_RUN = 3,
		}
		[AllowDuplicates]
		public enum SPDISPLYATTRIBUTES : int32
		{
			SPAF_ONE_TRAILING_SPACE = 2,
			SPAF_TWO_TRAILING_SPACES = 4,
			SPAF_CONSUME_LEADING_SPACES = 8,
			SPAF_BUFFER_POSITION = 16,
			SPAF_ALL = 31,
			SPAF_USER_SPECIFIED = 128,
		}
		[AllowDuplicates]
		public enum SPPHRASEPROPERTYUNIONTYPE : int32
		{
			SPPPUT_UNUSED = 0,
			SPPPUT_ARRAY_INDEX = 1,
		}
		[AllowDuplicates]
		public enum SPSEMANTICFORMAT : int32
		{
			SPSMF_SAPI_PROPERTIES = 0,
			SPSMF_SRGS_SEMANTICINTERPRETATION_MS = 1,
			SPSMF_SRGS_SAPIPROPERTIES = 2,
			SPSMF_UPS = 4,
			SPSMF_SRGS_SEMANTICINTERPRETATION_W3C = 8,
		}
		[AllowDuplicates]
		public enum SPVALUETYPE : int32
		{
			SPDF_PROPERTY = 1,
			SPDF_REPLACEMENT = 2,
			SPDF_RULE = 4,
			SPDF_DISPLAYTEXT = 8,
			SPDF_LEXICALFORM = 16,
			SPDF_PRONUNCIATION = 32,
			SPDF_AUDIO = 64,
			SPDF_ALTERNATES = 128,
			SPDF_ALL = 255,
		}
		[AllowDuplicates]
		public enum SPPHRASERNG : int32
		{
			SPPR_ALL_ELEMENTS = -1,
		}
		[AllowDuplicates]
		public enum SPRECOEVENTFLAGS : int32
		{
			SPREF_AutoPause = 1,
			SPREF_Emulated = 2,
			SPREF_SMLTimeout = 4,
			SPREF_ExtendableParse = 8,
			SPREF_ReSent = 16,
			SPREF_Hypothesis = 32,
			SPREF_FalseRecognition = 64,
		}
		[AllowDuplicates]
		public enum SPPARTOFSPEECH : int32
		{
			SPPS_NotOverriden = -1,
			SPPS_Unknown = 0,
			SPPS_Noun = 4096,
			SPPS_Verb = 8192,
			SPPS_Modifier = 12288,
			SPPS_Function = 16384,
			SPPS_Interjection = 20480,
			SPPS_Noncontent = 24576,
			SPPS_LMA = 28672,
			SPPS_SuppressWord = 61440,
		}
		[AllowDuplicates]
		public enum SPLEXICONTYPE : int32
		{
			eLEXTYPE_USER = 1,
			eLEXTYPE_APP = 2,
			eLEXTYPE_VENDORLEXICON = 4,
			eLEXTYPE_LETTERTOSOUND = 8,
			eLEXTYPE_MORPHOLOGY = 16,
			eLEXTYPE_RESERVED4 = 32,
			eLEXTYPE_USER_SHORTCUT = 64,
			eLEXTYPE_RESERVED6 = 128,
			eLEXTYPE_RESERVED7 = 256,
			eLEXTYPE_RESERVED8 = 512,
			eLEXTYPE_RESERVED9 = 1024,
			eLEXTYPE_RESERVED10 = 2048,
			eLEXTYPE_PRIVATE1 = 4096,
			eLEXTYPE_PRIVATE2 = 8192,
			eLEXTYPE_PRIVATE3 = 16384,
			eLEXTYPE_PRIVATE4 = 32768,
			eLEXTYPE_PRIVATE5 = 65536,
			eLEXTYPE_PRIVATE6 = 131072,
			eLEXTYPE_PRIVATE7 = 262144,
			eLEXTYPE_PRIVATE8 = 524288,
			eLEXTYPE_PRIVATE9 = 1048576,
			eLEXTYPE_PRIVATE10 = 2097152,
			eLEXTYPE_PRIVATE11 = 4194304,
			eLEXTYPE_PRIVATE12 = 8388608,
			eLEXTYPE_PRIVATE13 = 16777216,
			eLEXTYPE_PRIVATE14 = 33554432,
			eLEXTYPE_PRIVATE15 = 67108864,
			eLEXTYPE_PRIVATE16 = 134217728,
			eLEXTYPE_PRIVATE17 = 268435456,
			eLEXTYPE_PRIVATE18 = 536870912,
			eLEXTYPE_PRIVATE19 = 1073741824,
			eLEXTYPE_PRIVATE20 = -2147483648,
		}
		[AllowDuplicates]
		public enum SPWORDTYPE : int32
		{
			eWORDTYPE_ADDED = 1,
			eWORDTYPE_DELETED = 2,
		}
		[AllowDuplicates]
		public enum SPPRONUNCIATIONFLAGS : int32
		{
			ePRONFLAG_USED = 1,
		}
		[AllowDuplicates]
		public enum SPSHORTCUTTYPE : int32
		{
			SPSHT_NotOverriden = -1,
			SPSHT_Unknown = 0,
			SPSHT_EMAIL = 4096,
			SPSHT_OTHER = 8192,
			SPPS_RESERVED1 = 12288,
			SPPS_RESERVED2 = 16384,
			SPPS_RESERVED3 = 20480,
			SPPS_RESERVED4 = 61440,
		}
		[AllowDuplicates]
		public enum SPVACTIONS : int32
		{
			SPVA_Speak = 0,
			SPVA_Silence = 1,
			SPVA_Pronounce = 2,
			SPVA_Bookmark = 3,
			SPVA_SpellOut = 4,
			SPVA_Section = 5,
			SPVA_ParseUnknownTag = 6,
		}
		[AllowDuplicates]
		public enum SPRUNSTATE : int32
		{
			SPRS_DONE = 1,
			SPRS_IS_SPEAKING = 2,
		}
		[AllowDuplicates]
		public enum SPVLIMITS : int32
		{
			SPMIN_VOLUME = 0,
			SPMAX_VOLUME = 100,
			SPMIN_RATE = -10,
			SPMAX_RATE = 10,
		}
		[AllowDuplicates]
		public enum SPVPRIORITY : int32
		{
			SPVPRI_NORMAL = 0,
			SPVPRI_ALERT = 1,
			SPVPRI_OVER = 2,
		}
		[AllowDuplicates]
		public enum SPEAKFLAGS : int32
		{
			SPF_DEFAULT = 0,
			SPF_ASYNC = 1,
			SPF_PURGEBEFORESPEAK = 2,
			SPF_IS_FILENAME = 4,
			SPF_IS_XML = 8,
			SPF_IS_NOT_XML = 16,
			SPF_PERSIST_XML = 32,
			SPF_NLP_SPEAK_PUNC = 64,
			SPF_PARSE_SAPI = 128,
			SPF_PARSE_SSML = 256,
			SPF_PARSE_AUTODETECT = 0,
			SPF_NLP_MASK = 64,
			SPF_PARSE_MASK = 384,
			SPF_VOICE_MASK = 511,
			SPF_UNUSED_FLAGS = -512,
		}
		[AllowDuplicates]
		public enum SPXMLRESULTOPTIONS : int32
		{
			SPXRO_SML = 0,
			SPXRO_Alternates_SML = 1,
		}
		[AllowDuplicates]
		public enum SPCOMMITFLAGS : int32
		{
			SPCF_NONE = 0,
			SPCF_ADD_TO_USER_LEXICON = 1,
			SPCF_DEFINITE_CORRECTION = 2,
		}
		[AllowDuplicates]
		public enum SPWORDPRONOUNCEABLE : int32
		{
			SPWP_UNKNOWN_WORD_UNPRONOUNCEABLE = 0,
			SPWP_UNKNOWN_WORD_PRONOUNCEABLE = 1,
			SPWP_KNOWN_WORD_PRONOUNCEABLE = 2,
		}
		[AllowDuplicates]
		public enum SPGRAMMARSTATE : int32
		{
			SPGS_DISABLED = 0,
			SPGS_ENABLED = 1,
			SPGS_EXCLUSIVE = 3,
		}
		[AllowDuplicates]
		public enum SPCONTEXTSTATE : int32
		{
			SPCS_DISABLED = 0,
			SPCS_ENABLED = 1,
		}
		[AllowDuplicates]
		public enum SPRULESTATE : int32
		{
			SPRS_INACTIVE = 0,
			SPRS_ACTIVE = 1,
			SPRS_ACTIVE_WITH_AUTO_PAUSE = 3,
			SPRS_ACTIVE_USER_DELIMITED = 4,
		}
		[AllowDuplicates]
		public enum SPGRAMMARWORDTYPE : int32
		{
			SPWT_DISPLAY = 0,
			SPWT_LEXICAL = 1,
			SPWT_PRONUNCIATION = 2,
			SPWT_LEXICAL_NO_SPECIAL_CHARS = 3,
		}
		[AllowDuplicates]
		public enum SPCFGRULEATTRIBUTES : int32
		{
			SPRAF_TopLevel = 1,
			SPRAF_Active = 2,
			SPRAF_Export = 4,
			SPRAF_Import = 8,
			SPRAF_Interpreter = 16,
			SPRAF_Dynamic = 32,
			SPRAF_Root = 64,
			SPRAF_AutoPause = 65536,
			SPRAF_UserDelimited = 131072,
		}
		[AllowDuplicates]
		public enum SPLOADOPTIONS : int32
		{
			SPLO_STATIC = 0,
			SPLO_DYNAMIC = 1,
		}
		[AllowDuplicates]
		public enum SPMATCHINGMODE : int32
		{
			AllWords = 0,
			Subsequence = 1,
			OrderedSubset = 3,
			SubsequenceContentRequired = 5,
			OrderedSubsetContentRequired = 7,
		}
		[AllowDuplicates]
		public enum PHONETICALPHABET : int32
		{
			PA_Ipa = 0,
			PA_Ups = 1,
			PA_Sapi = 2,
		}
		[AllowDuplicates]
		public enum SPBOOKMARKOPTIONS : int32
		{
			SPBO_NONE = 0,
			SPBO_PAUSE = 1,
			SPBO_AHEAD = 2,
			SPBO_TIME_UNITS = 4,
		}
		[AllowDuplicates]
		public enum SPAUDIOOPTIONS : int32
		{
			SPAO_NONE = 0,
			SPAO_RETAIN_AUDIO = 1,
		}
		[AllowDuplicates]
		public enum SPGRAMMAROPTIONS : int32
		{
			SPGO_SAPI = 1,
			SPGO_SRGS = 2,
			SPGO_UPS = 4,
			SPGO_SRGS_MS_SCRIPT = 8,
			SPGO_SRGS_W3C_SCRIPT = 256,
			SPGO_SRGS_STG_SCRIPT = 512,
			SPGO_SRGS_SCRIPT = 778,
			SPGO_FILE = 16,
			SPGO_HTTP = 32,
			SPGO_RES = 64,
			SPGO_OBJECT = 128,
			SPGO_DEFAULT = 1019,
			SPGO_ALL = 1023,
		}
		[AllowDuplicates]
		public enum SPADAPTATIONSETTINGS : int32
		{
			SPADS_Default = 0,
			SPADS_CurrentRecognizer = 1,
			SPADS_RecoProfile = 2,
			SPADS_Immediate = 4,
			SPADS_Reset = 8,
			SPADS_HighVolumeDataSource = 16,
		}
		[AllowDuplicates]
		public enum SPADAPTATIONRELEVANCE : int32
		{
			SPAR_Unknown = 0,
			SPAR_Low = 1,
			SPAR_Medium = 2,
			SPAR_High = 3,
		}
		[AllowDuplicates]
		public enum SPWAVEFORMATTYPE : int32
		{
			SPWF_INPUT = 0,
			SPWF_SRENGINE = 1,
		}
		[AllowDuplicates]
		public enum SPRECOSTATE : int32
		{
			SPRST_INACTIVE = 0,
			SPRST_ACTIVE = 1,
			SPRST_ACTIVE_ALWAYS = 2,
			SPRST_INACTIVE_WITH_PURGE = 3,
			SPRST_NUM_STATES = 4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechDataKey : int32
		{
			DISPID_SDKSetBinaryValue = 1,
			DISPID_SDKGetBinaryValue = 2,
			DISPID_SDKSetStringValue = 3,
			DISPID_SDKGetStringValue = 4,
			DISPID_SDKSetLongValue = 5,
			DISPID_SDKGetlongValue = 6,
			DISPID_SDKOpenKey = 7,
			DISPID_SDKCreateKey = 8,
			DISPID_SDKDeleteKey = 9,
			DISPID_SDKDeleteValue = 10,
			DISPID_SDKEnumKeys = 11,
			DISPID_SDKEnumValues = 12,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechObjectToken : int32
		{
			DISPID_SOTId = 1,
			DISPID_SOTDataKey = 2,
			DISPID_SOTCategory = 3,
			DISPID_SOTGetDescription = 4,
			DISPID_SOTSetId = 5,
			DISPID_SOTGetAttribute = 6,
			DISPID_SOTCreateInstance = 7,
			DISPID_SOTRemove = 8,
			DISPID_SOTGetStorageFileName = 9,
			DISPID_SOTRemoveStorageFileName = 10,
			DISPID_SOTIsUISupported = 11,
			DISPID_SOTDisplayUI = 12,
			DISPID_SOTMatchesAttributes = 13,
		}
		[AllowDuplicates]
		public enum SpeechDataKeyLocation : int32
		{
			SDKLDefaultLocation = 0,
			SDKLCurrentUser = 1,
			SDKLLocalMachine = 2,
			SDKLCurrentConfig = 5,
		}
		[AllowDuplicates]
		public enum SpeechTokenContext : uint32
		{
			STCInprocServer = 1,
			STCInprocHandler = 2,
			STCLocalServer = 4,
			STCRemoteServer = 16,
			STCAll = 23,
		}
		[AllowDuplicates]
		public enum SpeechTokenShellFolder : int32
		{
			STSF_AppData = 26,
			STSF_LocalAppData = 28,
			STSF_CommonAppData = 35,
			STSF_FlagCreate = 32768,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechObjectTokens : int32
		{
			DISPID_SOTsCount = 1,
			DISPID_SOTsItem = 0,
			DISPID_SOTs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechObjectTokenCategory : int32
		{
			DISPID_SOTCId = 1,
			DISPID_SOTCDefault = 2,
			DISPID_SOTCSetId = 3,
			DISPID_SOTCGetDataKey = 4,
			DISPID_SOTCEnumerateTokens = 5,
		}
		[AllowDuplicates]
		public enum SpeechAudioFormatType : int32
		{
			SAFTDefault = -1,
			SAFTNoAssignedFormat = 0,
			SAFTText = 1,
			SAFTNonStandardFormat = 2,
			SAFTExtendedAudioFormat = 3,
			SAFT8kHz8BitMono = 4,
			SAFT8kHz8BitStereo = 5,
			SAFT8kHz16BitMono = 6,
			SAFT8kHz16BitStereo = 7,
			SAFT11kHz8BitMono = 8,
			SAFT11kHz8BitStereo = 9,
			SAFT11kHz16BitMono = 10,
			SAFT11kHz16BitStereo = 11,
			SAFT12kHz8BitMono = 12,
			SAFT12kHz8BitStereo = 13,
			SAFT12kHz16BitMono = 14,
			SAFT12kHz16BitStereo = 15,
			SAFT16kHz8BitMono = 16,
			SAFT16kHz8BitStereo = 17,
			SAFT16kHz16BitMono = 18,
			SAFT16kHz16BitStereo = 19,
			SAFT22kHz8BitMono = 20,
			SAFT22kHz8BitStereo = 21,
			SAFT22kHz16BitMono = 22,
			SAFT22kHz16BitStereo = 23,
			SAFT24kHz8BitMono = 24,
			SAFT24kHz8BitStereo = 25,
			SAFT24kHz16BitMono = 26,
			SAFT24kHz16BitStereo = 27,
			SAFT32kHz8BitMono = 28,
			SAFT32kHz8BitStereo = 29,
			SAFT32kHz16BitMono = 30,
			SAFT32kHz16BitStereo = 31,
			SAFT44kHz8BitMono = 32,
			SAFT44kHz8BitStereo = 33,
			SAFT44kHz16BitMono = 34,
			SAFT44kHz16BitStereo = 35,
			SAFT48kHz8BitMono = 36,
			SAFT48kHz8BitStereo = 37,
			SAFT48kHz16BitMono = 38,
			SAFT48kHz16BitStereo = 39,
			SAFTTrueSpeech_8kHz1BitMono = 40,
			SAFTCCITT_ALaw_8kHzMono = 41,
			SAFTCCITT_ALaw_8kHzStereo = 42,
			SAFTCCITT_ALaw_11kHzMono = 43,
			SAFTCCITT_ALaw_11kHzStereo = 44,
			SAFTCCITT_ALaw_22kHzMono = 45,
			SAFTCCITT_ALaw_22kHzStereo = 46,
			SAFTCCITT_ALaw_44kHzMono = 47,
			SAFTCCITT_ALaw_44kHzStereo = 48,
			SAFTCCITT_uLaw_8kHzMono = 49,
			SAFTCCITT_uLaw_8kHzStereo = 50,
			SAFTCCITT_uLaw_11kHzMono = 51,
			SAFTCCITT_uLaw_11kHzStereo = 52,
			SAFTCCITT_uLaw_22kHzMono = 53,
			SAFTCCITT_uLaw_22kHzStereo = 54,
			SAFTCCITT_uLaw_44kHzMono = 55,
			SAFTCCITT_uLaw_44kHzStereo = 56,
			SAFTADPCM_8kHzMono = 57,
			SAFTADPCM_8kHzStereo = 58,
			SAFTADPCM_11kHzMono = 59,
			SAFTADPCM_11kHzStereo = 60,
			SAFTADPCM_22kHzMono = 61,
			SAFTADPCM_22kHzStereo = 62,
			SAFTADPCM_44kHzMono = 63,
			SAFTADPCM_44kHzStereo = 64,
			SAFTGSM610_8kHzMono = 65,
			SAFTGSM610_11kHzMono = 66,
			SAFTGSM610_22kHzMono = 67,
			SAFTGSM610_44kHzMono = 68,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechAudioFormat : int32
		{
			DISPID_SAFType = 1,
			DISPID_SAFGuid = 2,
			DISPID_SAFGetWaveFormatEx = 3,
			DISPID_SAFSetWaveFormatEx = 4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechBaseStream : int32
		{
			DISPID_SBSFormat = 1,
			DISPID_SBSRead = 2,
			DISPID_SBSWrite = 3,
			DISPID_SBSSeek = 4,
		}
		[AllowDuplicates]
		public enum SpeechStreamSeekPositionType : uint32
		{
			SSSPTRelativeToStart = 0,
			SSSPTRelativeToCurrentPosition = 1,
			SSSPTRelativeToEnd = 2,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechAudio : int32
		{
			DISPID_SAStatus = 200,
			DISPID_SABufferInfo = 201,
			DISPID_SADefaultFormat = 202,
			DISPID_SAVolume = 203,
			DISPID_SABufferNotifySize = 204,
			DISPID_SAEventHandle = 205,
			DISPID_SASetState = 206,
		}
		[AllowDuplicates]
		public enum SpeechAudioState : int32
		{
			SASClosed = 0,
			SASStop = 1,
			SASPause = 2,
			SASRun = 3,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechMMSysAudio : int32
		{
			DISPID_SMSADeviceId = 300,
			DISPID_SMSALineId = 301,
			DISPID_SMSAMMHandle = 302,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechFileStream : int32
		{
			DISPID_SFSOpen = 100,
			DISPID_SFSClose = 101,
		}
		[AllowDuplicates]
		public enum SpeechStreamFileMode : int32
		{
			SSFMOpenForRead = 0,
			SSFMOpenReadWrite = 1,
			SSFMCreate = 2,
			SSFMCreateForWrite = 3,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechCustomStream : int32
		{
			DISPID_SCSBaseStream = 100,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechMemoryStream : int32
		{
			DISPID_SMSSetData = 100,
			DISPID_SMSGetData = 101,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechAudioStatus : int32
		{
			DISPID_SASFreeBufferSpace = 1,
			DISPID_SASNonBlockingIO = 2,
			DISPID_SASState = 3,
			DISPID_SASCurrentSeekPosition = 4,
			DISPID_SASCurrentDevicePosition = 5,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechAudioBufferInfo : int32
		{
			DISPID_SABIMinNotification = 1,
			DISPID_SABIBufferSize = 2,
			DISPID_SABIEventBias = 3,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechWaveFormatEx : int32
		{
			DISPID_SWFEFormatTag = 1,
			DISPID_SWFEChannels = 2,
			DISPID_SWFESamplesPerSec = 3,
			DISPID_SWFEAvgBytesPerSec = 4,
			DISPID_SWFEBlockAlign = 5,
			DISPID_SWFEBitsPerSample = 6,
			DISPID_SWFEExtraData = 7,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechVoice : int32
		{
			DISPID_SVStatus = 1,
			DISPID_SVVoice = 2,
			DISPID_SVAudioOutput = 3,
			DISPID_SVAudioOutputStream = 4,
			DISPID_SVRate = 5,
			DISPID_SVVolume = 6,
			DISPID_SVAllowAudioOuputFormatChangesOnNextSet = 7,
			DISPID_SVEventInterests = 8,
			DISPID_SVPriority = 9,
			DISPID_SVAlertBoundary = 10,
			DISPID_SVSyncronousSpeakTimeout = 11,
			DISPID_SVSpeak = 12,
			DISPID_SVSpeakStream = 13,
			DISPID_SVPause = 14,
			DISPID_SVResume = 15,
			DISPID_SVSkip = 16,
			DISPID_SVGetVoices = 17,
			DISPID_SVGetAudioOutputs = 18,
			DISPID_SVWaitUntilDone = 19,
			DISPID_SVSpeakCompleteEvent = 20,
			DISPID_SVIsUISupported = 21,
			DISPID_SVDisplayUI = 22,
		}
		[AllowDuplicates]
		public enum SpeechVoicePriority : int32
		{
			SVPNormal = 0,
			SVPAlert = 1,
			SVPOver = 2,
		}
		[AllowDuplicates]
		public enum SpeechVoiceSpeakFlags : int32
		{
			SVSFDefault = 0,
			SVSFlagsAsync = 1,
			SVSFPurgeBeforeSpeak = 2,
			SVSFIsFilename = 4,
			SVSFIsXML = 8,
			SVSFIsNotXML = 16,
			SVSFPersistXML = 32,
			SVSFNLPSpeakPunc = 64,
			SVSFParseSapi = 128,
			SVSFParseSsml = 256,
			SVSFParseAutodetect = 0,
			SVSFNLPMask = 64,
			SVSFParseMask = 384,
			SVSFVoiceMask = 511,
			SVSFUnusedFlags = -512,
		}
		[AllowDuplicates]
		public enum SpeechVoiceEvents : int32
		{
			SVEStartInputStream = 2,
			SVEEndInputStream = 4,
			SVEVoiceChange = 8,
			SVEBookmark = 16,
			SVEWordBoundary = 32,
			SVEPhoneme = 64,
			SVESentenceBoundary = 128,
			SVEViseme = 256,
			SVEAudioLevel = 512,
			SVEPrivate = 32768,
			SVEAllEvents = 33790,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechVoiceStatus : int32
		{
			DISPID_SVSCurrentStreamNumber = 1,
			DISPID_SVSLastStreamNumberQueued = 2,
			DISPID_SVSLastResult = 3,
			DISPID_SVSRunningState = 4,
			DISPID_SVSInputWordPosition = 5,
			DISPID_SVSInputWordLength = 6,
			DISPID_SVSInputSentencePosition = 7,
			DISPID_SVSInputSentenceLength = 8,
			DISPID_SVSLastBookmark = 9,
			DISPID_SVSLastBookmarkId = 10,
			DISPID_SVSPhonemeId = 11,
			DISPID_SVSVisemeId = 12,
		}
		[AllowDuplicates]
		public enum SpeechRunState : int32
		{
			SRSEDone = 1,
			SRSEIsSpeaking = 2,
		}
		[AllowDuplicates]
		public enum SpeechVisemeType : int32
		{
			SVP_0 = 0,
			SVP_1 = 1,
			SVP_2 = 2,
			SVP_3 = 3,
			SVP_4 = 4,
			SVP_5 = 5,
			SVP_6 = 6,
			SVP_7 = 7,
			SVP_8 = 8,
			SVP_9 = 9,
			SVP_10 = 10,
			SVP_11 = 11,
			SVP_12 = 12,
			SVP_13 = 13,
			SVP_14 = 14,
			SVP_15 = 15,
			SVP_16 = 16,
			SVP_17 = 17,
			SVP_18 = 18,
			SVP_19 = 19,
			SVP_20 = 20,
			SVP_21 = 21,
		}
		[AllowDuplicates]
		public enum SpeechVisemeFeature : int32
		{
			SVF_None = 0,
			SVF_Stressed = 1,
			SVF_Emphasis = 2,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechVoiceEvent : int32
		{
			DISPID_SVEStreamStart = 1,
			DISPID_SVEStreamEnd = 2,
			DISPID_SVEVoiceChange = 3,
			DISPID_SVEBookmark = 4,
			DISPID_SVEWord = 5,
			DISPID_SVEPhoneme = 6,
			DISPID_SVESentenceBoundary = 7,
			DISPID_SVEViseme = 8,
			DISPID_SVEAudioLevel = 9,
			DISPID_SVEEnginePrivate = 10,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecognizer : int32
		{
			DISPID_SRRecognizer = 1,
			DISPID_SRAllowAudioInputFormatChangesOnNextSet = 2,
			DISPID_SRAudioInput = 3,
			DISPID_SRAudioInputStream = 4,
			DISPID_SRIsShared = 5,
			DISPID_SRState = 6,
			DISPID_SRStatus = 7,
			DISPID_SRProfile = 8,
			DISPID_SREmulateRecognition = 9,
			DISPID_SRCreateRecoContext = 10,
			DISPID_SRGetFormat = 11,
			DISPID_SRSetPropertyNumber = 12,
			DISPID_SRGetPropertyNumber = 13,
			DISPID_SRSetPropertyString = 14,
			DISPID_SRGetPropertyString = 15,
			DISPID_SRIsUISupported = 16,
			DISPID_SRDisplayUI = 17,
			DISPID_SRGetRecognizers = 18,
			DISPID_SVGetAudioInputs = 19,
			DISPID_SVGetProfiles = 20,
		}
		[AllowDuplicates]
		public enum SpeechRecognizerState : int32
		{
			SRSInactive = 0,
			SRSActive = 1,
			SRSActiveAlways = 2,
			SRSInactiveWithPurge = 3,
		}
		[AllowDuplicates]
		public enum SpeechDisplayAttributes : int32
		{
			SDA_No_Trailing_Space = 0,
			SDA_One_Trailing_Space = 2,
			SDA_Two_Trailing_Spaces = 4,
			SDA_Consume_Leading_Spaces = 8,
		}
		[AllowDuplicates]
		public enum SpeechFormatType : int32
		{
			SFTInput = 0,
			SFTSREngine = 1,
		}
		[AllowDuplicates]
		public enum SpeechEmulationCompareFlags : int32
		{
			SECFIgnoreCase = 1,
			SECFIgnoreKanaType = 65536,
			SECFIgnoreWidth = 131072,
			SECFNoSpecialChars = 536870912,
			SECFEmulateResult = 1073741824,
			SECFDefault = 196609,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecognizerStatus : int32
		{
			DISPID_SRSAudioStatus = 1,
			DISPID_SRSCurrentStreamPosition = 2,
			DISPID_SRSCurrentStreamNumber = 3,
			DISPID_SRSNumberOfActiveRules = 4,
			DISPID_SRSClsidEngine = 5,
			DISPID_SRSSupportedLanguages = 6,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecoContext : int32
		{
			DISPID_SRCRecognizer = 1,
			DISPID_SRCAudioInInterferenceStatus = 2,
			DISPID_SRCRequestedUIType = 3,
			DISPID_SRCVoice = 4,
			DISPID_SRAllowVoiceFormatMatchingOnNextSet = 5,
			DISPID_SRCVoicePurgeEvent = 6,
			DISPID_SRCEventInterests = 7,
			DISPID_SRCCmdMaxAlternates = 8,
			DISPID_SRCState = 9,
			DISPID_SRCRetainedAudio = 10,
			DISPID_SRCRetainedAudioFormat = 11,
			DISPID_SRCPause = 12,
			DISPID_SRCResume = 13,
			DISPID_SRCCreateGrammar = 14,
			DISPID_SRCCreateResultFromMemory = 15,
			DISPID_SRCBookmark = 16,
			DISPID_SRCSetAdaptationData = 17,
		}
		[AllowDuplicates]
		public enum SpeechRetainedAudioOptions : int32
		{
			SRAONone = 0,
			SRAORetainAudio = 1,
		}
		[AllowDuplicates]
		public enum SpeechBookmarkOptions : int32
		{
			SBONone = 0,
			SBOPause = 1,
		}
		[AllowDuplicates]
		public enum SpeechInterference : int32
		{
			SINone = 0,
			SINoise = 1,
			SINoSignal = 2,
			SITooLoud = 3,
			SITooQuiet = 4,
			SITooFast = 5,
			SITooSlow = 6,
		}
		[AllowDuplicates]
		public enum SpeechRecoEvents : int32
		{
			SREStreamEnd = 1,
			SRESoundStart = 2,
			SRESoundEnd = 4,
			SREPhraseStart = 8,
			SRERecognition = 16,
			SREHypothesis = 32,
			SREBookmark = 64,
			SREPropertyNumChange = 128,
			SREPropertyStringChange = 256,
			SREFalseRecognition = 512,
			SREInterference = 1024,
			SRERequestUI = 2048,
			SREStateChange = 4096,
			SREAdaptation = 8192,
			SREStreamStart = 16384,
			SRERecoOtherContext = 32768,
			SREAudioLevel = 65536,
			SREPrivate = 262144,
			SREAllEvents = 393215,
		}
		[AllowDuplicates]
		public enum SpeechRecoContextState : int32
		{
			SRCS_Disabled = 0,
			SRCS_Enabled = 1,
		}
		[AllowDuplicates]
		public enum DISPIDSPRG : int32
		{
			DISPID_SRGId = 1,
			DISPID_SRGRecoContext = 2,
			DISPID_SRGState = 3,
			DISPID_SRGRules = 4,
			DISPID_SRGReset = 5,
			DISPID_SRGCommit = 6,
			DISPID_SRGCmdLoadFromFile = 7,
			DISPID_SRGCmdLoadFromObject = 8,
			DISPID_SRGCmdLoadFromResource = 9,
			DISPID_SRGCmdLoadFromMemory = 10,
			DISPID_SRGCmdLoadFromProprietaryGrammar = 11,
			DISPID_SRGCmdSetRuleState = 12,
			DISPID_SRGCmdSetRuleIdState = 13,
			DISPID_SRGDictationLoad = 14,
			DISPID_SRGDictationUnload = 15,
			DISPID_SRGDictationSetState = 16,
			DISPID_SRGSetWordSequenceData = 17,
			DISPID_SRGSetTextSelection = 18,
			DISPID_SRGIsPronounceable = 19,
		}
		[AllowDuplicates]
		public enum SpeechLoadOption : int32
		{
			SLOStatic = 0,
			SLODynamic = 1,
		}
		[AllowDuplicates]
		public enum SpeechWordPronounceable : int32
		{
			SWPUnknownWordUnpronounceable = 0,
			SWPUnknownWordPronounceable = 1,
			SWPKnownWordPronounceable = 2,
		}
		[AllowDuplicates]
		public enum SpeechGrammarState : int32
		{
			SGSEnabled = 1,
			SGSDisabled = 0,
			SGSExclusive = 3,
		}
		[AllowDuplicates]
		public enum SpeechRuleState : int32
		{
			SGDSInactive = 0,
			SGDSActive = 1,
			SGDSActiveWithAutoPause = 3,
			SGDSActiveUserDelimited = 4,
		}
		[AllowDuplicates]
		public enum SpeechRuleAttributes : int32
		{
			SRATopLevel = 1,
			SRADefaultToActive = 2,
			SRAExport = 4,
			SRAImport = 8,
			SRAInterpreter = 16,
			SRADynamic = 32,
			SRARoot = 64,
		}
		[AllowDuplicates]
		public enum SpeechGrammarWordType : int32
		{
			SGDisplay = 0,
			SGLexical = 1,
			SGPronounciation = 2,
			SGLexicalNoSpecialChars = 3,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecoContextEvents : int32
		{
			DISPID_SRCEStartStream = 1,
			DISPID_SRCEEndStream = 2,
			DISPID_SRCEBookmark = 3,
			DISPID_SRCESoundStart = 4,
			DISPID_SRCESoundEnd = 5,
			DISPID_SRCEPhraseStart = 6,
			DISPID_SRCERecognition = 7,
			DISPID_SRCEHypothesis = 8,
			DISPID_SRCEPropertyNumberChange = 9,
			DISPID_SRCEPropertyStringChange = 10,
			DISPID_SRCEFalseRecognition = 11,
			DISPID_SRCEInterference = 12,
			DISPID_SRCERequestUI = 13,
			DISPID_SRCERecognizerStateChange = 14,
			DISPID_SRCEAdaptation = 15,
			DISPID_SRCERecognitionForOtherContext = 16,
			DISPID_SRCEAudioLevel = 17,
			DISPID_SRCEEnginePrivate = 18,
		}
		[AllowDuplicates]
		public enum SpeechRecognitionType : int32
		{
			SRTStandard = 0,
			SRTAutopause = 1,
			SRTEmulated = 2,
			SRTSMLTimeout = 4,
			SRTExtendableParse = 8,
			SRTReSent = 16,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechGrammarRule : int32
		{
			DISPID_SGRAttributes = 1,
			DISPID_SGRInitialState = 2,
			DISPID_SGRName = 3,
			DISPID_SGRId = 4,
			DISPID_SGRClear = 5,
			DISPID_SGRAddResource = 6,
			DISPID_SGRAddState = 7,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechGrammarRules : int32
		{
			DISPID_SGRsCount = 1,
			DISPID_SGRsDynamic = 2,
			DISPID_SGRsAdd = 3,
			DISPID_SGRsCommit = 4,
			DISPID_SGRsCommitAndSave = 5,
			DISPID_SGRsFindRule = 6,
			DISPID_SGRsItem = 0,
			DISPID_SGRs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechGrammarRuleState : int32
		{
			DISPID_SGRSRule = 1,
			DISPID_SGRSTransitions = 2,
			DISPID_SGRSAddWordTransition = 3,
			DISPID_SGRSAddRuleTransition = 4,
			DISPID_SGRSAddSpecialTransition = 5,
		}
		[AllowDuplicates]
		public enum SpeechSpecialTransitionType : int32
		{
			SSTTWildcard = 1,
			SSTTDictation = 2,
			SSTTTextBuffer = 3,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechGrammarRuleStateTransitions : int32
		{
			DISPID_SGRSTsCount = 1,
			DISPID_SGRSTsItem = 0,
			DISPID_SGRSTs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechGrammarRuleStateTransition : int32
		{
			DISPID_SGRSTType = 1,
			DISPID_SGRSTText = 2,
			DISPID_SGRSTRule = 3,
			DISPID_SGRSTWeight = 4,
			DISPID_SGRSTPropertyName = 5,
			DISPID_SGRSTPropertyId = 6,
			DISPID_SGRSTPropertyValue = 7,
			DISPID_SGRSTNextState = 8,
		}
		[AllowDuplicates]
		public enum SpeechGrammarRuleStateTransitionType : int32
		{
			SGRSTTEpsilon = 0,
			SGRSTTWord = 1,
			SGRSTTRule = 2,
			SGRSTTDictation = 3,
			SGRSTTWildcard = 4,
			SGRSTTTextBuffer = 5,
		}
		[AllowDuplicates]
		public enum DISPIDSPTSI : int32
		{
			DISPIDSPTSI_ActiveOffset = 1,
			DISPIDSPTSI_ActiveLength = 2,
			DISPIDSPTSI_SelectionOffset = 3,
			DISPIDSPTSI_SelectionLength = 4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecoResult : int32
		{
			DISPID_SRRRecoContext = 1,
			DISPID_SRRTimes = 2,
			DISPID_SRRAudioFormat = 3,
			DISPID_SRRPhraseInfo = 4,
			DISPID_SRRAlternates = 5,
			DISPID_SRRAudio = 6,
			DISPID_SRRSpeakAudio = 7,
			DISPID_SRRSaveToMemory = 8,
			DISPID_SRRDiscardResultInfo = 9,
		}
		[AllowDuplicates]
		public enum SpeechDiscardType : int32
		{
			SDTProperty = 1,
			SDTReplacement = 2,
			SDTRule = 4,
			SDTDisplayText = 8,
			SDTLexicalForm = 16,
			SDTPronunciation = 32,
			SDTAudio = 64,
			SDTAlternates = 128,
			SDTAll = 255,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechXMLRecoResult : int32
		{
			DISPID_SRRGetXMLResult = 10,
			DISPID_SRRGetXMLErrorInfo = 11,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecoResult2 : int32
		{
			DISPID_SRRSetTextFeedback = 12,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseBuilder : int32
		{
			DISPID_SPPBRestorePhraseFromMemory = 1,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechRecoResultTimes : int32
		{
			DISPID_SRRTStreamTime = 1,
			DISPID_SRRTLength = 2,
			DISPID_SRRTTickCount = 3,
			DISPID_SRRTOffsetFromStart = 4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseAlternate : int32
		{
			DISPID_SPARecoResult = 1,
			DISPID_SPAStartElementInResult = 2,
			DISPID_SPANumberOfElementsInResult = 3,
			DISPID_SPAPhraseInfo = 4,
			DISPID_SPACommit = 5,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseAlternates : int32
		{
			DISPID_SPAsCount = 1,
			DISPID_SPAsItem = 0,
			DISPID_SPAs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseInfo : int32
		{
			DISPID_SPILanguageId = 1,
			DISPID_SPIGrammarId = 2,
			DISPID_SPIStartTime = 3,
			DISPID_SPIAudioStreamPosition = 4,
			DISPID_SPIAudioSizeBytes = 5,
			DISPID_SPIRetainedSizeBytes = 6,
			DISPID_SPIAudioSizeTime = 7,
			DISPID_SPIRule = 8,
			DISPID_SPIProperties = 9,
			DISPID_SPIElements = 10,
			DISPID_SPIReplacements = 11,
			DISPID_SPIEngineId = 12,
			DISPID_SPIEnginePrivateData = 13,
			DISPID_SPISaveToMemory = 14,
			DISPID_SPIGetText = 15,
			DISPID_SPIGetDisplayAttributes = 16,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseElement : int32
		{
			DISPID_SPEAudioTimeOffset = 1,
			DISPID_SPEAudioSizeTime = 2,
			DISPID_SPEAudioStreamOffset = 3,
			DISPID_SPEAudioSizeBytes = 4,
			DISPID_SPERetainedStreamOffset = 5,
			DISPID_SPERetainedSizeBytes = 6,
			DISPID_SPEDisplayText = 7,
			DISPID_SPELexicalForm = 8,
			DISPID_SPEPronunciation = 9,
			DISPID_SPEDisplayAttributes = 10,
			DISPID_SPERequiredConfidence = 11,
			DISPID_SPEActualConfidence = 12,
			DISPID_SPEEngineConfidence = 13,
		}
		[AllowDuplicates]
		public enum SpeechEngineConfidence : int32
		{
			SECLowConfidence = -1,
			SECNormalConfidence = 0,
			SECHighConfidence = 1,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseElements : int32
		{
			DISPID_SPEsCount = 1,
			DISPID_SPEsItem = 0,
			DISPID_SPEs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseReplacement : int32
		{
			DISPID_SPRDisplayAttributes = 1,
			DISPID_SPRText = 2,
			DISPID_SPRFirstElement = 3,
			DISPID_SPRNumberOfElements = 4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseReplacements : int32
		{
			DISPID_SPRsCount = 1,
			DISPID_SPRsItem = 0,
			DISPID_SPRs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseProperty : int32
		{
			DISPID_SPPName = 1,
			DISPID_SPPId = 2,
			DISPID_SPPValue = 3,
			DISPID_SPPFirstElement = 4,
			DISPID_SPPNumberOfElements = 5,
			DISPID_SPPEngineConfidence = 6,
			DISPID_SPPConfidence = 7,
			DISPID_SPPParent = 8,
			DISPID_SPPChildren = 9,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseProperties : int32
		{
			DISPID_SPPsCount = 1,
			DISPID_SPPsItem = 0,
			DISPID_SPPs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseRule : int32
		{
			DISPID_SPRuleName = 1,
			DISPID_SPRuleId = 2,
			DISPID_SPRuleFirstElement = 3,
			DISPID_SPRuleNumberOfElements = 4,
			DISPID_SPRuleParent = 5,
			DISPID_SPRuleChildren = 6,
			DISPID_SPRuleConfidence = 7,
			DISPID_SPRuleEngineConfidence = 8,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhraseRules : int32
		{
			DISPID_SPRulesCount = 1,
			DISPID_SPRulesItem = 0,
			DISPID_SPRules_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechLexicon : int32
		{
			DISPID_SLGenerationId = 1,
			DISPID_SLGetWords = 2,
			DISPID_SLAddPronunciation = 3,
			DISPID_SLAddPronunciationByPhoneIds = 4,
			DISPID_SLRemovePronunciation = 5,
			DISPID_SLRemovePronunciationByPhoneIds = 6,
			DISPID_SLGetPronunciations = 7,
			DISPID_SLGetGenerationChange = 8,
		}
		[AllowDuplicates]
		public enum SpeechLexiconType : int32
		{
			SLTUser = 1,
			SLTApp = 2,
		}
		[AllowDuplicates]
		public enum SpeechPartOfSpeech : int32
		{
			SPSNotOverriden = -1,
			SPSUnknown = 0,
			SPSNoun = 4096,
			SPSVerb = 8192,
			SPSModifier = 12288,
			SPSFunction = 16384,
			SPSInterjection = 20480,
			SPSLMA = 28672,
			SPSSuppressWord = 61440,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechLexiconWords : int32
		{
			DISPID_SLWsCount = 1,
			DISPID_SLWsItem = 0,
			DISPID_SLWs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum SpeechWordType : int32
		{
			SWTAdded = 1,
			SWTDeleted = 2,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechLexiconWord : int32
		{
			DISPID_SLWLangId = 1,
			DISPID_SLWType = 2,
			DISPID_SLWWord = 3,
			DISPID_SLWPronunciations = 4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechLexiconProns : int32
		{
			DISPID_SLPsCount = 1,
			DISPID_SLPsItem = 0,
			DISPID_SLPs_NewEnum = -4,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechLexiconPronunciation : int32
		{
			DISPID_SLPType = 1,
			DISPID_SLPLangId = 2,
			DISPID_SLPPartOfSpeech = 3,
			DISPID_SLPPhoneIds = 4,
			DISPID_SLPSymbolic = 5,
		}
		[AllowDuplicates]
		public enum DISPID_SpeechPhoneConverter : int32
		{
			DISPID_SPCLangId = 1,
			DISPID_SPCPhoneToId = 2,
			DISPID_SPCIdToPhone = 3,
		}
		
		// --- Function Pointers ---
		
		public function void SPNOTIFYCALLBACK(WPARAM wParam, LPARAM lParam);
		
		// --- Structs ---
		
		[CRepr]
		public struct SPEVENT
		{
			public int32 _bitfield;
			public uint32 ulStreamNum;
			public uint64 ullAudioStreamOffset;
			public WPARAM wParam;
			public LPARAM lParam;
		}
		[CRepr]
		public struct SPSERIALIZEDEVENT
		{
			public int32 _bitfield;
			public uint32 ulStreamNum;
			public uint64 ullAudioStreamOffset;
			public uint32 SerializedwParam;
			public int32 SerializedlParam;
		}
		[CRepr]
		public struct SPSERIALIZEDEVENT64
		{
			public int32 _bitfield;
			public uint32 ulStreamNum;
			public uint64 ullAudioStreamOffset;
			public uint64 SerializedwParam;
			public int64 SerializedlParam;
		}
		[CRepr]
		public struct SPEVENTEX
		{
			public int32 _bitfield;
			public uint32 ulStreamNum;
			public uint64 ullAudioStreamOffset;
			public WPARAM wParam;
			public LPARAM lParam;
			public uint64 ullAudioTimeOffset;
		}
		[CRepr]
		public struct SPEVENTSOURCEINFO
		{
			public uint64 ullEventInterest;
			public uint64 ullQueuedInterest;
			public uint32 ulCount;
		}
		[CRepr]
		public struct SPAUDIOSTATUS
		{
			public int32 cbFreeBuffSpace;
			public uint32 cbNonBlockingIO;
			public SPAUDIOSTATE State;
			public uint64 CurSeekPos;
			public uint64 CurDevicePos;
			public uint32 dwAudioLevel;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct SPAUDIOBUFFERINFO
		{
			public uint32 ulMsMinNotification;
			public uint32 ulMsBufferSize;
			public uint32 ulMsEventBias;
		}
		[CRepr]
		public struct SPPHRASEELEMENT
		{
			public uint32 ulAudioTimeOffset;
			public uint32 ulAudioSizeTime;
			public uint32 ulAudioStreamOffset;
			public uint32 ulAudioSizeBytes;
			public uint32 ulRetainedStreamOffset;
			public uint32 ulRetainedSizeBytes;
			public PWSTR pszDisplayText;
			public PWSTR pszLexicalForm;
			public uint16* pszPronunciation;
			public uint8 bDisplayAttributes;
			public int8 RequiredConfidence;
			public int8 ActualConfidence;
			public uint8 Reserved;
			public float SREngineConfidence;
		}
		[CRepr]
		public struct SPPHRASERULE
		{
			public PWSTR pszName;
			public uint32 ulId;
			public uint32 ulFirstElement;
			public uint32 ulCountOfElements;
			public SPPHRASERULE* pNextSibling;
			public SPPHRASERULE* pFirstChild;
			public float SREngineConfidence;
			public int8 Confidence;
		}
		[CRepr]
		public struct SPPHRASEPROPERTY
		{
			public PWSTR pszName;
			public _Anonymous_e__Union Anonymous;
			public PWSTR pszValue;
			public VARIANT vValue;
			public uint32 ulFirstElement;
			public uint32 ulCountOfElements;
			public SPPHRASEPROPERTY* pNextSibling;
			public SPPHRASEPROPERTY* pFirstChild;
			public float SREngineConfidence;
			public int8 Confidence;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 ulId;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 bType;
					public uint8 bReserved;
					public uint16 usArrayIndex;
				}
			}
		}
		[CRepr]
		public struct SPPHRASEREPLACEMENT
		{
			public uint8 bDisplayAttributes;
			public PWSTR pszReplacementText;
			public uint32 ulFirstElement;
			public uint32 ulCountOfElements;
		}
		[CRepr]
		public struct SPSEMANTICERRORINFO
		{
			public uint32 ulLineNumber;
			public PWSTR pszScriptLine;
			public PWSTR pszSource;
			public PWSTR pszDescription;
			public HRESULT hrResultCode;
		}
		[CRepr]
		public struct SPPHRASE_50
		{
			public uint32 cbSize;
			public uint16 LangID;
			public uint16 wHomophoneGroupId;
			public uint64 ullGrammarID;
			public uint64 ftStartTime;
			public uint64 ullAudioStreamPosition;
			public uint32 ulAudioSizeBytes;
			public uint32 ulRetainedSizeBytes;
			public uint32 ulAudioSizeTime;
			public SPPHRASERULE Rule;
			public SPPHRASEPROPERTY* pProperties;
			public SPPHRASEELEMENT* pElements;
			public uint32 cReplacements;
			public SPPHRASEREPLACEMENT* pReplacements;
			public Guid SREngineID;
			public uint32 ulSREnginePrivateDataSize;
			public uint8* pSREnginePrivateData;
		}
		[CRepr]
		public struct SPPHRASE
		{
			public SPPHRASE_50 __AnonymousBase_sapi53_L5821_C34;
			public PWSTR pSML;
			public SPSEMANTICERRORINFO* pSemanticErrorInfo;
		}
		[CRepr]
		public struct SPSERIALIZEDPHRASE
		{
			public uint32 ulSerializedSize;
		}
		[CRepr]
		public struct SPRULE
		{
			public PWSTR pszRuleName;
			public uint32 ulRuleId;
			public uint32 dwAttributes;
		}
		[CRepr]
		public struct SPBINARYGRAMMAR
		{
			public uint32 ulTotalSerializedSize;
		}
		[CRepr]
		public struct SPSTATEHANDLE__
		{
			public int32 unused;
		}
		[CRepr]
		public struct SPWORDPRONUNCIATION
		{
			public SPWORDPRONUNCIATION* pNextWordPronunciation;
			public SPLEXICONTYPE eLexiconType;
			public uint16 LangID;
			public uint16 wPronunciationFlags;
			public SPPARTOFSPEECH ePartOfSpeech;
			public uint16[] szPronunciation;
		}
		[CRepr]
		public struct SPWORDPRONUNCIATIONLIST
		{
			public uint32 ulSize;
			public uint8* pvBuffer;
			public SPWORDPRONUNCIATION* pFirstWordPronunciation;
		}
		[CRepr]
		public struct SPWORD
		{
			public SPWORD* pNextWord;
			public uint16 LangID;
			public uint16 wReserved;
			public SPWORDTYPE eWordType;
			public PWSTR pszWord;
			public SPWORDPRONUNCIATION* pFirstWordPronunciation;
		}
		[CRepr]
		public struct SPWORDLIST
		{
			public uint32 ulSize;
			public uint8* pvBuffer;
			public SPWORD* pFirstWord;
		}
		[CRepr]
		public struct SPSHORTCUTPAIR
		{
			public SPSHORTCUTPAIR* pNextSHORTCUTPAIR;
			public uint16 LangID;
			public SPSHORTCUTTYPE shType;
			public PWSTR pszDisplay;
			public PWSTR pszSpoken;
		}
		[CRepr]
		public struct SPSHORTCUTPAIRLIST
		{
			public uint32 ulSize;
			public uint8* pvBuffer;
			public SPSHORTCUTPAIR* pFirstShortcutPair;
		}
		[CRepr]
		public struct SPVPITCH
		{
			public int32 MiddleAdj;
			public int32 RangeAdj;
		}
		[CRepr]
		public struct SPVCONTEXT
		{
			public PWSTR pCategory;
			public PWSTR pBefore;
			public PWSTR pAfter;
		}
		[CRepr]
		public struct SPVSTATE
		{
			public SPVACTIONS eAction;
			public uint16 LangID;
			public uint16 wReserved;
			public int32 EmphAdj;
			public int32 RateAdj;
			public uint32 Volume;
			public SPVPITCH PitchAdj;
			public uint32 SilenceMSecs;
			public uint16* pPhoneIds;
			public SPPARTOFSPEECH ePartOfSpeech;
			public SPVCONTEXT Context;
		}
		[CRepr]
		public struct SPVOICESTATUS
		{
			public uint32 ulCurrentStream;
			public uint32 ulLastStreamQueued;
			public HRESULT hrLastResult;
			public uint32 dwRunningState;
			public uint32 ulInputWordPos;
			public uint32 ulInputWordLen;
			public uint32 ulInputSentPos;
			public uint32 ulInputSentLen;
			public int32 lBookmarkId;
			public uint16 PhonemeId;
			public SPVISEMES VisemeId;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct SPRECORESULTTIMES
		{
			public FILETIME ftStreamTime;
			public uint64 ullLength;
			public uint32 dwTickCount;
			public uint64 ullStart;
		}
		[CRepr]
		public struct SPSERIALIZEDRESULT
		{
			public uint32 ulSerializedSize;
		}
		[CRepr]
		public struct SPTEXTSELECTIONINFO
		{
			public uint32 ulStartActiveOffset;
			public uint32 cchActiveChars;
			public uint32 ulStartSelection;
			public uint32 cchSelection;
		}
		[CRepr]
		public struct SPPROPERTYINFO
		{
			public PWSTR pszName;
			public uint32 ulId;
			public PWSTR pszValue;
			public VARIANT vValue;
		}
		[CRepr]
		public struct SPRECOCONTEXTSTATUS
		{
			public SPINTERFERENCE eInterference;
			public char16[255] szRequestTypeOfUI;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct SPRECOGNIZERSTATUS
		{
			public SPAUDIOSTATUS AudioStatus;
			public uint64 ullRecognitionStreamPos;
			public uint32 ulStreamNumber;
			public uint32 ulNumActive;
			public Guid clsidEngine;
			public uint32 cLangIDs;
			public uint16[20] aLangID;
			public uint64 ullRecognitionStreamTime;
		}
		[CRepr]
		public struct SPNORMALIZATIONLIST
		{
			public uint32 ulSize;
			public uint16** ppszzNormalizedList;
		}
		[CRepr]
		public struct SPDISPLAYTOKEN
		{
			public PWSTR pszLexical;
			public PWSTR pszDisplay;
			public uint8 bDisplayAttributes;
		}
		[CRepr]
		public struct SPDISPLAYPHRASE
		{
			public uint32 ulNumTokens;
			public SPDISPLAYTOKEN* pTokens;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SpNotifyTranslator = .(0xe2ae5372, 0x5d40, 0x11d2, 0x96, 0x0e, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
		public const Guid CLSID_SpObjectTokenCategory = .(0xa910187f, 0x0c7a, 0x45ac, 0x92, 0xcc, 0x59, 0xed, 0xaf, 0xb7, 0x7b, 0x53);
		public const Guid CLSID_SpObjectToken = .(0xef411752, 0x3736, 0x4cb4, 0x9c, 0x8c, 0x8e, 0xf4, 0xcc, 0xb5, 0x8e, 0xfe);
		public const Guid CLSID_SpResourceManager = .(0x96749373, 0x3391, 0x11d2, 0x9e, 0xe3, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
		public const Guid CLSID_SpStreamFormatConverter = .(0x7013943a, 0xe2ec, 0x11d2, 0xa0, 0x86, 0x00, 0xc0, 0x4f, 0x8e, 0xf9, 0xb5);
		public const Guid CLSID_SpMMAudioEnum = .(0xab1890a0, 0xe91f, 0x11d2, 0xbb, 0x91, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
		public const Guid CLSID_SpMMAudioIn = .(0xcf3d2e50, 0x53f2, 0x11d2, 0x96, 0x0c, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
		public const Guid CLSID_SpMMAudioOut = .(0xa8c680eb, 0x3d32, 0x11d2, 0x9e, 0xe7, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
		public const Guid CLSID_SpStream = .(0x715d9c59, 0x4442, 0x11d2, 0x96, 0x05, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
		public const Guid CLSID_SpVoice = .(0x96749377, 0x3391, 0x11d2, 0x9e, 0xe3, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
		public const Guid CLSID_SpSharedRecoContext = .(0x47206204, 0x5eca, 0x11d2, 0x96, 0x0f, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
		public const Guid CLSID_SpInprocRecognizer = .(0x41b89b6b, 0x9399, 0x11d2, 0x96, 0x23, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
		public const Guid CLSID_SpSharedRecognizer = .(0x3bee4890, 0x4fe9, 0x4a37, 0x8c, 0x1e, 0x5e, 0x7e, 0x12, 0x79, 0x1c, 0x1f);
		public const Guid CLSID_SpLexicon = .(0x0655e396, 0x25d0, 0x11d3, 0x9c, 0x26, 0x00, 0xc0, 0x4f, 0x8e, 0xf8, 0x7c);
		public const Guid CLSID_SpUnCompressedLexicon = .(0xc9e37c15, 0xdf92, 0x4727, 0x85, 0xd6, 0x72, 0xe5, 0xee, 0xb6, 0x99, 0x5a);
		public const Guid CLSID_SpCompressedLexicon = .(0x90903716, 0x2f42, 0x11d3, 0x9c, 0x26, 0x00, 0xc0, 0x4f, 0x8e, 0xf8, 0x7c);
		public const Guid CLSID_SpShortcut = .(0x0d722f1a, 0x9fcf, 0x4e62, 0x96, 0xd8, 0x6d, 0xf8, 0xf0, 0x1a, 0x26, 0xaa);
		public const Guid CLSID_SpPhoneConverter = .(0x9185f743, 0x1143, 0x4c28, 0x86, 0xb5, 0xbf, 0xf1, 0x4f, 0x20, 0xe5, 0xc8);
		public const Guid CLSID_SpPhoneticAlphabetConverter = .(0x4f414126, 0xdfe3, 0x4629, 0x99, 0xee, 0x79, 0x79, 0x78, 0x31, 0x7e, 0xad);
		public const Guid CLSID_SpNullPhoneConverter = .(0x455f24e9, 0x7396, 0x4a16, 0x97, 0x15, 0x7c, 0x0f, 0xdb, 0xe3, 0xef, 0xe3);
		public const Guid CLSID_SpTextSelectionInformation = .(0x0f92030a, 0xcbfd, 0x4ab8, 0xa1, 0x64, 0xff, 0x59, 0x85, 0x54, 0x7f, 0xf6);
		public const Guid CLSID_SpPhraseInfoBuilder = .(0xc23fc28d, 0xc55f, 0x4720, 0x8b, 0x32, 0x91, 0xf7, 0x3c, 0x2b, 0xd5, 0xd1);
		public const Guid CLSID_SpAudioFormat = .(0x9ef96870, 0xe160, 0x4792, 0x82, 0x0d, 0x48, 0xcf, 0x06, 0x49, 0xe4, 0xec);
		public const Guid CLSID_SpWaveFormatEx = .(0xc79a574c, 0x63be, 0x44b9, 0x80, 0x1f, 0x28, 0x3f, 0x87, 0xf8, 0x98, 0xbe);
		public const Guid CLSID_SpInProcRecoContext = .(0x73ad6842, 0xace0, 0x45e8, 0xa4, 0xdd, 0x87, 0x95, 0x88, 0x1a, 0x2c, 0x2a);
		public const Guid CLSID_SpCustomStream = .(0x8dbef13f, 0x1948, 0x4aa8, 0x8c, 0xf0, 0x04, 0x8e, 0xeb, 0xed, 0x95, 0xd8);
		public const Guid CLSID_SpFileStream = .(0x947812b3, 0x2ae1, 0x4644, 0xba, 0x86, 0x9e, 0x90, 0xde, 0xd7, 0xec, 0x91);
		public const Guid CLSID_SpMemoryStream = .(0x5fb7ef7d, 0xdff4, 0x468a, 0xb6, 0xb7, 0x2f, 0xcb, 0xd1, 0x88, 0xf9, 0x94);
		
		// --- COM Interfaces ---
		
		public struct ISpNotifyCallback {}
		public struct ISpNotifySource {}
		public struct ISpNotifySink {}
		public struct ISpNotifyTranslator {}
		public struct ISpDataKey {}
		public struct ISpRegDataKey {}
		public struct ISpObjectTokenCategory {}
		public struct ISpObjectToken {}
		public struct ISpObjectTokenInit {}
		public struct IEnumSpObjectTokens {}
		public struct ISpObjectWithToken {}
		public struct ISpResourceManager {}
		public struct ISpEventSource {}
		public struct ISpEventSource2 {}
		public struct ISpEventSink {}
		public struct ISpStreamFormat {}
		public struct ISpStream {}
		public struct ISpStreamFormatConverter {}
		public struct ISpAudio {}
		public struct ISpMMSysAudio {}
		public struct ISpTranscript {}
		public struct ISpLexicon {}
		public struct ISpContainerLexicon {}
		public struct ISpShortcut {}
		public struct ISpPhoneConverter {}
		public struct ISpPhoneticAlphabetConverter {}
		public struct ISpPhoneticAlphabetSelection {}
		public struct ISpVoice {}
		public struct ISpPhrase {}
		public struct ISpPhraseAlt {}
		public struct ISpPhrase2 {}
		public struct ISpRecoResult {}
		public struct ISpRecoResult2 {}
		public struct ISpXMLRecoResult {}
		public struct ISpGrammarBuilder {}
		public struct ISpRecoGrammar {}
		public struct ISpGrammarBuilder2 {}
		public struct ISpRecoGrammar2 {}
		public struct ISpeechResourceLoader {}
		public struct ISpRecoContext {}
		public struct ISpRecoContext2 {}
		public struct ISpProperties {}
		public struct ISpRecognizer {}
		public struct ISpSerializeState {}
		public struct ISpRecognizer2 {}
		public struct ISpEnginePronunciation {}
		public struct ISpDisplayAlternates {}
		public struct ISpeechDataKey {}
		public struct ISpeechObjectToken {}
		public struct ISpeechObjectTokens {}
		public struct ISpeechObjectTokenCategory {}
		public struct ISpeechAudioBufferInfo {}
		public struct ISpeechAudioStatus {}
		public struct ISpeechAudioFormat {}
		public struct ISpeechWaveFormatEx {}
		public struct ISpeechBaseStream {}
		public struct ISpeechFileStream {}
		public struct ISpeechMemoryStream {}
		public struct ISpeechCustomStream {}
		public struct ISpeechAudio {}
		public struct ISpeechMMSysAudio {}
		public struct ISpeechVoice {}
		public struct ISpeechVoiceStatus {}
		public struct _ISpeechVoiceEvents {}
		public struct ISpeechRecognizer {}
		public struct ISpeechRecognizerStatus {}
		public struct ISpeechRecoContext {}
		public struct ISpeechRecoGrammar {}
		public struct _ISpeechRecoContextEvents {}
		public struct ISpeechGrammarRule {}
		public struct ISpeechGrammarRules {}
		public struct ISpeechGrammarRuleState {}
		public struct ISpeechGrammarRuleStateTransition {}
		public struct ISpeechGrammarRuleStateTransitions {}
		public struct ISpeechTextSelectionInformation {}
		public struct ISpeechRecoResult {}
		public struct ISpeechRecoResult2 {}
		public struct ISpeechRecoResultTimes {}
		public struct ISpeechPhraseAlternate {}
		public struct ISpeechPhraseAlternates {}
		public struct ISpeechPhraseInfo {}
		public struct ISpeechPhraseElement {}
		public struct ISpeechPhraseElements {}
		public struct ISpeechPhraseReplacement {}
		public struct ISpeechPhraseReplacements {}
		public struct ISpeechPhraseProperty {}
		public struct ISpeechPhraseProperties {}
		public struct ISpeechPhraseRule {}
		public struct ISpeechPhraseRules {}
		public struct ISpeechLexicon {}
		public struct ISpeechLexiconWords {}
		public struct ISpeechLexiconWord {}
		public struct ISpeechLexiconPronunciations {}
		public struct ISpeechLexiconPronunciation {}
		public struct ISpeechXMLRecoResult {}
		public struct ISpeechRecoResultDispatch {}
		public struct ISpeechPhraseInfoBuilder {}
		public struct ISpeechPhoneConverter {}
		
	}
}
