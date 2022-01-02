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
		
		public enum SPDATAKEYLOCATION : int32
		{
			DefaultLocation = 0,
			CurrentUser = 1,
			LocalMachine = 2,
			CurrentConfig = 5,
		}
		public enum SPSTREAMFORMAT : int32
		{
			Default = -1,
			NoAssignedFormat = 0,
			Text = 1,
			NonStandardFormat = 2,
			ExtendedAudioFormat = 3,
			_8kHz8BitMono = 4,
			_8kHz8BitStereo = 5,
			_8kHz16BitMono = 6,
			_8kHz16BitStereo = 7,
			_11kHz8BitMono = 8,
			_11kHz8BitStereo = 9,
			_11kHz16BitMono = 10,
			_11kHz16BitStereo = 11,
			_12kHz8BitMono = 12,
			_12kHz8BitStereo = 13,
			_12kHz16BitMono = 14,
			_12kHz16BitStereo = 15,
			_16kHz8BitMono = 16,
			_16kHz8BitStereo = 17,
			_16kHz16BitMono = 18,
			_16kHz16BitStereo = 19,
			_22kHz8BitMono = 20,
			_22kHz8BitStereo = 21,
			_22kHz16BitMono = 22,
			_22kHz16BitStereo = 23,
			_24kHz8BitMono = 24,
			_24kHz8BitStereo = 25,
			_24kHz16BitMono = 26,
			_24kHz16BitStereo = 27,
			_32kHz8BitMono = 28,
			_32kHz8BitStereo = 29,
			_32kHz16BitMono = 30,
			_32kHz16BitStereo = 31,
			_44kHz8BitMono = 32,
			_44kHz8BitStereo = 33,
			_44kHz16BitMono = 34,
			_44kHz16BitStereo = 35,
			_48kHz8BitMono = 36,
			_48kHz8BitStereo = 37,
			_48kHz16BitMono = 38,
			_48kHz16BitStereo = 39,
			TrueSpeech_8kHz1BitMono = 40,
			CCITT_ALaw_8kHzMono = 41,
			CCITT_ALaw_8kHzStereo = 42,
			CCITT_ALaw_11kHzMono = 43,
			CCITT_ALaw_11kHzStereo = 44,
			CCITT_ALaw_22kHzMono = 45,
			CCITT_ALaw_22kHzStereo = 46,
			CCITT_ALaw_44kHzMono = 47,
			CCITT_ALaw_44kHzStereo = 48,
			CCITT_uLaw_8kHzMono = 49,
			CCITT_uLaw_8kHzStereo = 50,
			CCITT_uLaw_11kHzMono = 51,
			CCITT_uLaw_11kHzStereo = 52,
			CCITT_uLaw_22kHzMono = 53,
			CCITT_uLaw_22kHzStereo = 54,
			CCITT_uLaw_44kHzMono = 55,
			CCITT_uLaw_44kHzStereo = 56,
			ADPCM_8kHzMono = 57,
			ADPCM_8kHzStereo = 58,
			ADPCM_11kHzMono = 59,
			ADPCM_11kHzStereo = 60,
			ADPCM_22kHzMono = 61,
			ADPCM_22kHzStereo = 62,
			ADPCM_44kHzMono = 63,
			ADPCM_44kHzStereo = 64,
			GSM610_8kHzMono = 65,
			GSM610_11kHzMono = 66,
			GSM610_22kHzMono = 67,
			GSM610_44kHzMono = 68,
			NUM_FORMATS = 69,
		}
		public enum SPEVENTLPARAMTYPE : int32
		{
			UNDEFINED = 0,
			TOKEN = 1,
			OBJECT = 2,
			POINTER = 3,
			STRING = 4,
		}
		[AllowDuplicates]
		public enum SPEVENTENUM : int32
		{
			UNDEFINED = 0,
			START_INPUT_STREAM = 1,
			END_INPUT_STREAM = 2,
			VOICE_CHANGE = 3,
			TTS_BOOKMARK = 4,
			WORD_BOUNDARY = 5,
			PHONEME = 6,
			SENTENCE_BOUNDARY = 7,
			VISEME = 8,
			TTS_AUDIO_LEVEL = 9,
			TTS_PRIVATE = 15,
			MIN_TTS = 1,
			MAX_TTS = 15,
			END_SR_STREAM = 34,
			SOUND_START = 35,
			SOUND_END = 36,
			PHRASE_START = 37,
			RECOGNITION = 38,
			HYPOTHESIS = 39,
			SR_BOOKMARK = 40,
			PROPERTY_NUM_CHANGE = 41,
			PROPERTY_STRING_CHANGE = 42,
			FALSE_RECOGNITION = 43,
			INTERFERENCE = 44,
			REQUEST_UI = 45,
			RECO_STATE_CHANGE = 46,
			ADAPTATION = 47,
			START_SR_STREAM = 48,
			RECO_OTHER_CONTEXT = 49,
			SR_AUDIO_LEVEL = 50,
			SR_RETAINEDAUDIO = 51,
			SR_PRIVATE = 52,
			RESERVED4 = 53,
			RESERVED5 = 54,
			RESERVED6 = 55,
			MIN_SR = 34,
			MAX_SR = 55,
			RESERVED1 = 30,
			RESERVED2 = 33,
			RESERVED3 = 63,
		}
		public enum SPINTERFERENCE : int32
		{
			NONE = 0,
			NOISE = 1,
			NOSIGNAL = 2,
			TOOLOUD = 3,
			TOOQUIET = 4,
			TOOFAST = 5,
			TOOSLOW = 6,
			LATENCY_WARNING = 7,
			LATENCY_TRUNCATE_BEGIN = 8,
			LATENCY_TRUNCATE_END = 9,
		}
		public enum SPENDSRSTREAMFLAGS : int32
		{
			NONE = 0,
			STREAM_RELEASED = 1,
			EMULATED = 2,
		}
		public enum SPVFEATURE : int32
		{
			STRESSED = 1,
			EMPHASIS = 2,
		}
		public enum SPVISEMES : int32
		{
			_0 = 0,
			_1 = 1,
			_2 = 2,
			_3 = 3,
			_4 = 4,
			_5 = 5,
			_6 = 6,
			_7 = 7,
			_8 = 8,
			_9 = 9,
			_10 = 10,
			_11 = 11,
			_12 = 12,
			_13 = 13,
			_14 = 14,
			_15 = 15,
			_16 = 16,
			_17 = 17,
			_18 = 18,
			_19 = 19,
			_20 = 20,
			_21 = 21,
		}
		public enum SPFILEMODE : int32
		{
			OPEN_READONLY = 0,
			OPEN_READWRITE = 1,
			CREATE = 2,
			CREATE_ALWAYS = 3,
			NUM_MODES = 4,
		}
		public enum SPAUDIOSTATE : int32
		{
			CLOSED = 0,
			STOP = 1,
			PAUSE = 2,
			RUN = 3,
		}
		public enum SPDISPLYATTRIBUTES : int32
		{
			ONE_TRAILING_SPACE = 2,
			TWO_TRAILING_SPACES = 4,
			CONSUME_LEADING_SPACES = 8,
			BUFFER_POSITION = 16,
			ALL = 31,
			USER_SPECIFIED = 128,
		}
		public enum SPPHRASEPROPERTYUNIONTYPE : int32
		{
			UNUSED = 0,
			ARRAY_INDEX = 1,
		}
		public enum SPSEMANTICFORMAT : int32
		{
			SAPI_PROPERTIES = 0,
			SRGS_SEMANTICINTERPRETATION_MS = 1,
			SRGS_SAPIPROPERTIES = 2,
			UPS = 4,
			SRGS_SEMANTICINTERPRETATION_W3C = 8,
		}
		public enum SPVALUETYPE : int32
		{
			PROPERTY = 1,
			REPLACEMENT = 2,
			RULE = 4,
			DISPLAYTEXT = 8,
			LEXICALFORM = 16,
			PRONUNCIATION = 32,
			AUDIO = 64,
			ALTERNATES = 128,
			ALL = 255,
		}
		public enum SPPHRASERNG : int32
		{
			SPPR_ALL_ELEMENTS = -1,
		}
		public enum SPRECOEVENTFLAGS : int32
		{
			AutoPause = 1,
			Emulated = 2,
			SMLTimeout = 4,
			ExtendableParse = 8,
			ReSent = 16,
			Hypothesis = 32,
			FalseRecognition = 64,
		}
		public enum SPPARTOFSPEECH : int32
		{
			NotOverriden = -1,
			Unknown = 0,
			Noun = 4096,
			Verb = 8192,
			Modifier = 12288,
			Function = 16384,
			Interjection = 20480,
			Noncontent = 24576,
			LMA = 28672,
			SuppressWord = 61440,
		}
		public enum SPLEXICONTYPE : int32
		{
			USER = 1,
			APP = 2,
			VENDORLEXICON = 4,
			LETTERTOSOUND = 8,
			MORPHOLOGY = 16,
			RESERVED4 = 32,
			USER_SHORTCUT = 64,
			RESERVED6 = 128,
			RESERVED7 = 256,
			RESERVED8 = 512,
			RESERVED9 = 1024,
			RESERVED10 = 2048,
			PRIVATE1 = 4096,
			PRIVATE2 = 8192,
			PRIVATE3 = 16384,
			PRIVATE4 = 32768,
			PRIVATE5 = 65536,
			PRIVATE6 = 131072,
			PRIVATE7 = 262144,
			PRIVATE8 = 524288,
			PRIVATE9 = 1048576,
			PRIVATE10 = 2097152,
			PRIVATE11 = 4194304,
			PRIVATE12 = 8388608,
			PRIVATE13 = 16777216,
			PRIVATE14 = 33554432,
			PRIVATE15 = 67108864,
			PRIVATE16 = 134217728,
			PRIVATE17 = 268435456,
			PRIVATE18 = 536870912,
			PRIVATE19 = 1073741824,
			PRIVATE20 = -2147483648,
		}
		public enum SPWORDTYPE : int32
		{
			ADDED = 1,
			DELETED = 2,
		}
		public enum SPPRONUNCIATIONFLAGS : int32
		{
			ePRONFLAG_USED = 1,
		}
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
		public enum SPVACTIONS : int32
		{
			Speak = 0,
			Silence = 1,
			Pronounce = 2,
			Bookmark = 3,
			SpellOut = 4,
			Section = 5,
			ParseUnknownTag = 6,
		}
		public enum SPRUNSTATE : int32
		{
			DONE = 1,
			IS_SPEAKING = 2,
		}
		public enum SPVLIMITS : int32
		{
			SPMIN_VOLUME = 0,
			SPMAX_VOLUME = 100,
			SPMIN_RATE = -10,
			SPMAX_RATE = 10,
		}
		public enum SPVPRIORITY : int32
		{
			NORMAL = 0,
			ALERT = 1,
			OVER = 2,
		}
		[AllowDuplicates]
		public enum SPEAKFLAGS : int32
		{
			DEFAULT = 0,
			ASYNC = 1,
			PURGEBEFORESPEAK = 2,
			IS_FILENAME = 4,
			IS_XML = 8,
			IS_NOT_XML = 16,
			PERSIST_XML = 32,
			NLP_SPEAK_PUNC = 64,
			PARSE_SAPI = 128,
			PARSE_SSML = 256,
			PARSE_AUTODETECT = 0,
			NLP_MASK = 64,
			PARSE_MASK = 384,
			VOICE_MASK = 511,
			UNUSED_FLAGS = -512,
		}
		public enum SPXMLRESULTOPTIONS : int32
		{
			SML = 0,
			Alternates_SML = 1,
		}
		public enum SPCOMMITFLAGS : int32
		{
			NONE = 0,
			ADD_TO_USER_LEXICON = 1,
			DEFINITE_CORRECTION = 2,
		}
		public enum SPWORDPRONOUNCEABLE : int32
		{
			UNKNOWN_WORD_UNPRONOUNCEABLE = 0,
			UNKNOWN_WORD_PRONOUNCEABLE = 1,
			KNOWN_WORD_PRONOUNCEABLE = 2,
		}
		public enum SPGRAMMARSTATE : int32
		{
			DISABLED = 0,
			ENABLED = 1,
			EXCLUSIVE = 3,
		}
		public enum SPCONTEXTSTATE : int32
		{
			DISABLED = 0,
			ENABLED = 1,
		}
		public enum SPRULESTATE : int32
		{
			INACTIVE = 0,
			ACTIVE = 1,
			ACTIVE_WITH_AUTO_PAUSE = 3,
			ACTIVE_USER_DELIMITED = 4,
		}
		public enum SPGRAMMARWORDTYPE : int32
		{
			DISPLAY = 0,
			LEXICAL = 1,
			PRONUNCIATION = 2,
			LEXICAL_NO_SPECIAL_CHARS = 3,
		}
		public enum SPCFGRULEATTRIBUTES : int32
		{
			TopLevel = 1,
			Active = 2,
			Export = 4,
			Import = 8,
			Interpreter = 16,
			Dynamic = 32,
			Root = 64,
			AutoPause = 65536,
			UserDelimited = 131072,
		}
		public enum SPLOADOPTIONS : int32
		{
			STATIC = 0,
			DYNAMIC = 1,
		}
		public enum SPMATCHINGMODE : int32
		{
			AllWords = 0,
			Subsequence = 1,
			OrderedSubset = 3,
			SubsequenceContentRequired = 5,
			OrderedSubsetContentRequired = 7,
		}
		public enum PHONETICALPHABET : int32
		{
			Ipa = 0,
			Ups = 1,
			Sapi = 2,
		}
		public enum SPBOOKMARKOPTIONS : int32
		{
			NONE = 0,
			PAUSE = 1,
			AHEAD = 2,
			TIME_UNITS = 4,
		}
		public enum SPAUDIOOPTIONS : int32
		{
			NONE = 0,
			RETAIN_AUDIO = 1,
		}
		public enum SPGRAMMAROPTIONS : int32
		{
			SAPI = 1,
			SRGS = 2,
			UPS = 4,
			SRGS_MS_SCRIPT = 8,
			SRGS_W3C_SCRIPT = 256,
			SRGS_STG_SCRIPT = 512,
			SRGS_SCRIPT = 778,
			FILE = 16,
			HTTP = 32,
			RES = 64,
			OBJECT = 128,
			DEFAULT = 1019,
			ALL = 1023,
		}
		public enum SPADAPTATIONSETTINGS : int32
		{
			Default = 0,
			CurrentRecognizer = 1,
			RecoProfile = 2,
			Immediate = 4,
			Reset = 8,
			HighVolumeDataSource = 16,
		}
		public enum SPADAPTATIONRELEVANCE : int32
		{
			Unknown = 0,
			Low = 1,
			Medium = 2,
			High = 3,
		}
		public enum SPWAVEFORMATTYPE : int32
		{
			INPUT = 0,
			SRENGINE = 1,
		}
		public enum SPRECOSTATE : int32
		{
			INACTIVE = 0,
			ACTIVE = 1,
			ACTIVE_ALWAYS = 2,
			INACTIVE_WITH_PURGE = 3,
			NUM_STATES = 4,
		}
		public enum DISPID_SpeechDataKey : int32
		{
			SDKSetBinaryValue = 1,
			SDKGetBinaryValue = 2,
			SDKSetStringValue = 3,
			SDKGetStringValue = 4,
			SDKSetLongValue = 5,
			SDKGetlongValue = 6,
			SDKOpenKey = 7,
			SDKCreateKey = 8,
			SDKDeleteKey = 9,
			SDKDeleteValue = 10,
			SDKEnumKeys = 11,
			SDKEnumValues = 12,
		}
		public enum DISPID_SpeechObjectToken : int32
		{
			SOTId = 1,
			SOTDataKey = 2,
			SOTCategory = 3,
			SOTGetDescription = 4,
			SOTSetId = 5,
			SOTGetAttribute = 6,
			SOTCreateInstance = 7,
			SOTRemove = 8,
			SOTGetStorageFileName = 9,
			SOTRemoveStorageFileName = 10,
			SOTIsUISupported = 11,
			SOTDisplayUI = 12,
			SOTMatchesAttributes = 13,
		}
		public enum SpeechDataKeyLocation : int32
		{
			SDKLDefaultLocation = 0,
			SDKLCurrentUser = 1,
			SDKLLocalMachine = 2,
			SDKLCurrentConfig = 5,
		}
		public enum SpeechTokenContext : uint32
		{
			STCInprocServer = 1,
			STCInprocHandler = 2,
			STCLocalServer = 4,
			STCRemoteServer = 16,
			STCAll = 23,
		}
		public enum SpeechTokenShellFolder : int32
		{
			AppData = 26,
			LocalAppData = 28,
			CommonAppData = 35,
			FlagCreate = 32768,
		}
		public enum DISPID_SpeechObjectTokens : int32
		{
			SOTsCount = 1,
			SOTsItem = 0,
			SOTs_NewEnum = -4,
		}
		public enum DISPID_SpeechObjectTokenCategory : int32
		{
			SOTCId = 1,
			SOTCDefault = 2,
			SOTCSetId = 3,
			SOTCGetDataKey = 4,
			SOTCEnumerateTokens = 5,
		}
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
		public enum DISPID_SpeechAudioFormat : int32
		{
			SAFType = 1,
			SAFGuid = 2,
			SAFGetWaveFormatEx = 3,
			SAFSetWaveFormatEx = 4,
		}
		public enum DISPID_SpeechBaseStream : int32
		{
			SBSFormat = 1,
			SBSRead = 2,
			SBSWrite = 3,
			SBSSeek = 4,
		}
		public enum SpeechStreamSeekPositionType : uint32
		{
			Start = 0,
			CurrentPosition = 1,
			End = 2,
		}
		public enum DISPID_SpeechAudio : int32
		{
			SAStatus = 200,
			SABufferInfo = 201,
			SADefaultFormat = 202,
			SAVolume = 203,
			SABufferNotifySize = 204,
			SAEventHandle = 205,
			SASetState = 206,
		}
		public enum SpeechAudioState : int32
		{
			SASClosed = 0,
			SASStop = 1,
			SASPause = 2,
			SASRun = 3,
		}
		public enum DISPID_SpeechMMSysAudio : int32
		{
			SMSADeviceId = 300,
			SMSALineId = 301,
			SMSAMMHandle = 302,
		}
		public enum DISPID_SpeechFileStream : int32
		{
			SFSOpen = 100,
			SFSClose = 101,
		}
		public enum SpeechStreamFileMode : int32
		{
			SSFMOpenForRead = 0,
			SSFMOpenReadWrite = 1,
			SSFMCreate = 2,
			SSFMCreateForWrite = 3,
		}
		public enum DISPID_SpeechCustomStream : int32
		{
			SCSBaseStream = 100,
		}
		public enum DISPID_SpeechMemoryStream : int32
		{
			SMSSetData = 100,
			SMSGetData = 101,
		}
		public enum DISPID_SpeechAudioStatus : int32
		{
			SASFreeBufferSpace = 1,
			SASNonBlockingIO = 2,
			SASState = 3,
			SASCurrentSeekPosition = 4,
			SASCurrentDevicePosition = 5,
		}
		public enum DISPID_SpeechAudioBufferInfo : int32
		{
			SABIMinNotification = 1,
			SABIBufferSize = 2,
			SABIEventBias = 3,
		}
		public enum DISPID_SpeechWaveFormatEx : int32
		{
			SWFEFormatTag = 1,
			SWFEChannels = 2,
			SWFESamplesPerSec = 3,
			SWFEAvgBytesPerSec = 4,
			SWFEBlockAlign = 5,
			SWFEBitsPerSample = 6,
			SWFEExtraData = 7,
		}
		public enum DISPID_SpeechVoice : int32
		{
			SVStatus = 1,
			SVVoice = 2,
			SVAudioOutput = 3,
			SVAudioOutputStream = 4,
			SVRate = 5,
			SVVolume = 6,
			SVAllowAudioOuputFormatChangesOnNextSet = 7,
			SVEventInterests = 8,
			SVPriority = 9,
			SVAlertBoundary = 10,
			SVSyncronousSpeakTimeout = 11,
			SVSpeak = 12,
			SVSpeakStream = 13,
			SVPause = 14,
			SVResume = 15,
			SVSkip = 16,
			SVGetVoices = 17,
			SVGetAudioOutputs = 18,
			SVWaitUntilDone = 19,
			SVSpeakCompleteEvent = 20,
			SVIsUISupported = 21,
			SVDisplayUI = 22,
		}
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
		public enum DISPID_SpeechVoiceStatus : int32
		{
			SVSCurrentStreamNumber = 1,
			SVSLastStreamNumberQueued = 2,
			SVSLastResult = 3,
			SVSRunningState = 4,
			SVSInputWordPosition = 5,
			SVSInputWordLength = 6,
			SVSInputSentencePosition = 7,
			SVSInputSentenceLength = 8,
			SVSLastBookmark = 9,
			SVSLastBookmarkId = 10,
			SVSPhonemeId = 11,
			SVSVisemeId = 12,
		}
		public enum SpeechRunState : int32
		{
			SRSEDone = 1,
			SRSEIsSpeaking = 2,
		}
		public enum SpeechVisemeType : int32
		{
			_0 = 0,
			_1 = 1,
			_2 = 2,
			_3 = 3,
			_4 = 4,
			_5 = 5,
			_6 = 6,
			_7 = 7,
			_8 = 8,
			_9 = 9,
			_10 = 10,
			_11 = 11,
			_12 = 12,
			_13 = 13,
			_14 = 14,
			_15 = 15,
			_16 = 16,
			_17 = 17,
			_18 = 18,
			_19 = 19,
			_20 = 20,
			_21 = 21,
		}
		public enum SpeechVisemeFeature : int32
		{
			None = 0,
			Stressed = 1,
			Emphasis = 2,
		}
		public enum DISPID_SpeechVoiceEvent : int32
		{
			SVEStreamStart = 1,
			SVEStreamEnd = 2,
			SVEVoiceChange = 3,
			SVEBookmark = 4,
			SVEWord = 5,
			SVEPhoneme = 6,
			SVESentenceBoundary = 7,
			SVEViseme = 8,
			SVEAudioLevel = 9,
			SVEEnginePrivate = 10,
		}
		public enum DISPID_SpeechRecognizer : int32
		{
			SRRecognizer = 1,
			SRAllowAudioInputFormatChangesOnNextSet = 2,
			SRAudioInput = 3,
			SRAudioInputStream = 4,
			SRIsShared = 5,
			SRState = 6,
			SRStatus = 7,
			SRProfile = 8,
			SREmulateRecognition = 9,
			SRCreateRecoContext = 10,
			SRGetFormat = 11,
			SRSetPropertyNumber = 12,
			SRGetPropertyNumber = 13,
			SRSetPropertyString = 14,
			SRGetPropertyString = 15,
			SRIsUISupported = 16,
			SRDisplayUI = 17,
			SRGetRecognizers = 18,
			SVGetAudioInputs = 19,
			SVGetProfiles = 20,
		}
		public enum SpeechRecognizerState : int32
		{
			SRSInactive = 0,
			SRSActive = 1,
			SRSActiveAlways = 2,
			SRSInactiveWithPurge = 3,
		}
		public enum SpeechDisplayAttributes : int32
		{
			No_Trailing_Space = 0,
			One_Trailing_Space = 2,
			Two_Trailing_Spaces = 4,
			Consume_Leading_Spaces = 8,
		}
		public enum SpeechFormatType : int32
		{
			SFTInput = 0,
			SFTSREngine = 1,
		}
		public enum SpeechEmulationCompareFlags : int32
		{
			SECFIgnoreCase = 1,
			SECFIgnoreKanaType = 65536,
			SECFIgnoreWidth = 131072,
			SECFNoSpecialChars = 536870912,
			SECFEmulateResult = 1073741824,
			SECFDefault = 196609,
		}
		public enum DISPID_SpeechRecognizerStatus : int32
		{
			SRSAudioStatus = 1,
			SRSCurrentStreamPosition = 2,
			SRSCurrentStreamNumber = 3,
			SRSNumberOfActiveRules = 4,
			SRSClsidEngine = 5,
			SRSSupportedLanguages = 6,
		}
		public enum DISPID_SpeechRecoContext : int32
		{
			SRCRecognizer = 1,
			SRCAudioInInterferenceStatus = 2,
			SRCRequestedUIType = 3,
			SRCVoice = 4,
			SRAllowVoiceFormatMatchingOnNextSet = 5,
			SRCVoicePurgeEvent = 6,
			SRCEventInterests = 7,
			SRCCmdMaxAlternates = 8,
			SRCState = 9,
			SRCRetainedAudio = 10,
			SRCRetainedAudioFormat = 11,
			SRCPause = 12,
			SRCResume = 13,
			SRCCreateGrammar = 14,
			SRCCreateResultFromMemory = 15,
			SRCBookmark = 16,
			SRCSetAdaptationData = 17,
		}
		public enum SpeechRetainedAudioOptions : int32
		{
			SRAONone = 0,
			SRAORetainAudio = 1,
		}
		public enum SpeechBookmarkOptions : int32
		{
			SBONone = 0,
			SBOPause = 1,
		}
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
		public enum SpeechRecoContextState : int32
		{
			Disabled = 0,
			Enabled = 1,
		}
		public enum DISPIDSPRG : int32
		{
			SRGId = 1,
			SRGRecoContext = 2,
			SRGState = 3,
			SRGRules = 4,
			SRGReset = 5,
			SRGCommit = 6,
			SRGCmdLoadFromFile = 7,
			SRGCmdLoadFromObject = 8,
			SRGCmdLoadFromResource = 9,
			SRGCmdLoadFromMemory = 10,
			SRGCmdLoadFromProprietaryGrammar = 11,
			SRGCmdSetRuleState = 12,
			SRGCmdSetRuleIdState = 13,
			SRGDictationLoad = 14,
			SRGDictationUnload = 15,
			SRGDictationSetState = 16,
			SRGSetWordSequenceData = 17,
			SRGSetTextSelection = 18,
			SRGIsPronounceable = 19,
		}
		public enum SpeechLoadOption : int32
		{
			SLOStatic = 0,
			SLODynamic = 1,
		}
		public enum SpeechWordPronounceable : int32
		{
			SWPUnknownWordUnpronounceable = 0,
			SWPUnknownWordPronounceable = 1,
			SWPKnownWordPronounceable = 2,
		}
		public enum SpeechGrammarState : int32
		{
			SGSEnabled = 1,
			SGSDisabled = 0,
			SGSExclusive = 3,
		}
		public enum SpeechRuleState : int32
		{
			SGDSInactive = 0,
			SGDSActive = 1,
			SGDSActiveWithAutoPause = 3,
			SGDSActiveUserDelimited = 4,
		}
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
		public enum SpeechGrammarWordType : int32
		{
			SGDisplay = 0,
			SGLexical = 1,
			SGPronounciation = 2,
			SGLexicalNoSpecialChars = 3,
		}
		public enum DISPID_SpeechRecoContextEvents : int32
		{
			SRCEStartStream = 1,
			SRCEEndStream = 2,
			SRCEBookmark = 3,
			SRCESoundStart = 4,
			SRCESoundEnd = 5,
			SRCEPhraseStart = 6,
			SRCERecognition = 7,
			SRCEHypothesis = 8,
			SRCEPropertyNumberChange = 9,
			SRCEPropertyStringChange = 10,
			SRCEFalseRecognition = 11,
			SRCEInterference = 12,
			SRCERequestUI = 13,
			SRCERecognizerStateChange = 14,
			SRCEAdaptation = 15,
			SRCERecognitionForOtherContext = 16,
			SRCEAudioLevel = 17,
			SRCEEnginePrivate = 18,
		}
		public enum SpeechRecognitionType : int32
		{
			SRTStandard = 0,
			SRTAutopause = 1,
			SRTEmulated = 2,
			SRTSMLTimeout = 4,
			SRTExtendableParse = 8,
			SRTReSent = 16,
		}
		public enum DISPID_SpeechGrammarRule : int32
		{
			SGRAttributes = 1,
			SGRInitialState = 2,
			SGRName = 3,
			SGRId = 4,
			SGRClear = 5,
			SGRAddResource = 6,
			SGRAddState = 7,
		}
		public enum DISPID_SpeechGrammarRules : int32
		{
			SGRsCount = 1,
			SGRsDynamic = 2,
			SGRsAdd = 3,
			SGRsCommit = 4,
			SGRsCommitAndSave = 5,
			SGRsFindRule = 6,
			SGRsItem = 0,
			SGRs_NewEnum = -4,
		}
		public enum DISPID_SpeechGrammarRuleState : int32
		{
			SGRSRule = 1,
			SGRSTransitions = 2,
			SGRSAddWordTransition = 3,
			SGRSAddRuleTransition = 4,
			SGRSAddSpecialTransition = 5,
		}
		public enum SpeechSpecialTransitionType : int32
		{
			SSTTWildcard = 1,
			SSTTDictation = 2,
			SSTTTextBuffer = 3,
		}
		public enum DISPID_SpeechGrammarRuleStateTransitions : int32
		{
			SGRSTsCount = 1,
			SGRSTsItem = 0,
			SGRSTs_NewEnum = -4,
		}
		public enum DISPID_SpeechGrammarRuleStateTransition : int32
		{
			SGRSTType = 1,
			SGRSTText = 2,
			SGRSTRule = 3,
			SGRSTWeight = 4,
			SGRSTPropertyName = 5,
			SGRSTPropertyId = 6,
			SGRSTPropertyValue = 7,
			SGRSTNextState = 8,
		}
		public enum SpeechGrammarRuleStateTransitionType : int32
		{
			SGRSTTEpsilon = 0,
			SGRSTTWord = 1,
			SGRSTTRule = 2,
			SGRSTTDictation = 3,
			SGRSTTWildcard = 4,
			SGRSTTTextBuffer = 5,
		}
		public enum DISPIDSPTSI : int32
		{
			ActiveOffset = 1,
			ActiveLength = 2,
			SelectionOffset = 3,
			SelectionLength = 4,
		}
		public enum DISPID_SpeechRecoResult : int32
		{
			SRRRecoContext = 1,
			SRRTimes = 2,
			SRRAudioFormat = 3,
			SRRPhraseInfo = 4,
			SRRAlternates = 5,
			SRRAudio = 6,
			SRRSpeakAudio = 7,
			SRRSaveToMemory = 8,
			SRRDiscardResultInfo = 9,
		}
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
		public enum DISPID_SpeechXMLRecoResult : int32
		{
			XMLResult = 10,
			XMLErrorInfo = 11,
		}
		public enum DISPID_SpeechRecoResult2 : int32
		{
			SRRSetTextFeedback = 12,
		}
		public enum DISPID_SpeechPhraseBuilder : int32
		{
			SPPBRestorePhraseFromMemory = 1,
		}
		public enum DISPID_SpeechRecoResultTimes : int32
		{
			SRRTStreamTime = 1,
			SRRTLength = 2,
			SRRTTickCount = 3,
			SRRTOffsetFromStart = 4,
		}
		public enum DISPID_SpeechPhraseAlternate : int32
		{
			SPARecoResult = 1,
			SPAStartElementInResult = 2,
			SPANumberOfElementsInResult = 3,
			SPAPhraseInfo = 4,
			SPACommit = 5,
		}
		public enum DISPID_SpeechPhraseAlternates : int32
		{
			SPAsCount = 1,
			SPAsItem = 0,
			SPAs_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseInfo : int32
		{
			SPILanguageId = 1,
			SPIGrammarId = 2,
			SPIStartTime = 3,
			SPIAudioStreamPosition = 4,
			SPIAudioSizeBytes = 5,
			SPIRetainedSizeBytes = 6,
			SPIAudioSizeTime = 7,
			SPIRule = 8,
			SPIProperties = 9,
			SPIElements = 10,
			SPIReplacements = 11,
			SPIEngineId = 12,
			SPIEnginePrivateData = 13,
			SPISaveToMemory = 14,
			SPIGetText = 15,
			SPIGetDisplayAttributes = 16,
		}
		public enum DISPID_SpeechPhraseElement : int32
		{
			SPEAudioTimeOffset = 1,
			SPEAudioSizeTime = 2,
			SPEAudioStreamOffset = 3,
			SPEAudioSizeBytes = 4,
			SPERetainedStreamOffset = 5,
			SPERetainedSizeBytes = 6,
			SPEDisplayText = 7,
			SPELexicalForm = 8,
			SPEPronunciation = 9,
			SPEDisplayAttributes = 10,
			SPERequiredConfidence = 11,
			SPEActualConfidence = 12,
			SPEEngineConfidence = 13,
		}
		public enum SpeechEngineConfidence : int32
		{
			SECLowConfidence = -1,
			SECNormalConfidence = 0,
			SECHighConfidence = 1,
		}
		public enum DISPID_SpeechPhraseElements : int32
		{
			SPEsCount = 1,
			SPEsItem = 0,
			SPEs_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseReplacement : int32
		{
			SPRDisplayAttributes = 1,
			SPRText = 2,
			SPRFirstElement = 3,
			SPRNumberOfElements = 4,
		}
		public enum DISPID_SpeechPhraseReplacements : int32
		{
			SPRsCount = 1,
			SPRsItem = 0,
			SPRs_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseProperty : int32
		{
			SPPName = 1,
			SPPId = 2,
			SPPValue = 3,
			SPPFirstElement = 4,
			SPPNumberOfElements = 5,
			SPPEngineConfidence = 6,
			SPPConfidence = 7,
			SPPParent = 8,
			SPPChildren = 9,
		}
		public enum DISPID_SpeechPhraseProperties : int32
		{
			SPPsCount = 1,
			SPPsItem = 0,
			SPPs_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseRule : int32
		{
			Name = 1,
			Id = 2,
			FirstElement = 3,
			NumberOfElements = 4,
			Parent = 5,
			Children = 6,
			Confidence = 7,
			EngineConfidence = 8,
		}
		public enum DISPID_SpeechPhraseRules : int32
		{
			SPRulesCount = 1,
			SPRulesItem = 0,
			SPRules_NewEnum = -4,
		}
		public enum DISPID_SpeechLexicon : int32
		{
			SLGenerationId = 1,
			SLGetWords = 2,
			SLAddPronunciation = 3,
			SLAddPronunciationByPhoneIds = 4,
			SLRemovePronunciation = 5,
			SLRemovePronunciationByPhoneIds = 6,
			SLGetPronunciations = 7,
			SLGetGenerationChange = 8,
		}
		public enum SpeechLexiconType : int32
		{
			SLTUser = 1,
			SLTApp = 2,
		}
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
		public enum DISPID_SpeechLexiconWords : int32
		{
			SLWsCount = 1,
			SLWsItem = 0,
			SLWs_NewEnum = -4,
		}
		public enum SpeechWordType : int32
		{
			SWTAdded = 1,
			SWTDeleted = 2,
		}
		public enum DISPID_SpeechLexiconWord : int32
		{
			SLWLangId = 1,
			SLWType = 2,
			SLWWord = 3,
			SLWPronunciations = 4,
		}
		public enum DISPID_SpeechLexiconProns : int32
		{
			SLPsCount = 1,
			SLPsItem = 0,
			SLPs_NewEnum = -4,
		}
		public enum DISPID_SpeechLexiconPronunciation : int32
		{
			SLPType = 1,
			SLPLangId = 2,
			SLPPartOfSpeech = 3,
			SLPPhoneIds = 4,
			SLPSymbolic = 5,
		}
		public enum DISPID_SpeechPhoneConverter : int32
		{
			SPCLangId = 1,
			SPCPhoneToId = 2,
			SPCIdToPhone = 3,
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
			public uint16[0] szPronunciation;
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
		
		[CRepr]
		public struct ISpNotifyCallback
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyCallback(WPARAM wParam, LPARAM lParam) mut => VT.NotifyCallback(ref this, wParam, lParam);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifyCallback self, WPARAM wParam, LPARAM lParam) NotifyCallback;
			}
		}
		[CRepr]
		public struct ISpNotifySource : IUnknown
		{
			public const new Guid IID = .(0x5eff4aef, 0x8487, 0x11d2, 0x96, 0x1c, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNotifySink(ISpNotifySink* pNotifySink) mut => VT.SetNotifySink(ref this, pNotifySink);
			public HRESULT SetNotifyWindowMessage(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) mut => VT.SetNotifyWindowMessage(ref this, hWnd, Msg, wParam, lParam);
			public HRESULT SetNotifyCallbackFunction(out SPNOTIFYCALLBACK pfnCallback, WPARAM wParam, LPARAM lParam) mut => VT.SetNotifyCallbackFunction(ref this, out pfnCallback, wParam, lParam);
			public HRESULT SetNotifyCallbackInterface(ref ISpNotifyCallback pSpCallback, WPARAM wParam, LPARAM lParam) mut => VT.SetNotifyCallbackInterface(ref this, ref pSpCallback, wParam, lParam);
			public HRESULT SetNotifyWin32Event() mut => VT.SetNotifyWin32Event(ref this);
			public HRESULT WaitForNotifyEvent(uint32 dwMilliseconds) mut => VT.WaitForNotifyEvent(ref this, dwMilliseconds);
			public HANDLE GetNotifyEventHandle() mut => VT.GetNotifyEventHandle(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySource self, ISpNotifySink* pNotifySink) SetNotifySink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySource self, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) SetNotifyWindowMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySource self, out SPNOTIFYCALLBACK pfnCallback, WPARAM wParam, LPARAM lParam) SetNotifyCallbackFunction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySource self, ref ISpNotifyCallback pSpCallback, WPARAM wParam, LPARAM lParam) SetNotifyCallbackInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySource self) SetNotifyWin32Event;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySource self, uint32 dwMilliseconds) WaitForNotifyEvent;
				public new function [CallingConvention(.Stdcall)] HANDLE(ref ISpNotifySource self) GetNotifyEventHandle;
			}
		}
		[CRepr]
		public struct ISpNotifySink : IUnknown
		{
			public const new Guid IID = .(0x259684dc, 0x37c3, 0x11d2, 0x96, 0x03, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify() mut => VT.Notify(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifySink self) Notify;
			}
		}
		[CRepr]
		public struct ISpNotifyTranslator : ISpNotifySink
		{
			public const new Guid IID = .(0xaca16614, 0x5d3d, 0x11d2, 0x96, 0x0e, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitWindowMessage(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) mut => VT.InitWindowMessage(ref this, hWnd, Msg, wParam, lParam);
			public HRESULT InitCallback(out SPNOTIFYCALLBACK pfnCallback, WPARAM wParam, LPARAM lParam) mut => VT.InitCallback(ref this, out pfnCallback, wParam, lParam);
			public HRESULT InitSpNotifyCallback(ref ISpNotifyCallback pSpCallback, WPARAM wParam, LPARAM lParam) mut => VT.InitSpNotifyCallback(ref this, ref pSpCallback, wParam, lParam);
			public HRESULT InitWin32Event(HANDLE hEvent, BOOL fCloseHandleOnRelease) mut => VT.InitWin32Event(ref this, hEvent, fCloseHandleOnRelease);
			public HRESULT Wait(uint32 dwMilliseconds) mut => VT.Wait(ref this, dwMilliseconds);
			public HANDLE GetEventHandle() mut => VT.GetEventHandle(ref this);

			[CRepr]
			public struct VTable : ISpNotifySink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifyTranslator self, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) InitWindowMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifyTranslator self, out SPNOTIFYCALLBACK pfnCallback, WPARAM wParam, LPARAM lParam) InitCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifyTranslator self, ref ISpNotifyCallback pSpCallback, WPARAM wParam, LPARAM lParam) InitSpNotifyCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifyTranslator self, HANDLE hEvent, BOOL fCloseHandleOnRelease) InitWin32Event;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpNotifyTranslator self, uint32 dwMilliseconds) Wait;
				public new function [CallingConvention(.Stdcall)] HANDLE(ref ISpNotifyTranslator self) GetEventHandle;
			}
		}
		[CRepr]
		public struct ISpDataKey : IUnknown
		{
			public const new Guid IID = .(0x14056581, 0xe16c, 0x11d2, 0xbb, 0x90, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetData(PWSTR pszValueName, uint32 cbData, in uint8 pData) mut => VT.SetData(ref this, pszValueName, cbData, pData);
			public HRESULT GetData(PWSTR pszValueName, out uint32 pcbData, out uint8 pData) mut => VT.GetData(ref this, pszValueName, out pcbData, out pData);
			public HRESULT SetStringValue(PWSTR pszValueName, PWSTR pszValue) mut => VT.SetStringValue(ref this, pszValueName, pszValue);
			public HRESULT GetStringValue(PWSTR pszValueName, out PWSTR ppszValue) mut => VT.GetStringValue(ref this, pszValueName, out ppszValue);
			public HRESULT SetDWORD(PWSTR pszValueName, uint32 dwValue) mut => VT.SetDWORD(ref this, pszValueName, dwValue);
			public HRESULT GetDWORD(PWSTR pszValueName, out uint32 pdwValue) mut => VT.GetDWORD(ref this, pszValueName, out pdwValue);
			public HRESULT OpenKey(PWSTR pszSubKeyName, out ISpDataKey* ppSubKey) mut => VT.OpenKey(ref this, pszSubKeyName, out ppSubKey);
			public HRESULT CreateKey(PWSTR pszSubKey, out ISpDataKey* ppSubKey) mut => VT.CreateKey(ref this, pszSubKey, out ppSubKey);
			public HRESULT DeleteKey(PWSTR pszSubKey) mut => VT.DeleteKey(ref this, pszSubKey);
			public HRESULT DeleteValue(PWSTR pszValueName) mut => VT.DeleteValue(ref this, pszValueName);
			public HRESULT EnumKeys(uint32 Index, out PWSTR ppszSubKeyName) mut => VT.EnumKeys(ref this, Index, out ppszSubKeyName);
			public HRESULT EnumValues(uint32 Index, out PWSTR ppszValueName) mut => VT.EnumValues(ref this, Index, out ppszValueName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName, uint32 cbData, in uint8 pData) SetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName, out uint32 pcbData, out uint8 pData) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName, PWSTR pszValue) SetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName, out PWSTR ppszValue) GetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName, uint32 dwValue) SetDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName, out uint32 pdwValue) GetDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszSubKeyName, out ISpDataKey* ppSubKey) OpenKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszSubKey, out ISpDataKey* ppSubKey) CreateKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszSubKey) DeleteKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, PWSTR pszValueName) DeleteValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, uint32 Index, out PWSTR ppszSubKeyName) EnumKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDataKey self, uint32 Index, out PWSTR ppszValueName) EnumValues;
			}
		}
		[CRepr]
		public struct ISpRegDataKey : ISpDataKey
		{
			public const new Guid IID = .(0x92a66e2b, 0xc830, 0x4149, 0x83, 0xdf, 0x6f, 0xc2, 0xba, 0x1e, 0x7a, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetKey(HKEY hkey, BOOL fReadOnly) mut => VT.SetKey(ref this, hkey, fReadOnly);

			[CRepr]
			public struct VTable : ISpDataKey.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRegDataKey self, HKEY hkey, BOOL fReadOnly) SetKey;
			}
		}
		[CRepr]
		public struct ISpObjectTokenCategory : ISpDataKey
		{
			public const new Guid IID = .(0x2d3d3845, 0x39af, 0x4850, 0xbb, 0xf9, 0x40, 0xb4, 0x97, 0x80, 0x01, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetId(PWSTR pszCategoryId, BOOL fCreateIfNotExist) mut => VT.SetId(ref this, pszCategoryId, fCreateIfNotExist);
			public HRESULT GetId(out PWSTR ppszCoMemCategoryId) mut => VT.GetId(ref this, out ppszCoMemCategoryId);
			public HRESULT GetDataKey(SPDATAKEYLOCATION spdkl, out ISpDataKey* ppDataKey) mut => VT.GetDataKey(ref this, spdkl, out ppDataKey);
			public HRESULT EnumTokens(PWSTR pzsReqAttribs, PWSTR pszOptAttribs, out IEnumSpObjectTokens* ppEnum) mut => VT.EnumTokens(ref this, pzsReqAttribs, pszOptAttribs, out ppEnum);
			public HRESULT SetDefaultTokenId(PWSTR pszTokenId) mut => VT.SetDefaultTokenId(ref this, pszTokenId);
			public HRESULT GetDefaultTokenId(out PWSTR ppszCoMemTokenId) mut => VT.GetDefaultTokenId(ref this, out ppszCoMemTokenId);

			[CRepr]
			public struct VTable : ISpDataKey.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenCategory self, PWSTR pszCategoryId, BOOL fCreateIfNotExist) SetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenCategory self, out PWSTR ppszCoMemCategoryId) GetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenCategory self, SPDATAKEYLOCATION spdkl, out ISpDataKey* ppDataKey) GetDataKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenCategory self, PWSTR pzsReqAttribs, PWSTR pszOptAttribs, out IEnumSpObjectTokens* ppEnum) EnumTokens;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenCategory self, PWSTR pszTokenId) SetDefaultTokenId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenCategory self, out PWSTR ppszCoMemTokenId) GetDefaultTokenId;
			}
		}
		[CRepr]
		public struct ISpObjectToken : ISpDataKey
		{
			public const new Guid IID = .(0x14056589, 0xe16c, 0x11d2, 0xbb, 0x90, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetId(PWSTR pszCategoryId, PWSTR pszTokenId, BOOL fCreateIfNotExist) mut => VT.SetId(ref this, pszCategoryId, pszTokenId, fCreateIfNotExist);
			public HRESULT GetId(out PWSTR ppszCoMemTokenId) mut => VT.GetId(ref this, out ppszCoMemTokenId);
			public HRESULT GetCategory(out ISpObjectTokenCategory* ppTokenCategory) mut => VT.GetCategory(ref this, out ppTokenCategory);
			public HRESULT CreateInstance(ref IUnknown pUnkOuter, uint32 dwClsContext, in Guid riid, void** ppvObject) mut => VT.CreateInstance(ref this, ref pUnkOuter, dwClsContext, riid, ppvObject);
			public HRESULT GetStorageFileName(in Guid clsidCaller, PWSTR pszValueName, PWSTR pszFileNameSpecifier, uint32 nFolder, out PWSTR ppszFilePath) mut => VT.GetStorageFileName(ref this, clsidCaller, pszValueName, pszFileNameSpecifier, nFolder, out ppszFilePath);
			public HRESULT RemoveStorageFileName(in Guid clsidCaller, PWSTR pszKeyName, BOOL fDeleteFile) mut => VT.RemoveStorageFileName(ref this, clsidCaller, pszKeyName, fDeleteFile);
			public HRESULT Remove(Guid* pclsidCaller) mut => VT.Remove(ref this, pclsidCaller);
			public HRESULT IsUISupported(PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, ref IUnknown punkObject, out BOOL pfSupported) mut => VT.IsUISupported(ref this, pszTypeOfUI, pvExtraData, cbExtraData, ref punkObject, out pfSupported);
			public HRESULT DisplayUI(HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, ref IUnknown punkObject) mut => VT.DisplayUI(ref this, hwndParent, pszTitle, pszTypeOfUI, pvExtraData, cbExtraData, ref punkObject);
			public HRESULT MatchesAttributes(PWSTR pszAttributes, out BOOL pfMatches) mut => VT.MatchesAttributes(ref this, pszAttributes, out pfMatches);

			[CRepr]
			public struct VTable : ISpDataKey.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, PWSTR pszCategoryId, PWSTR pszTokenId, BOOL fCreateIfNotExist) SetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, out PWSTR ppszCoMemTokenId) GetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, out ISpObjectTokenCategory* ppTokenCategory) GetCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, ref IUnknown pUnkOuter, uint32 dwClsContext, in Guid riid, void** ppvObject) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, in Guid clsidCaller, PWSTR pszValueName, PWSTR pszFileNameSpecifier, uint32 nFolder, out PWSTR ppszFilePath) GetStorageFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, in Guid clsidCaller, PWSTR pszKeyName, BOOL fDeleteFile) RemoveStorageFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, Guid* pclsidCaller) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, ref IUnknown punkObject, out BOOL pfSupported) IsUISupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, ref IUnknown punkObject) DisplayUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectToken self, PWSTR pszAttributes, out BOOL pfMatches) MatchesAttributes;
			}
		}
		[CRepr]
		public struct ISpObjectTokenInit : ISpObjectToken
		{
			public const new Guid IID = .(0xb8aab0cf, 0x346f, 0x49d8, 0x94, 0x99, 0xc8, 0xb0, 0x3f, 0x16, 0x1d, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitFromDataKey(PWSTR pszCategoryId, PWSTR pszTokenId, ISpDataKey* pDataKey) mut => VT.InitFromDataKey(ref this, pszCategoryId, pszTokenId, pDataKey);

			[CRepr]
			public struct VTable : ISpObjectToken.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectTokenInit self, PWSTR pszCategoryId, PWSTR pszTokenId, ISpDataKey* pDataKey) InitFromDataKey;
			}
		}
		[CRepr]
		public struct IEnumSpObjectTokens : IUnknown
		{
			public const new Guid IID = .(0x06b64f9e, 0x7fda, 0x11d2, 0xb4, 0xf2, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out ISpObjectToken* pelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, out pelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSpObjectTokens* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Item(uint32 Index, out ISpObjectToken* ppToken) mut => VT.Item(ref this, Index, out ppToken);
			public HRESULT GetCount(out uint32 pCount) mut => VT.GetCount(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpObjectTokens self, uint32 celt, out ISpObjectToken* pelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpObjectTokens self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpObjectTokens self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpObjectTokens self, out IEnumSpObjectTokens* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpObjectTokens self, uint32 Index, out ISpObjectToken* ppToken) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpObjectTokens self, out uint32 pCount) GetCount;
			}
		}
		[CRepr]
		public struct ISpObjectWithToken : IUnknown
		{
			public const new Guid IID = .(0x5b559f40, 0xe952, 0x11d2, 0xbb, 0x91, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetObjectToken(ISpObjectToken* pToken) mut => VT.SetObjectToken(ref this, pToken);
			public HRESULT GetObjectToken(ISpObjectToken** ppToken) mut => VT.GetObjectToken(ref this, ppToken);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectWithToken self, ISpObjectToken* pToken) SetObjectToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpObjectWithToken self, ISpObjectToken** ppToken) GetObjectToken;
			}
		}
		[CRepr]
		public struct ISpResourceManager : IServiceProvider
		{
			public const new Guid IID = .(0x93384e18, 0x5014, 0x43d5, 0xad, 0xbb, 0xa7, 0x8e, 0x05, 0x59, 0x26, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetObject(in Guid guidServiceId, IUnknown* pUnkObject) mut => VT.SetObject(ref this, guidServiceId, pUnkObject);
			public HRESULT GetObject(in Guid guidServiceId, in Guid ObjectCLSID, in Guid ObjectIID, BOOL fReleaseWhenLastExternalRefReleased, void** ppObject) mut => VT.GetObject(ref this, guidServiceId, ObjectCLSID, ObjectIID, fReleaseWhenLastExternalRefReleased, ppObject);

			[CRepr]
			public struct VTable : IServiceProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpResourceManager self, in Guid guidServiceId, IUnknown* pUnkObject) SetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpResourceManager self, in Guid guidServiceId, in Guid ObjectCLSID, in Guid ObjectIID, BOOL fReleaseWhenLastExternalRefReleased, void** ppObject) GetObject;
			}
		}
		[CRepr]
		public struct ISpEventSource : ISpNotifySource
		{
			public const new Guid IID = .(0xbe7a9cce, 0x5f9e, 0x11d2, 0x96, 0x0f, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInterest(uint64 ullEventInterest, uint64 ullQueuedInterest) mut => VT.SetInterest(ref this, ullEventInterest, ullQueuedInterest);
			public HRESULT GetEvents(uint32 ulCount, out SPEVENT pEventArray, out uint32 pulFetched) mut => VT.GetEvents(ref this, ulCount, out pEventArray, out pulFetched);
			public HRESULT GetInfo(out SPEVENTSOURCEINFO pInfo) mut => VT.GetInfo(ref this, out pInfo);

			[CRepr]
			public struct VTable : ISpNotifySource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEventSource self, uint64 ullEventInterest, uint64 ullQueuedInterest) SetInterest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEventSource self, uint32 ulCount, out SPEVENT pEventArray, out uint32 pulFetched) GetEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEventSource self, out SPEVENTSOURCEINFO pInfo) GetInfo;
			}
		}
		[CRepr]
		public struct ISpEventSource2 : ISpEventSource
		{
			public const new Guid IID = .(0x2373a435, 0x6a4b, 0x429e, 0xa6, 0xac, 0xd4, 0x23, 0x1a, 0x61, 0x97, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEventsEx(uint32 ulCount, out SPEVENTEX pEventArray, out uint32 pulFetched) mut => VT.GetEventsEx(ref this, ulCount, out pEventArray, out pulFetched);

			[CRepr]
			public struct VTable : ISpEventSource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEventSource2 self, uint32 ulCount, out SPEVENTEX pEventArray, out uint32 pulFetched) GetEventsEx;
			}
		}
		[CRepr]
		public struct ISpEventSink : IUnknown
		{
			public const new Guid IID = .(0xbe7a9cc9, 0x5f9e, 0x11d2, 0x96, 0x0f, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddEvents(in SPEVENT pEventArray, uint32 ulCount) mut => VT.AddEvents(ref this, pEventArray, ulCount);
			public HRESULT GetEventInterest(out uint64 pullEventInterest) mut => VT.GetEventInterest(ref this, out pullEventInterest);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEventSink self, in SPEVENT pEventArray, uint32 ulCount) AddEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEventSink self, out uint64 pullEventInterest) GetEventInterest;
			}
		}
		[CRepr]
		public struct ISpStreamFormat : IStream
		{
			public const new Guid IID = .(0xbed530be, 0x2606, 0x4f4d, 0xa1, 0xc0, 0x54, 0xc5, 0xcd, 0xa5, 0x56, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFormat(ref Guid pguidFormatId, WAVEFORMATEX** ppCoMemWaveFormatEx) mut => VT.GetFormat(ref this, ref pguidFormatId, ppCoMemWaveFormatEx);

			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormat self, ref Guid pguidFormatId, WAVEFORMATEX** ppCoMemWaveFormatEx) GetFormat;
			}
		}
		[CRepr]
		public struct ISpStream : ISpStreamFormat
		{
			public const new Guid IID = .(0x12e3cca9, 0x7518, 0x44c5, 0xa5, 0xe7, 0xba, 0x5a, 0x79, 0xcb, 0x92, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBaseStream(ref IStream pStream, in Guid rguidFormat, in WAVEFORMATEX pWaveFormatEx) mut => VT.SetBaseStream(ref this, ref pStream, rguidFormat, pWaveFormatEx);
			public HRESULT GetBaseStream(out IStream* ppStream) mut => VT.GetBaseStream(ref this, out ppStream);
			public HRESULT BindToFile(PWSTR pszFileName, SPFILEMODE eMode, Guid* pFormatId, WAVEFORMATEX* pWaveFormatEx, uint64 ullEventInterest) mut => VT.BindToFile(ref this, pszFileName, eMode, pFormatId, pWaveFormatEx, ullEventInterest);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : ISpStreamFormat.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStream self, ref IStream pStream, in Guid rguidFormat, in WAVEFORMATEX pWaveFormatEx) SetBaseStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStream self, out IStream* ppStream) GetBaseStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStream self, PWSTR pszFileName, SPFILEMODE eMode, Guid* pFormatId, WAVEFORMATEX* pWaveFormatEx, uint64 ullEventInterest) BindToFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStream self) Close;
			}
		}
		[CRepr]
		public struct ISpStreamFormatConverter : ISpStreamFormat
		{
			public const new Guid IID = .(0x678a932c, 0xea71, 0x4446, 0x9b, 0x41, 0x78, 0xfd, 0xa6, 0x28, 0x0a, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBaseStream(ISpStreamFormat* pStream, BOOL fSetFormatToBaseStreamFormat, BOOL fWriteToBaseStream) mut => VT.SetBaseStream(ref this, pStream, fSetFormatToBaseStreamFormat, fWriteToBaseStream);
			public HRESULT GetBaseStream(ISpStreamFormat** ppStream) mut => VT.GetBaseStream(ref this, ppStream);
			public HRESULT SetFormat(in Guid rguidFormatIdOfConvertedStream, in WAVEFORMATEX pWaveFormatExOfConvertedStream) mut => VT.SetFormat(ref this, rguidFormatIdOfConvertedStream, pWaveFormatExOfConvertedStream);
			public HRESULT ResetSeekPosition() mut => VT.ResetSeekPosition(ref this);
			public HRESULT ScaleConvertedToBaseOffset(uint64 ullOffsetConvertedStream, out uint64 pullOffsetBaseStream) mut => VT.ScaleConvertedToBaseOffset(ref this, ullOffsetConvertedStream, out pullOffsetBaseStream);
			public HRESULT ScaleBaseToConvertedOffset(uint64 ullOffsetBaseStream, out uint64 pullOffsetConvertedStream) mut => VT.ScaleBaseToConvertedOffset(ref this, ullOffsetBaseStream, out pullOffsetConvertedStream);

			[CRepr]
			public struct VTable : ISpStreamFormat.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormatConverter self, ISpStreamFormat* pStream, BOOL fSetFormatToBaseStreamFormat, BOOL fWriteToBaseStream) SetBaseStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormatConverter self, ISpStreamFormat** ppStream) GetBaseStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormatConverter self, in Guid rguidFormatIdOfConvertedStream, in WAVEFORMATEX pWaveFormatExOfConvertedStream) SetFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormatConverter self) ResetSeekPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormatConverter self, uint64 ullOffsetConvertedStream, out uint64 pullOffsetBaseStream) ScaleConvertedToBaseOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpStreamFormatConverter self, uint64 ullOffsetBaseStream, out uint64 pullOffsetConvertedStream) ScaleBaseToConvertedOffset;
			}
		}
		[CRepr]
		public struct ISpAudio : ISpStreamFormat
		{
			public const new Guid IID = .(0xc05c768f, 0xfae8, 0x4ec2, 0x8e, 0x07, 0x33, 0x83, 0x21, 0xc1, 0x24, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetState(SPAUDIOSTATE NewState, uint64 ullReserved) mut => VT.SetState(ref this, NewState, ullReserved);
			public HRESULT SetFormat(in Guid rguidFmtId, in WAVEFORMATEX pWaveFormatEx) mut => VT.SetFormat(ref this, rguidFmtId, pWaveFormatEx);
			public HRESULT GetStatus(out SPAUDIOSTATUS pStatus) mut => VT.GetStatus(ref this, out pStatus);
			public HRESULT SetBufferInfo(in SPAUDIOBUFFERINFO pBuffInfo) mut => VT.SetBufferInfo(ref this, pBuffInfo);
			public HRESULT GetBufferInfo(out SPAUDIOBUFFERINFO pBuffInfo) mut => VT.GetBufferInfo(ref this, out pBuffInfo);
			public HRESULT GetDefaultFormat(out Guid pFormatId, out WAVEFORMATEX* ppCoMemWaveFormatEx) mut => VT.GetDefaultFormat(ref this, out pFormatId, out ppCoMemWaveFormatEx);
			public HANDLE EventHandle() mut => VT.EventHandle(ref this);
			public HRESULT GetVolumeLevel(out uint32 pLevel) mut => VT.GetVolumeLevel(ref this, out pLevel);
			public HRESULT SetVolumeLevel(uint32 Level) mut => VT.SetVolumeLevel(ref this, Level);
			public HRESULT GetBufferNotifySize(out uint32 pcbSize) mut => VT.GetBufferNotifySize(ref this, out pcbSize);
			public HRESULT SetBufferNotifySize(uint32 cbSize) mut => VT.SetBufferNotifySize(ref this, cbSize);

			[CRepr]
			public struct VTable : ISpStreamFormat.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, SPAUDIOSTATE NewState, uint64 ullReserved) SetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, in Guid rguidFmtId, in WAVEFORMATEX pWaveFormatEx) SetFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, out SPAUDIOSTATUS pStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, in SPAUDIOBUFFERINFO pBuffInfo) SetBufferInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, out SPAUDIOBUFFERINFO pBuffInfo) GetBufferInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, out Guid pFormatId, out WAVEFORMATEX* ppCoMemWaveFormatEx) GetDefaultFormat;
				public new function [CallingConvention(.Stdcall)] HANDLE(ref ISpAudio self) EventHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, out uint32 pLevel) GetVolumeLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, uint32 Level) SetVolumeLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, out uint32 pcbSize) GetBufferNotifySize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpAudio self, uint32 cbSize) SetBufferNotifySize;
			}
		}
		[CRepr]
		public struct ISpMMSysAudio : ISpAudio
		{
			public const new Guid IID = .(0x15806f6e, 0x1d70, 0x4b48, 0x98, 0xe6, 0x3b, 0x1a, 0x00, 0x75, 0x09, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceId(out uint32 puDeviceId) mut => VT.GetDeviceId(ref this, out puDeviceId);
			public HRESULT SetDeviceId(uint32 uDeviceId) mut => VT.SetDeviceId(ref this, uDeviceId);
			public HRESULT GetMMHandle(void** pHandle) mut => VT.GetMMHandle(ref this, pHandle);
			public HRESULT GetLineId(out uint32 puLineId) mut => VT.GetLineId(ref this, out puLineId);
			public HRESULT SetLineId(uint32 uLineId) mut => VT.SetLineId(ref this, uLineId);

			[CRepr]
			public struct VTable : ISpAudio.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpMMSysAudio self, out uint32 puDeviceId) GetDeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpMMSysAudio self, uint32 uDeviceId) SetDeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpMMSysAudio self, void** pHandle) GetMMHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpMMSysAudio self, out uint32 puLineId) GetLineId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpMMSysAudio self, uint32 uLineId) SetLineId;
			}
		}
		[CRepr]
		public struct ISpTranscript : IUnknown
		{
			public const new Guid IID = .(0x10f63bce, 0x201a, 0x11d3, 0xac, 0x70, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTranscript(PWSTR* ppszTranscript) mut => VT.GetTranscript(ref this, ppszTranscript);
			public HRESULT AppendTranscript(PWSTR pszTranscript) mut => VT.AppendTranscript(ref this, pszTranscript);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpTranscript self, PWSTR* ppszTranscript) GetTranscript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpTranscript self, PWSTR pszTranscript) AppendTranscript;
			}
		}
		[CRepr]
		public struct ISpLexicon : IUnknown
		{
			public const new Guid IID = .(0xda41a7c2, 0x5383, 0x4db2, 0x91, 0x6b, 0x6c, 0x17, 0x19, 0xe3, 0xdb, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPronunciations(PWSTR pszWord, uint16 LangID, uint32 dwFlags, out SPWORDPRONUNCIATIONLIST pWordPronunciationList) mut => VT.GetPronunciations(ref this, pszWord, LangID, dwFlags, out pWordPronunciationList);
			public HRESULT AddPronunciation(PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) mut => VT.AddPronunciation(ref this, pszWord, LangID, ePartOfSpeech, pszPronunciation);
			public HRESULT RemovePronunciation(PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) mut => VT.RemovePronunciation(ref this, pszWord, LangID, ePartOfSpeech, pszPronunciation);
			public HRESULT GetGeneration(out uint32 pdwGeneration) mut => VT.GetGeneration(ref this, out pdwGeneration);
			public HRESULT GetGenerationChange(uint32 dwFlags, out uint32 pdwGeneration, out SPWORDLIST pWordList) mut => VT.GetGenerationChange(ref this, dwFlags, out pdwGeneration, out pWordList);
			public HRESULT GetWords(uint32 dwFlags, out uint32 pdwGeneration, uint32* pdwCookie, out SPWORDLIST pWordList) mut => VT.GetWords(ref this, dwFlags, out pdwGeneration, pdwCookie, out pWordList);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpLexicon self, PWSTR pszWord, uint16 LangID, uint32 dwFlags, out SPWORDPRONUNCIATIONLIST pWordPronunciationList) GetPronunciations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpLexicon self, PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) AddPronunciation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpLexicon self, PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) RemovePronunciation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpLexicon self, out uint32 pdwGeneration) GetGeneration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpLexicon self, uint32 dwFlags, out uint32 pdwGeneration, out SPWORDLIST pWordList) GetGenerationChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpLexicon self, uint32 dwFlags, out uint32 pdwGeneration, uint32* pdwCookie, out SPWORDLIST pWordList) GetWords;
			}
		}
		[CRepr]
		public struct ISpContainerLexicon : ISpLexicon
		{
			public const new Guid IID = .(0x8565572f, 0xc094, 0x41cc, 0xb5, 0x6e, 0x10, 0xbd, 0x9c, 0x3f, 0xf0, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddLexicon(ISpLexicon* pAddLexicon, uint32 dwFlags) mut => VT.AddLexicon(ref this, pAddLexicon, dwFlags);

			[CRepr]
			public struct VTable : ISpLexicon.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpContainerLexicon self, ISpLexicon* pAddLexicon, uint32 dwFlags) AddLexicon;
			}
		}
		[CRepr]
		public struct ISpShortcut : IUnknown
		{
			public const new Guid IID = .(0x3df681e2, 0xea56, 0x11d9, 0x8b, 0xde, 0xf6, 0x6b, 0xad, 0x1e, 0x3f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddShortcut(PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) mut => VT.AddShortcut(ref this, pszDisplay, LangID, pszSpoken, shType);
			public HRESULT RemoveShortcut(PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) mut => VT.RemoveShortcut(ref this, pszDisplay, LangID, pszSpoken, shType);
			public HRESULT GetShortcuts(uint16 LangID, out SPSHORTCUTPAIRLIST pShortcutpairList) mut => VT.GetShortcuts(ref this, LangID, out pShortcutpairList);
			public HRESULT GetGeneration(out uint32 pdwGeneration) mut => VT.GetGeneration(ref this, out pdwGeneration);
			public HRESULT GetWordsFromGenerationChange(out uint32 pdwGeneration, out SPWORDLIST pWordList) mut => VT.GetWordsFromGenerationChange(ref this, out pdwGeneration, out pWordList);
			public HRESULT GetWords(out uint32 pdwGeneration, out uint32 pdwCookie, out SPWORDLIST pWordList) mut => VT.GetWords(ref this, out pdwGeneration, out pdwCookie, out pWordList);
			public HRESULT GetShortcutsForGeneration(out uint32 pdwGeneration, out uint32 pdwCookie, out SPSHORTCUTPAIRLIST pShortcutpairList) mut => VT.GetShortcutsForGeneration(ref this, out pdwGeneration, out pdwCookie, out pShortcutpairList);
			public HRESULT GetGenerationChange(out uint32 pdwGeneration, out SPSHORTCUTPAIRLIST pShortcutpairList) mut => VT.GetGenerationChange(ref this, out pdwGeneration, out pShortcutpairList);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) AddShortcut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) RemoveShortcut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, uint16 LangID, out SPSHORTCUTPAIRLIST pShortcutpairList) GetShortcuts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, out uint32 pdwGeneration) GetGeneration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, out uint32 pdwGeneration, out SPWORDLIST pWordList) GetWordsFromGenerationChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, out uint32 pdwGeneration, out uint32 pdwCookie, out SPWORDLIST pWordList) GetWords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, out uint32 pdwGeneration, out uint32 pdwCookie, out SPSHORTCUTPAIRLIST pShortcutpairList) GetShortcutsForGeneration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpShortcut self, out uint32 pdwGeneration, out SPSHORTCUTPAIRLIST pShortcutpairList) GetGenerationChange;
			}
		}
		[CRepr]
		public struct ISpPhoneConverter : ISpObjectWithToken
		{
			public const new Guid IID = .(0x8445c581, 0x0cac, 0x4a38, 0xab, 0xfe, 0x9b, 0x2c, 0xe2, 0x82, 0x64, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PhoneToId(PWSTR pszPhone, out uint16 pId) mut => VT.PhoneToId(ref this, pszPhone, out pId);
			public HRESULT IdToPhone(ref uint16 pId, PWSTR pszPhone) mut => VT.IdToPhone(ref this, ref pId, pszPhone);

			[CRepr]
			public struct VTable : ISpObjectWithToken.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneConverter self, PWSTR pszPhone, out uint16 pId) PhoneToId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneConverter self, ref uint16 pId, PWSTR pszPhone) IdToPhone;
			}
		}
		[CRepr]
		public struct ISpPhoneticAlphabetConverter : IUnknown
		{
			public const new Guid IID = .(0x133adcd4, 0x19b4, 0x4020, 0x9f, 0xdc, 0x84, 0x2e, 0x78, 0x25, 0x3b, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLangId(out uint16 pLangID) mut => VT.GetLangId(ref this, out pLangID);
			public HRESULT SetLangId(uint16 LangID) mut => VT.SetLangId(ref this, LangID);
			public HRESULT SAPI2UPS(in uint16 pszSAPIId, uint16* pszUPSId, uint32 cMaxLength) mut => VT.SAPI2UPS(ref this, pszSAPIId, pszUPSId, cMaxLength);
			public HRESULT UPS2SAPI(in uint16 pszUPSId, uint16* pszSAPIId, uint32 cMaxLength) mut => VT.UPS2SAPI(ref this, pszUPSId, pszSAPIId, cMaxLength);
			public HRESULT GetMaxConvertLength(uint32 cSrcLength, BOOL bSAPI2UPS, out uint32 pcMaxDestLength) mut => VT.GetMaxConvertLength(ref this, cSrcLength, bSAPI2UPS, out pcMaxDestLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetConverter self, out uint16 pLangID) GetLangId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetConverter self, uint16 LangID) SetLangId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetConverter self, in uint16 pszSAPIId, uint16* pszUPSId, uint32 cMaxLength) SAPI2UPS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetConverter self, in uint16 pszUPSId, uint16* pszSAPIId, uint32 cMaxLength) UPS2SAPI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetConverter self, uint32 cSrcLength, BOOL bSAPI2UPS, out uint32 pcMaxDestLength) GetMaxConvertLength;
			}
		}
		[CRepr]
		public struct ISpPhoneticAlphabetSelection : IUnknown
		{
			public const new Guid IID = .(0xb2745efd, 0x42ce, 0x48ca, 0x81, 0xf1, 0xa9, 0x6e, 0x02, 0x53, 0x8a, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsAlphabetUPS(out BOOL pfIsUPS) mut => VT.IsAlphabetUPS(ref this, out pfIsUPS);
			public HRESULT SetAlphabetToUPS(BOOL fForceUPS) mut => VT.SetAlphabetToUPS(ref this, fForceUPS);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetSelection self, out BOOL pfIsUPS) IsAlphabetUPS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhoneticAlphabetSelection self, BOOL fForceUPS) SetAlphabetToUPS;
			}
		}
		[CRepr]
		public struct ISpVoice : ISpEventSource
		{
			public const new Guid IID = .(0x6c44df74, 0x72b9, 0x4992, 0xa1, 0xec, 0xef, 0x99, 0x6e, 0x04, 0x22, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutput(ref IUnknown pUnkOutput, BOOL fAllowFormatChanges) mut => VT.SetOutput(ref this, ref pUnkOutput, fAllowFormatChanges);
			public HRESULT GetOutputObjectToken(out ISpObjectToken* ppObjectToken) mut => VT.GetOutputObjectToken(ref this, out ppObjectToken);
			public HRESULT GetOutputStream(out ISpStreamFormat* ppStream) mut => VT.GetOutputStream(ref this, out ppStream);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT SetVoice(ref ISpObjectToken pToken) mut => VT.SetVoice(ref this, ref pToken);
			public HRESULT GetVoice(out ISpObjectToken* ppToken) mut => VT.GetVoice(ref this, out ppToken);
			public HRESULT Speak(PWSTR pwcs, uint32 dwFlags, uint32* pulStreamNumber) mut => VT.Speak(ref this, pwcs, dwFlags, pulStreamNumber);
			public HRESULT SpeakStream(ref IStream pStream, uint32 dwFlags, uint32* pulStreamNumber) mut => VT.SpeakStream(ref this, ref pStream, dwFlags, pulStreamNumber);
			public HRESULT GetStatus(out SPVOICESTATUS pStatus, out PWSTR ppszLastBookmark) mut => VT.GetStatus(ref this, out pStatus, out ppszLastBookmark);
			public HRESULT Skip(PWSTR pItemType, int32 lNumItems, out uint32 pulNumSkipped) mut => VT.Skip(ref this, pItemType, lNumItems, out pulNumSkipped);
			public HRESULT SetPriority(SPVPRIORITY ePriority) mut => VT.SetPriority(ref this, ePriority);
			public HRESULT GetPriority(out SPVPRIORITY pePriority) mut => VT.GetPriority(ref this, out pePriority);
			public HRESULT SetAlertBoundary(SPEVENTENUM eBoundary) mut => VT.SetAlertBoundary(ref this, eBoundary);
			public HRESULT GetAlertBoundary(out SPEVENTENUM peBoundary) mut => VT.GetAlertBoundary(ref this, out peBoundary);
			public HRESULT SetRate(int32 RateAdjust) mut => VT.SetRate(ref this, RateAdjust);
			public HRESULT GetRate(out int32 pRateAdjust) mut => VT.GetRate(ref this, out pRateAdjust);
			public HRESULT SetVolume(uint16 usVolume) mut => VT.SetVolume(ref this, usVolume);
			public HRESULT GetVolume(out uint16 pusVolume) mut => VT.GetVolume(ref this, out pusVolume);
			public HRESULT WaitUntilDone(uint32 msTimeout) mut => VT.WaitUntilDone(ref this, msTimeout);
			public HRESULT SetSyncSpeakTimeout(uint32 msTimeout) mut => VT.SetSyncSpeakTimeout(ref this, msTimeout);
			public HRESULT GetSyncSpeakTimeout(out uint32 pmsTimeout) mut => VT.GetSyncSpeakTimeout(ref this, out pmsTimeout);
			public HANDLE SpeakCompleteEvent() mut => VT.SpeakCompleteEvent(ref this);
			public HRESULT IsUISupported(PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, out BOOL pfSupported) mut => VT.IsUISupported(ref this, pszTypeOfUI, pvExtraData, cbExtraData, out pfSupported);
			public HRESULT DisplayUI(HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) mut => VT.DisplayUI(ref this, hwndParent, pszTitle, pszTypeOfUI, pvExtraData, cbExtraData);

			[CRepr]
			public struct VTable : ISpEventSource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, ref IUnknown pUnkOutput, BOOL fAllowFormatChanges) SetOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out ISpObjectToken* ppObjectToken) GetOutputObjectToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out ISpStreamFormat* ppStream) GetOutputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, ref ISpObjectToken pToken) SetVoice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out ISpObjectToken* ppToken) GetVoice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, PWSTR pwcs, uint32 dwFlags, uint32* pulStreamNumber) Speak;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, ref IStream pStream, uint32 dwFlags, uint32* pulStreamNumber) SpeakStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out SPVOICESTATUS pStatus, out PWSTR ppszLastBookmark) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, PWSTR pItemType, int32 lNumItems, out uint32 pulNumSkipped) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, SPVPRIORITY ePriority) SetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out SPVPRIORITY pePriority) GetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, SPEVENTENUM eBoundary) SetAlertBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out SPEVENTENUM peBoundary) GetAlertBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, int32 RateAdjust) SetRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out int32 pRateAdjust) GetRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, uint16 usVolume) SetVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out uint16 pusVolume) GetVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, uint32 msTimeout) WaitUntilDone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, uint32 msTimeout) SetSyncSpeakTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, out uint32 pmsTimeout) GetSyncSpeakTimeout;
				public new function [CallingConvention(.Stdcall)] HANDLE(ref ISpVoice self) SpeakCompleteEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, out BOOL pfSupported) IsUISupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpVoice self, HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) DisplayUI;
			}
		}
		[CRepr]
		public struct ISpPhrase : IUnknown
		{
			public const new Guid IID = .(0x1a5c0354, 0xb621, 0x4b5a, 0x87, 0x91, 0xd3, 0x06, 0xed, 0x37, 0x9e, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPhrase(out SPPHRASE* ppCoMemPhrase) mut => VT.GetPhrase(ref this, out ppCoMemPhrase);
			public HRESULT GetSerializedPhrase(out SPSERIALIZEDPHRASE* ppCoMemPhrase) mut => VT.GetSerializedPhrase(ref this, out ppCoMemPhrase);
			public HRESULT GetText(uint32 ulStart, uint32 ulCount, BOOL fUseTextReplacements, out PWSTR ppszCoMemText, uint8* pbDisplayAttributes) mut => VT.GetText(ref this, ulStart, ulCount, fUseTextReplacements, out ppszCoMemText, pbDisplayAttributes);
			public HRESULT Discard(uint32 dwValueTypes) mut => VT.Discard(ref this, dwValueTypes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase self, out SPPHRASE* ppCoMemPhrase) GetPhrase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase self, out SPSERIALIZEDPHRASE* ppCoMemPhrase) GetSerializedPhrase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase self, uint32 ulStart, uint32 ulCount, BOOL fUseTextReplacements, out PWSTR ppszCoMemText, uint8* pbDisplayAttributes) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase self, uint32 dwValueTypes) Discard;
			}
		}
		[CRepr]
		public struct ISpPhraseAlt : ISpPhrase
		{
			public const new Guid IID = .(0x8fcebc98, 0x4e49, 0x4067, 0x9c, 0x6c, 0xd8, 0x6a, 0x0e, 0x09, 0x2e, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAltInfo(out ISpPhrase* ppParent, out uint32 pulStartElementInParent, out uint32 pcElementsInParent, out uint32 pcElementsInAlt) mut => VT.GetAltInfo(ref this, out ppParent, out pulStartElementInParent, out pcElementsInParent, out pcElementsInAlt);
			public HRESULT Commit() mut => VT.Commit(ref this);

			[CRepr]
			public struct VTable : ISpPhrase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhraseAlt self, out ISpPhrase* ppParent, out uint32 pulStartElementInParent, out uint32 pcElementsInParent, out uint32 pcElementsInAlt) GetAltInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhraseAlt self) Commit;
			}
		}
		[CRepr]
		public struct ISpPhrase2 : ISpPhrase
		{
			public const new Guid IID = .(0xf264da52, 0xe457, 0x4696, 0xb8, 0x56, 0xa7, 0x37, 0xb7, 0x17, 0xaf, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXMLResult(out PWSTR ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) mut => VT.GetXMLResult(ref this, out ppszCoMemXMLResult, Options);
			public HRESULT GetXMLErrorInfo(out SPSEMANTICERRORINFO pSemanticErrorInfo) mut => VT.GetXMLErrorInfo(ref this, out pSemanticErrorInfo);
			public HRESULT GetAudio(uint32 ulStartElement, uint32 cElements, out ISpStreamFormat* ppStream) mut => VT.GetAudio(ref this, ulStartElement, cElements, out ppStream);

			[CRepr]
			public struct VTable : ISpPhrase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase2 self, out PWSTR ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) GetXMLResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase2 self, out SPSEMANTICERRORINFO pSemanticErrorInfo) GetXMLErrorInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpPhrase2 self, uint32 ulStartElement, uint32 cElements, out ISpStreamFormat* ppStream) GetAudio;
			}
		}
		[CRepr]
		public struct ISpRecoResult : ISpPhrase
		{
			public const new Guid IID = .(0x20b053be, 0xe235, 0x43cd, 0x9a, 0x2a, 0x8d, 0x17, 0xa4, 0x8b, 0x78, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResultTimes(out SPRECORESULTTIMES pTimes) mut => VT.GetResultTimes(ref this, out pTimes);
			public HRESULT GetAlternates(uint32 ulStartElement, uint32 cElements, uint32 ulRequestCount, ISpPhraseAlt** ppPhrases, out uint32 pcPhrasesReturned) mut => VT.GetAlternates(ref this, ulStartElement, cElements, ulRequestCount, ppPhrases, out pcPhrasesReturned);
			public HRESULT GetAudio(uint32 ulStartElement, uint32 cElements, out ISpStreamFormat* ppStream) mut => VT.GetAudio(ref this, ulStartElement, cElements, out ppStream);
			public HRESULT SpeakAudio(uint32 ulStartElement, uint32 cElements, uint32 dwFlags, out uint32 pulStreamNumber) mut => VT.SpeakAudio(ref this, ulStartElement, cElements, dwFlags, out pulStreamNumber);
			public HRESULT Serialize(out SPSERIALIZEDRESULT* ppCoMemSerializedResult) mut => VT.Serialize(ref this, out ppCoMemSerializedResult);
			public HRESULT ScaleAudio(in Guid pAudioFormatId, in WAVEFORMATEX pWaveFormatEx) mut => VT.ScaleAudio(ref this, pAudioFormatId, pWaveFormatEx);
			public HRESULT GetRecoContext(out ISpRecoContext* ppRecoContext) mut => VT.GetRecoContext(ref this, out ppRecoContext);

			[CRepr]
			public struct VTable : ISpPhrase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, out SPRECORESULTTIMES pTimes) GetResultTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, uint32 ulStartElement, uint32 cElements, uint32 ulRequestCount, ISpPhraseAlt** ppPhrases, out uint32 pcPhrasesReturned) GetAlternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, uint32 ulStartElement, uint32 cElements, out ISpStreamFormat* ppStream) GetAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, uint32 ulStartElement, uint32 cElements, uint32 dwFlags, out uint32 pulStreamNumber) SpeakAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, out SPSERIALIZEDRESULT* ppCoMemSerializedResult) Serialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, in Guid pAudioFormatId, in WAVEFORMATEX pWaveFormatEx) ScaleAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult self, out ISpRecoContext* ppRecoContext) GetRecoContext;
			}
		}
		[CRepr]
		public struct ISpRecoResult2 : ISpRecoResult
		{
			public const new Guid IID = .(0x27cac6c4, 0x88f2, 0x41f2, 0x88, 0x17, 0x0c, 0x95, 0xe5, 0x9f, 0x1e, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CommitAlternate(ref ISpPhraseAlt pPhraseAlt, out ISpRecoResult* ppNewResult) mut => VT.CommitAlternate(ref this, ref pPhraseAlt, out ppNewResult);
			public HRESULT CommitText(uint32 ulStartElement, uint32 cElements, PWSTR pszCorrectedData, uint32 eCommitFlags) mut => VT.CommitText(ref this, ulStartElement, cElements, pszCorrectedData, eCommitFlags);
			public HRESULT SetTextFeedback(PWSTR pszFeedback, BOOL fSuccessful) mut => VT.SetTextFeedback(ref this, pszFeedback, fSuccessful);

			[CRepr]
			public struct VTable : ISpRecoResult.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult2 self, ref ISpPhraseAlt pPhraseAlt, out ISpRecoResult* ppNewResult) CommitAlternate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult2 self, uint32 ulStartElement, uint32 cElements, PWSTR pszCorrectedData, uint32 eCommitFlags) CommitText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoResult2 self, PWSTR pszFeedback, BOOL fSuccessful) SetTextFeedback;
			}
		}
		[CRepr]
		public struct ISpXMLRecoResult : ISpRecoResult
		{
			public const new Guid IID = .(0xae39362b, 0x45a8, 0x4074, 0x9b, 0x9e, 0xcc, 0xf4, 0x9a, 0xa2, 0xd0, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXMLResult(out PWSTR ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) mut => VT.GetXMLResult(ref this, out ppszCoMemXMLResult, Options);
			public HRESULT GetXMLErrorInfo(out SPSEMANTICERRORINFO pSemanticErrorInfo) mut => VT.GetXMLErrorInfo(ref this, out pSemanticErrorInfo);

			[CRepr]
			public struct VTable : ISpRecoResult.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpXMLRecoResult self, out PWSTR ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) GetXMLResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpXMLRecoResult self, out SPSEMANTICERRORINFO pSemanticErrorInfo) GetXMLErrorInfo;
			}
		}
		[CRepr]
		public struct ISpGrammarBuilder : IUnknown
		{
			public const new Guid IID = .(0x8137828f, 0x591a, 0x4a42, 0xbe, 0x58, 0x49, 0xea, 0x7e, 0xba, 0xac, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetGrammar(uint16 NewLanguage) mut => VT.ResetGrammar(ref this, NewLanguage);
			public HRESULT GetRule(PWSTR pszRuleName, uint32 dwRuleId, uint32 dwAttributes, BOOL fCreateIfNotExist, out SPSTATEHANDLE__* phInitialState) mut => VT.GetRule(ref this, pszRuleName, dwRuleId, dwAttributes, fCreateIfNotExist, out phInitialState);
			public HRESULT ClearRule(out SPSTATEHANDLE__ hState) mut => VT.ClearRule(ref this, out hState);
			public HRESULT CreateNewState(out SPSTATEHANDLE__ hState, out SPSTATEHANDLE__* phState) mut => VT.CreateNewState(ref this, out hState, out phState);
			public HRESULT AddWordTransition(out SPSTATEHANDLE__ hFromState, out SPSTATEHANDLE__ hToState, PWSTR psz, PWSTR pszSeparators, SPGRAMMARWORDTYPE eWordType, float Weight, in SPPROPERTYINFO pPropInfo) mut => VT.AddWordTransition(ref this, out hFromState, out hToState, psz, pszSeparators, eWordType, Weight, pPropInfo);
			public HRESULT AddRuleTransition(out SPSTATEHANDLE__ hFromState, out SPSTATEHANDLE__ hToState, out SPSTATEHANDLE__ hRule, float Weight, in SPPROPERTYINFO pPropInfo) mut => VT.AddRuleTransition(ref this, out hFromState, out hToState, out hRule, Weight, pPropInfo);
			public HRESULT AddResource(out SPSTATEHANDLE__ hRuleState, PWSTR pszResourceName, PWSTR pszResourceValue) mut => VT.AddResource(ref this, out hRuleState, pszResourceName, pszResourceValue);
			public HRESULT Commit(uint32 dwReserved) mut => VT.Commit(ref this, dwReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, uint16 NewLanguage) ResetGrammar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, PWSTR pszRuleName, uint32 dwRuleId, uint32 dwAttributes, BOOL fCreateIfNotExist, out SPSTATEHANDLE__* phInitialState) GetRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, out SPSTATEHANDLE__ hState) ClearRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, out SPSTATEHANDLE__ hState, out SPSTATEHANDLE__* phState) CreateNewState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, out SPSTATEHANDLE__ hFromState, out SPSTATEHANDLE__ hToState, PWSTR psz, PWSTR pszSeparators, SPGRAMMARWORDTYPE eWordType, float Weight, in SPPROPERTYINFO pPropInfo) AddWordTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, out SPSTATEHANDLE__ hFromState, out SPSTATEHANDLE__ hToState, out SPSTATEHANDLE__ hRule, float Weight, in SPPROPERTYINFO pPropInfo) AddRuleTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, out SPSTATEHANDLE__ hRuleState, PWSTR pszResourceName, PWSTR pszResourceValue) AddResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder self, uint32 dwReserved) Commit;
			}
		}
		[CRepr]
		public struct ISpRecoGrammar : ISpGrammarBuilder
		{
			public const new Guid IID = .(0x2177db29, 0x7f45, 0x47d0, 0x85, 0x54, 0x06, 0x7e, 0x91, 0xc8, 0x05, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGrammarId(out uint64 pullGrammarId) mut => VT.GetGrammarId(ref this, out pullGrammarId);
			public HRESULT GetRecoContext(out ISpRecoContext* ppRecoCtxt) mut => VT.GetRecoContext(ref this, out ppRecoCtxt);
			public HRESULT LoadCmdFromFile(PWSTR pszFileName, SPLOADOPTIONS Options) mut => VT.LoadCmdFromFile(ref this, pszFileName, Options);
			public HRESULT LoadCmdFromObject(in Guid rcid, PWSTR pszGrammarName, SPLOADOPTIONS Options) mut => VT.LoadCmdFromObject(ref this, rcid, pszGrammarName, Options);
			public HRESULT LoadCmdFromResource(HINSTANCE hModule, PWSTR pszResourceName, PWSTR pszResourceType, uint16 wLanguage, SPLOADOPTIONS Options) mut => VT.LoadCmdFromResource(ref this, hModule, pszResourceName, pszResourceType, wLanguage, Options);
			public HRESULT LoadCmdFromMemory(in SPBINARYGRAMMAR pGrammar, SPLOADOPTIONS Options) mut => VT.LoadCmdFromMemory(ref this, pGrammar, Options);
			public HRESULT LoadCmdFromProprietaryGrammar(in Guid rguidParam, PWSTR pszStringParam, void* pvDataPrarm, uint32 cbDataSize, SPLOADOPTIONS Options) mut => VT.LoadCmdFromProprietaryGrammar(ref this, rguidParam, pszStringParam, pvDataPrarm, cbDataSize, Options);
			public HRESULT SetRuleState(PWSTR pszName, void* pReserved, SPRULESTATE NewState) mut => VT.SetRuleState(ref this, pszName, pReserved, NewState);
			public HRESULT SetRuleIdState(uint32 ulRuleId, SPRULESTATE NewState) mut => VT.SetRuleIdState(ref this, ulRuleId, NewState);
			public HRESULT LoadDictation(PWSTR pszTopicName, SPLOADOPTIONS Options) mut => VT.LoadDictation(ref this, pszTopicName, Options);
			public HRESULT UnloadDictation() mut => VT.UnloadDictation(ref this);
			public HRESULT SetDictationState(SPRULESTATE NewState) mut => VT.SetDictationState(ref this, NewState);
			public HRESULT SetWordSequenceData(char16* pText, uint32 cchText, in SPTEXTSELECTIONINFO pInfo) mut => VT.SetWordSequenceData(ref this, pText, cchText, pInfo);
			public HRESULT SetTextSelection(in SPTEXTSELECTIONINFO pInfo) mut => VT.SetTextSelection(ref this, pInfo);
			public HRESULT IsPronounceable(PWSTR pszWord, out SPWORDPRONOUNCEABLE pWordPronounceable) mut => VT.IsPronounceable(ref this, pszWord, out pWordPronounceable);
			public HRESULT SetGrammarState(SPGRAMMARSTATE eGrammarState) mut => VT.SetGrammarState(ref this, eGrammarState);
			public HRESULT SaveCmd(ref IStream pStream, PWSTR* ppszCoMemErrorText) mut => VT.SaveCmd(ref this, ref pStream, ppszCoMemErrorText);
			public HRESULT GetGrammarState(out SPGRAMMARSTATE peGrammarState) mut => VT.GetGrammarState(ref this, out peGrammarState);

			[CRepr]
			public struct VTable : ISpGrammarBuilder.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, out uint64 pullGrammarId) GetGrammarId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, out ISpRecoContext* ppRecoCtxt) GetRecoContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, PWSTR pszFileName, SPLOADOPTIONS Options) LoadCmdFromFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, in Guid rcid, PWSTR pszGrammarName, SPLOADOPTIONS Options) LoadCmdFromObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, HINSTANCE hModule, PWSTR pszResourceName, PWSTR pszResourceType, uint16 wLanguage, SPLOADOPTIONS Options) LoadCmdFromResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, in SPBINARYGRAMMAR pGrammar, SPLOADOPTIONS Options) LoadCmdFromMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, in Guid rguidParam, PWSTR pszStringParam, void* pvDataPrarm, uint32 cbDataSize, SPLOADOPTIONS Options) LoadCmdFromProprietaryGrammar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, PWSTR pszName, void* pReserved, SPRULESTATE NewState) SetRuleState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, uint32 ulRuleId, SPRULESTATE NewState) SetRuleIdState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, PWSTR pszTopicName, SPLOADOPTIONS Options) LoadDictation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self) UnloadDictation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, SPRULESTATE NewState) SetDictationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, char16* pText, uint32 cchText, in SPTEXTSELECTIONINFO pInfo) SetWordSequenceData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, in SPTEXTSELECTIONINFO pInfo) SetTextSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, PWSTR pszWord, out SPWORDPRONOUNCEABLE pWordPronounceable) IsPronounceable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, SPGRAMMARSTATE eGrammarState) SetGrammarState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, ref IStream pStream, PWSTR* ppszCoMemErrorText) SaveCmd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar self, out SPGRAMMARSTATE peGrammarState) GetGrammarState;
			}
		}
		[CRepr]
		public struct ISpGrammarBuilder2 : IUnknown
		{
			public const new Guid IID = .(0x8ab10026, 0x20cc, 0x4b20, 0x8c, 0x22, 0xa4, 0x9c, 0x9b, 0xa7, 0x8f, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTextSubset(out SPSTATEHANDLE__ hFromState, out SPSTATEHANDLE__ hToState, PWSTR psz, SPMATCHINGMODE eMatchMode) mut => VT.AddTextSubset(ref this, out hFromState, out hToState, psz, eMatchMode);
			public HRESULT SetPhoneticAlphabet(PHONETICALPHABET phoneticALphabet) mut => VT.SetPhoneticAlphabet(ref this, phoneticALphabet);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder2 self, out SPSTATEHANDLE__ hFromState, out SPSTATEHANDLE__ hToState, PWSTR psz, SPMATCHINGMODE eMatchMode) AddTextSubset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpGrammarBuilder2 self, PHONETICALPHABET phoneticALphabet) SetPhoneticAlphabet;
			}
		}
		[CRepr]
		public struct ISpRecoGrammar2 : IUnknown
		{
			public const new Guid IID = .(0x4b37bc9e, 0x9ed6, 0x44a3, 0x93, 0xd3, 0x18, 0xf0, 0x22, 0xb7, 0x9e, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRules(out SPRULE* ppCoMemRules, out uint32 puNumRules) mut => VT.GetRules(ref this, out ppCoMemRules, out puNumRules);
			public HRESULT LoadCmdFromFile2(PWSTR pszFileName, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) mut => VT.LoadCmdFromFile2(ref this, pszFileName, Options, pszSharingUri, pszBaseUri);
			public HRESULT LoadCmdFromMemory2(in SPBINARYGRAMMAR pGrammar, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) mut => VT.LoadCmdFromMemory2(ref this, pGrammar, Options, pszSharingUri, pszBaseUri);
			public HRESULT SetRulePriority(PWSTR pszRuleName, uint32 ulRuleId, int32 nRulePriority) mut => VT.SetRulePriority(ref this, pszRuleName, ulRuleId, nRulePriority);
			public HRESULT SetRuleWeight(PWSTR pszRuleName, uint32 ulRuleId, float flWeight) mut => VT.SetRuleWeight(ref this, pszRuleName, ulRuleId, flWeight);
			public HRESULT SetDictationWeight(float flWeight) mut => VT.SetDictationWeight(ref this, flWeight);
			public HRESULT SetGrammarLoader(ref ISpeechResourceLoader pLoader) mut => VT.SetGrammarLoader(ref this, ref pLoader);
			public HRESULT SetSMLSecurityManager(ref IInternetSecurityManager pSMLSecurityManager) mut => VT.SetSMLSecurityManager(ref this, ref pSMLSecurityManager);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, out SPRULE* ppCoMemRules, out uint32 puNumRules) GetRules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, PWSTR pszFileName, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) LoadCmdFromFile2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, in SPBINARYGRAMMAR pGrammar, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) LoadCmdFromMemory2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, PWSTR pszRuleName, uint32 ulRuleId, int32 nRulePriority) SetRulePriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, PWSTR pszRuleName, uint32 ulRuleId, float flWeight) SetRuleWeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, float flWeight) SetDictationWeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, ref ISpeechResourceLoader pLoader) SetGrammarLoader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoGrammar2 self, ref IInternetSecurityManager pSMLSecurityManager) SetSMLSecurityManager;
			}
		}
		[CRepr]
		public struct ISpeechResourceLoader : IDispatch
		{
			public const new Guid IID = .(0xb9ac5783, 0xfcd0, 0x4b21, 0xb1, 0x19, 0xb4, 0xf8, 0xda, 0x8f, 0xd2, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadResource(BSTR bstrResourceUri, int16 fAlwaysReload, out IUnknown* pStream, BSTR* pbstrMIMEType, out int16 pfModified, BSTR* pbstrRedirectUrl) mut => VT.LoadResource(ref this, bstrResourceUri, fAlwaysReload, out pStream, pbstrMIMEType, out pfModified, pbstrRedirectUrl);
			public HRESULT GetLocalCopy(BSTR bstrResourceUri, out BSTR pbstrLocalPath, BSTR* pbstrMIMEType, BSTR* pbstrRedirectUrl) mut => VT.GetLocalCopy(ref this, bstrResourceUri, out pbstrLocalPath, pbstrMIMEType, pbstrRedirectUrl);
			public HRESULT ReleaseLocalCopy(BSTR pbstrLocalPath) mut => VT.ReleaseLocalCopy(ref this, pbstrLocalPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechResourceLoader self, BSTR bstrResourceUri, int16 fAlwaysReload, out IUnknown* pStream, BSTR* pbstrMIMEType, out int16 pfModified, BSTR* pbstrRedirectUrl) LoadResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechResourceLoader self, BSTR bstrResourceUri, out BSTR pbstrLocalPath, BSTR* pbstrMIMEType, BSTR* pbstrRedirectUrl) GetLocalCopy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechResourceLoader self, BSTR pbstrLocalPath) ReleaseLocalCopy;
			}
		}
		[CRepr]
		public struct ISpRecoContext : ISpEventSource
		{
			public const new Guid IID = .(0xf740a62f, 0x7c15, 0x489e, 0x82, 0x34, 0x94, 0x0a, 0x33, 0xd9, 0x27, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRecognizer(out ISpRecognizer* ppRecognizer) mut => VT.GetRecognizer(ref this, out ppRecognizer);
			public HRESULT CreateGrammar(uint64 ullGrammarId, out ISpRecoGrammar* ppGrammar) mut => VT.CreateGrammar(ref this, ullGrammarId, out ppGrammar);
			public HRESULT GetStatus(out SPRECOCONTEXTSTATUS pStatus) mut => VT.GetStatus(ref this, out pStatus);
			public HRESULT GetMaxAlternates(out uint32 pcAlternates) mut => VT.GetMaxAlternates(ref this, out pcAlternates);
			public HRESULT SetMaxAlternates(uint32 cAlternates) mut => VT.SetMaxAlternates(ref this, cAlternates);
			public HRESULT SetAudioOptions(SPAUDIOOPTIONS Options, in Guid pAudioFormatId, in WAVEFORMATEX pWaveFormatEx) mut => VT.SetAudioOptions(ref this, Options, pAudioFormatId, pWaveFormatEx);
			public HRESULT GetAudioOptions(out SPAUDIOOPTIONS pOptions, out Guid pAudioFormatId, out WAVEFORMATEX* ppCoMemWFEX) mut => VT.GetAudioOptions(ref this, out pOptions, out pAudioFormatId, out ppCoMemWFEX);
			public HRESULT DeserializeResult(in SPSERIALIZEDRESULT pSerializedResult, out ISpRecoResult* ppResult) mut => VT.DeserializeResult(ref this, pSerializedResult, out ppResult);
			public HRESULT Bookmark(SPBOOKMARKOPTIONS Options, uint64 ullStreamPosition, LPARAM lparamEvent) mut => VT.Bookmark(ref this, Options, ullStreamPosition, lparamEvent);
			public HRESULT SetAdaptationData(PWSTR pAdaptationData, uint32 cch) mut => VT.SetAdaptationData(ref this, pAdaptationData, cch);
			public HRESULT Pause(uint32 dwReserved) mut => VT.Pause(ref this, dwReserved);
			public HRESULT Resume(uint32 dwReserved) mut => VT.Resume(ref this, dwReserved);
			public HRESULT SetVoice(ref ISpVoice pVoice, BOOL fAllowFormatChanges) mut => VT.SetVoice(ref this, ref pVoice, fAllowFormatChanges);
			public HRESULT GetVoice(out ISpVoice* ppVoice) mut => VT.GetVoice(ref this, out ppVoice);
			public HRESULT SetVoicePurgeEvent(uint64 ullEventInterest) mut => VT.SetVoicePurgeEvent(ref this, ullEventInterest);
			public HRESULT GetVoicePurgeEvent(out uint64 pullEventInterest) mut => VT.GetVoicePurgeEvent(ref this, out pullEventInterest);
			public HRESULT SetContextState(SPCONTEXTSTATE eContextState) mut => VT.SetContextState(ref this, eContextState);
			public HRESULT GetContextState(out SPCONTEXTSTATE peContextState) mut => VT.GetContextState(ref this, out peContextState);

			[CRepr]
			public struct VTable : ISpEventSource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out ISpRecognizer* ppRecognizer) GetRecognizer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, uint64 ullGrammarId, out ISpRecoGrammar* ppGrammar) CreateGrammar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out SPRECOCONTEXTSTATUS pStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out uint32 pcAlternates) GetMaxAlternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, uint32 cAlternates) SetMaxAlternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, SPAUDIOOPTIONS Options, in Guid pAudioFormatId, in WAVEFORMATEX pWaveFormatEx) SetAudioOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out SPAUDIOOPTIONS pOptions, out Guid pAudioFormatId, out WAVEFORMATEX* ppCoMemWFEX) GetAudioOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, in SPSERIALIZEDRESULT pSerializedResult, out ISpRecoResult* ppResult) DeserializeResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, SPBOOKMARKOPTIONS Options, uint64 ullStreamPosition, LPARAM lparamEvent) Bookmark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, PWSTR pAdaptationData, uint32 cch) SetAdaptationData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, uint32 dwReserved) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, uint32 dwReserved) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, ref ISpVoice pVoice, BOOL fAllowFormatChanges) SetVoice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out ISpVoice* ppVoice) GetVoice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, uint64 ullEventInterest) SetVoicePurgeEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out uint64 pullEventInterest) GetVoicePurgeEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, SPCONTEXTSTATE eContextState) SetContextState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext self, out SPCONTEXTSTATE peContextState) GetContextState;
			}
		}
		[CRepr]
		public struct ISpRecoContext2 : IUnknown
		{
			public const new Guid IID = .(0xbead311c, 0x52ff, 0x437f, 0x94, 0x64, 0x6b, 0x21, 0x05, 0x4c, 0xa7, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGrammarOptions(uint32 eGrammarOptions) mut => VT.SetGrammarOptions(ref this, eGrammarOptions);
			public HRESULT GetGrammarOptions(out uint32 peGrammarOptions) mut => VT.GetGrammarOptions(ref this, out peGrammarOptions);
			public HRESULT SetAdaptationData2(PWSTR pAdaptationData, uint32 cch, PWSTR pTopicName, uint32 eAdaptationSettings, SPADAPTATIONRELEVANCE eRelevance) mut => VT.SetAdaptationData2(ref this, pAdaptationData, cch, pTopicName, eAdaptationSettings, eRelevance);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext2 self, uint32 eGrammarOptions) SetGrammarOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext2 self, out uint32 peGrammarOptions) GetGrammarOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecoContext2 self, PWSTR pAdaptationData, uint32 cch, PWSTR pTopicName, uint32 eAdaptationSettings, SPADAPTATIONRELEVANCE eRelevance) SetAdaptationData2;
			}
		}
		[CRepr]
		public struct ISpProperties : IUnknown
		{
			public const new Guid IID = .(0x5b4fb971, 0xb115, 0x4de1, 0xad, 0x97, 0xe4, 0x82, 0xe3, 0xbf, 0x6e, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPropertyNum(PWSTR pName, int32 lValue) mut => VT.SetPropertyNum(ref this, pName, lValue);
			public HRESULT GetPropertyNum(PWSTR pName, out int32 plValue) mut => VT.GetPropertyNum(ref this, pName, out plValue);
			public HRESULT SetPropertyString(PWSTR pName, PWSTR pValue) mut => VT.SetPropertyString(ref this, pName, pValue);
			public HRESULT GetPropertyString(PWSTR pName, out PWSTR ppCoMemValue) mut => VT.GetPropertyString(ref this, pName, out ppCoMemValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpProperties self, PWSTR pName, int32 lValue) SetPropertyNum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpProperties self, PWSTR pName, out int32 plValue) GetPropertyNum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpProperties self, PWSTR pName, PWSTR pValue) SetPropertyString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpProperties self, PWSTR pName, out PWSTR ppCoMemValue) GetPropertyString;
			}
		}
		[CRepr]
		public struct ISpRecognizer : ISpProperties
		{
			public const new Guid IID = .(0xc2b5f241, 0xdaa0, 0x4507, 0x9e, 0x16, 0x5a, 0x1e, 0xaa, 0x2b, 0x7a, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRecognizer(ref ISpObjectToken pRecognizer) mut => VT.SetRecognizer(ref this, ref pRecognizer);
			public HRESULT GetRecognizer(out ISpObjectToken* ppRecognizer) mut => VT.GetRecognizer(ref this, out ppRecognizer);
			public HRESULT SetInput(IUnknown* pUnkInput, BOOL fAllowFormatChanges) mut => VT.SetInput(ref this, pUnkInput, fAllowFormatChanges);
			public HRESULT GetInputObjectToken(out ISpObjectToken* ppToken) mut => VT.GetInputObjectToken(ref this, out ppToken);
			public HRESULT GetInputStream(out ISpStreamFormat* ppStream) mut => VT.GetInputStream(ref this, out ppStream);
			public HRESULT CreateRecoContext(out ISpRecoContext* ppNewCtxt) mut => VT.CreateRecoContext(ref this, out ppNewCtxt);
			public HRESULT GetRecoProfile(out ISpObjectToken* ppToken) mut => VT.GetRecoProfile(ref this, out ppToken);
			public HRESULT SetRecoProfile(ref ISpObjectToken pToken) mut => VT.SetRecoProfile(ref this, ref pToken);
			public HRESULT IsSharedInstance() mut => VT.IsSharedInstance(ref this);
			public HRESULT GetRecoState(out SPRECOSTATE pState) mut => VT.GetRecoState(ref this, out pState);
			public HRESULT SetRecoState(SPRECOSTATE NewState) mut => VT.SetRecoState(ref this, NewState);
			public HRESULT GetStatus(out SPRECOGNIZERSTATUS pStatus) mut => VT.GetStatus(ref this, out pStatus);
			public HRESULT GetFormat(SPWAVEFORMATTYPE WaveFormatType, out Guid pFormatId, out WAVEFORMATEX* ppCoMemWFEX) mut => VT.GetFormat(ref this, WaveFormatType, out pFormatId, out ppCoMemWFEX);
			public HRESULT IsUISupported(PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, out BOOL pfSupported) mut => VT.IsUISupported(ref this, pszTypeOfUI, pvExtraData, cbExtraData, out pfSupported);
			public HRESULT DisplayUI(HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) mut => VT.DisplayUI(ref this, hwndParent, pszTitle, pszTypeOfUI, pvExtraData, cbExtraData);
			public HRESULT EmulateRecognition(ref ISpPhrase pPhrase) mut => VT.EmulateRecognition(ref this, ref pPhrase);

			[CRepr]
			public struct VTable : ISpProperties.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, ref ISpObjectToken pRecognizer) SetRecognizer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out ISpObjectToken* ppRecognizer) GetRecognizer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, IUnknown* pUnkInput, BOOL fAllowFormatChanges) SetInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out ISpObjectToken* ppToken) GetInputObjectToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out ISpStreamFormat* ppStream) GetInputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out ISpRecoContext* ppNewCtxt) CreateRecoContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out ISpObjectToken* ppToken) GetRecoProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, ref ISpObjectToken pToken) SetRecoProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self) IsSharedInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out SPRECOSTATE pState) GetRecoState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, SPRECOSTATE NewState) SetRecoState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, out SPRECOGNIZERSTATUS pStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, SPWAVEFORMATTYPE WaveFormatType, out Guid pFormatId, out WAVEFORMATEX* ppCoMemWFEX) GetFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, out BOOL pfSupported) IsUISupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) DisplayUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer self, ref ISpPhrase pPhrase) EmulateRecognition;
			}
		}
		[CRepr]
		public struct ISpSerializeState : IUnknown
		{
			public const new Guid IID = .(0x21b501a0, 0x0ec7, 0x46c9, 0x92, 0xc3, 0xa2, 0xbc, 0x78, 0x4c, 0x54, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSerializedState(uint8** ppbData, out uint32 pulSize, uint32 dwReserved) mut => VT.GetSerializedState(ref this, ppbData, out pulSize, dwReserved);
			public HRESULT SetSerializedState(ref uint8 pbData, uint32 ulSize, uint32 dwReserved) mut => VT.SetSerializedState(ref this, ref pbData, ulSize, dwReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpSerializeState self, uint8** ppbData, out uint32 pulSize, uint32 dwReserved) GetSerializedState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpSerializeState self, ref uint8 pbData, uint32 ulSize, uint32 dwReserved) SetSerializedState;
			}
		}
		[CRepr]
		public struct ISpRecognizer2 : IUnknown
		{
			public const new Guid IID = .(0x8fc6d974, 0xc81e, 0x4098, 0x93, 0xc5, 0x01, 0x47, 0xf6, 0x1e, 0xd4, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EmulateRecognitionEx(ref ISpPhrase pPhrase, uint32 dwCompareFlags) mut => VT.EmulateRecognitionEx(ref this, ref pPhrase, dwCompareFlags);
			public HRESULT SetTrainingState(BOOL fDoingTraining, BOOL fAdaptFromTrainingData) mut => VT.SetTrainingState(ref this, fDoingTraining, fAdaptFromTrainingData);
			public HRESULT ResetAcousticModelAdaptation() mut => VT.ResetAcousticModelAdaptation(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer2 self, ref ISpPhrase pPhrase, uint32 dwCompareFlags) EmulateRecognitionEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer2 self, BOOL fDoingTraining, BOOL fAdaptFromTrainingData) SetTrainingState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpRecognizer2 self) ResetAcousticModelAdaptation;
			}
		}
		[CRepr]
		public struct ISpEnginePronunciation : IUnknown
		{
			public const new Guid IID = .(0xc360ce4b, 0x76d1, 0x4214, 0xad, 0x68, 0x52, 0x65, 0x7d, 0x50, 0x83, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Normalize(PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, out SPNORMALIZATIONLIST pNormalizationList) mut => VT.Normalize(ref this, pszWord, pszLeftContext, pszRightContext, LangID, out pNormalizationList);
			public HRESULT GetPronunciations(PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, out SPWORDPRONUNCIATIONLIST pEnginePronunciationList) mut => VT.GetPronunciations(ref this, pszWord, pszLeftContext, pszRightContext, LangID, out pEnginePronunciationList);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEnginePronunciation self, PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, out SPNORMALIZATIONLIST pNormalizationList) Normalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpEnginePronunciation self, PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, out SPWORDPRONUNCIATIONLIST pEnginePronunciationList) GetPronunciations;
			}
		}
		[CRepr]
		public struct ISpDisplayAlternates : IUnknown
		{
			public const new Guid IID = .(0xc8d7c7e2, 0x0dde, 0x44b7, 0xaf, 0xe3, 0xb0, 0xc9, 0x91, 0xfb, 0xeb, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDisplayAlternates(in SPDISPLAYPHRASE pPhrase, uint32 cRequestCount, out SPDISPLAYPHRASE* ppCoMemPhrases, out uint32 pcPhrasesReturned) mut => VT.GetDisplayAlternates(ref this, pPhrase, cRequestCount, out ppCoMemPhrases, out pcPhrasesReturned);
			public HRESULT SetFullStopTrailSpace(uint32 ulTrailSpace) mut => VT.SetFullStopTrailSpace(ref this, ulTrailSpace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDisplayAlternates self, in SPDISPLAYPHRASE pPhrase, uint32 cRequestCount, out SPDISPLAYPHRASE* ppCoMemPhrases, out uint32 pcPhrasesReturned) GetDisplayAlternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpDisplayAlternates self, uint32 ulTrailSpace) SetFullStopTrailSpace;
			}
		}
		[CRepr]
		public struct ISpeechDataKey : IDispatch
		{
			public const new Guid IID = .(0xce17c09b, 0x4efa, 0x44d5, 0xa4, 0xc9, 0x59, 0xd9, 0x58, 0x5a, 0xb0, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBinaryValue(BSTR ValueName, VARIANT Value) mut => VT.SetBinaryValue(ref this, ValueName, Value);
			public HRESULT GetBinaryValue(BSTR ValueName, out VARIANT Value) mut => VT.GetBinaryValue(ref this, ValueName, out Value);
			public HRESULT SetStringValue(BSTR ValueName, BSTR Value) mut => VT.SetStringValue(ref this, ValueName, Value);
			public HRESULT GetStringValue(BSTR ValueName, BSTR* Value) mut => VT.GetStringValue(ref this, ValueName, Value);
			public HRESULT SetLongValue(BSTR ValueName, int32 Value) mut => VT.SetLongValue(ref this, ValueName, Value);
			public HRESULT GetLongValue(BSTR ValueName, out int32 Value) mut => VT.GetLongValue(ref this, ValueName, out Value);
			public HRESULT OpenKey(BSTR SubKeyName, ISpeechDataKey** SubKey) mut => VT.OpenKey(ref this, SubKeyName, SubKey);
			public HRESULT CreateKey(BSTR SubKeyName, ISpeechDataKey** SubKey) mut => VT.CreateKey(ref this, SubKeyName, SubKey);
			public HRESULT DeleteKey(BSTR SubKeyName) mut => VT.DeleteKey(ref this, SubKeyName);
			public HRESULT DeleteValue(BSTR ValueName) mut => VT.DeleteValue(ref this, ValueName);
			public HRESULT EnumKeys(int32 Index, BSTR* SubKeyName) mut => VT.EnumKeys(ref this, Index, SubKeyName);
			public HRESULT EnumValues(int32 Index, BSTR* ValueName) mut => VT.EnumValues(ref this, Index, ValueName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName, VARIANT Value) SetBinaryValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName, out VARIANT Value) GetBinaryValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName, BSTR Value) SetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName, BSTR* Value) GetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName, int32 Value) SetLongValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName, out int32 Value) GetLongValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR SubKeyName, ISpeechDataKey** SubKey) OpenKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR SubKeyName, ISpeechDataKey** SubKey) CreateKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR SubKeyName) DeleteKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, BSTR ValueName) DeleteValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, int32 Index, BSTR* SubKeyName) EnumKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechDataKey self, int32 Index, BSTR* ValueName) EnumValues;
			}
		}
		[CRepr]
		public struct ISpeechObjectToken : IDispatch
		{
			public const new Guid IID = .(0xc74a3adc, 0xb727, 0x4500, 0xa8, 0x4a, 0xb5, 0x26, 0x72, 0x1c, 0x8b, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* ObjectId) mut => VT.get_Id(ref this, ObjectId);
			public HRESULT get_DataKey(ISpeechDataKey** DataKey) mut => VT.get_DataKey(ref this, DataKey);
			public HRESULT get_Category(ISpeechObjectTokenCategory** Category) mut => VT.get_Category(ref this, Category);
			public HRESULT GetDescription(int32 Locale, BSTR* Description) mut => VT.GetDescription(ref this, Locale, Description);
			public HRESULT SetId(BSTR Id, BSTR CategoryID, int16 CreateIfNotExist) mut => VT.SetId(ref this, Id, CategoryID, CreateIfNotExist);
			public HRESULT GetAttribute(BSTR AttributeName, BSTR* AttributeValue) mut => VT.GetAttribute(ref this, AttributeName, AttributeValue);
			public HRESULT CreateInstance(IUnknown* pUnkOuter, SpeechTokenContext ClsContext, IUnknown** Object) mut => VT.CreateInstance(ref this, pUnkOuter, ClsContext, Object);
			public HRESULT Remove(BSTR ObjectStorageCLSID) mut => VT.Remove(ref this, ObjectStorageCLSID);
			public HRESULT GetStorageFileName(BSTR ObjectStorageCLSID, BSTR KeyName, BSTR FileName, SpeechTokenShellFolder Folder, BSTR* FilePath) mut => VT.GetStorageFileName(ref this, ObjectStorageCLSID, KeyName, FileName, Folder, FilePath);
			public HRESULT RemoveStorageFileName(BSTR ObjectStorageCLSID, BSTR KeyName, int16 DeleteFileA) mut => VT.RemoveStorageFileName(ref this, ObjectStorageCLSID, KeyName, DeleteFileA);
			public HRESULT IsUISupported(BSTR TypeOfUI, in VARIANT ExtraData, IUnknown* Object, out int16 Supported) mut => VT.IsUISupported(ref this, TypeOfUI, ExtraData, Object, out Supported);
			public HRESULT DisplayUI(int32 hWnd, BSTR Title, BSTR TypeOfUI, in VARIANT ExtraData, IUnknown* Object) mut => VT.DisplayUI(ref this, hWnd, Title, TypeOfUI, ExtraData, Object);
			public HRESULT MatchesAttributes(BSTR Attributes, out int16 Matches) mut => VT.MatchesAttributes(ref this, Attributes, out Matches);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR* ObjectId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, ISpeechDataKey** DataKey) get_DataKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, ISpeechObjectTokenCategory** Category) get_Category;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, int32 Locale, BSTR* Description) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR Id, BSTR CategoryID, int16 CreateIfNotExist) SetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR AttributeName, BSTR* AttributeValue) GetAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, IUnknown* pUnkOuter, SpeechTokenContext ClsContext, IUnknown** Object) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR ObjectStorageCLSID) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR ObjectStorageCLSID, BSTR KeyName, BSTR FileName, SpeechTokenShellFolder Folder, BSTR* FilePath) GetStorageFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR ObjectStorageCLSID, BSTR KeyName, int16 DeleteFileA) RemoveStorageFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR TypeOfUI, in VARIANT ExtraData, IUnknown* Object, out int16 Supported) IsUISupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, int32 hWnd, BSTR Title, BSTR TypeOfUI, in VARIANT ExtraData, IUnknown* Object) DisplayUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectToken self, BSTR Attributes, out int16 Matches) MatchesAttributes;
			}
		}
		[CRepr]
		public struct ISpeechObjectTokens : IDispatch
		{
			public const new Guid IID = .(0x9285b776, 0x2e7b, 0x4bc0, 0xb5, 0x3e, 0x58, 0x0e, 0xb6, 0xfa, 0x96, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechObjectToken** Token) mut => VT.Item(ref this, Index, Token);
			public HRESULT get__NewEnum(IUnknown** ppEnumVARIANT) mut => VT.get__NewEnum(ref this, ppEnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokens self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokens self, int32 Index, ISpeechObjectToken** Token) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokens self, IUnknown** ppEnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechObjectTokenCategory : IDispatch
		{
			public const new Guid IID = .(0xca7eac50, 0x2d01, 0x4145, 0x86, 0xd4, 0x5a, 0xe7, 0xd7, 0x0f, 0x44, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* Id) mut => VT.get_Id(ref this, Id);
			public HRESULT put_Default(BSTR TokenId) mut => VT.put_Default(ref this, TokenId);
			public HRESULT get_Default(BSTR* TokenId) mut => VT.get_Default(ref this, TokenId);
			public HRESULT SetId(BSTR Id, int16 CreateIfNotExist) mut => VT.SetId(ref this, Id, CreateIfNotExist);
			public HRESULT GetDataKey(SpeechDataKeyLocation Location, ISpeechDataKey** DataKey) mut => VT.GetDataKey(ref this, Location, DataKey);
			public HRESULT EnumerateTokens(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** Tokens) mut => VT.EnumerateTokens(ref this, RequiredAttributes, OptionalAttributes, Tokens);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokenCategory self, BSTR* Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokenCategory self, BSTR TokenId) put_Default;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokenCategory self, BSTR* TokenId) get_Default;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokenCategory self, BSTR Id, int16 CreateIfNotExist) SetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokenCategory self, SpeechDataKeyLocation Location, ISpeechDataKey** DataKey) GetDataKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechObjectTokenCategory self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** Tokens) EnumerateTokens;
			}
		}
		[CRepr]
		public struct ISpeechAudioBufferInfo : IDispatch
		{
			public const new Guid IID = .(0x11b103d8, 0x1142, 0x4edf, 0xa0, 0x93, 0x82, 0xfb, 0x39, 0x15, 0xf8, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MinNotification(out int32 MinNotification) mut => VT.get_MinNotification(ref this, out MinNotification);
			public HRESULT put_MinNotification(int32 MinNotification) mut => VT.put_MinNotification(ref this, MinNotification);
			public HRESULT get_BufferSize(out int32 BufferSize) mut => VT.get_BufferSize(ref this, out BufferSize);
			public HRESULT put_BufferSize(int32 BufferSize) mut => VT.put_BufferSize(ref this, BufferSize);
			public HRESULT get_EventBias(out int32 EventBias) mut => VT.get_EventBias(ref this, out EventBias);
			public HRESULT put_EventBias(int32 EventBias) mut => VT.put_EventBias(ref this, EventBias);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioBufferInfo self, out int32 MinNotification) get_MinNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioBufferInfo self, int32 MinNotification) put_MinNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioBufferInfo self, out int32 BufferSize) get_BufferSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioBufferInfo self, int32 BufferSize) put_BufferSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioBufferInfo self, out int32 EventBias) get_EventBias;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioBufferInfo self, int32 EventBias) put_EventBias;
			}
		}
		[CRepr]
		public struct ISpeechAudioStatus : IDispatch
		{
			public const new Guid IID = .(0xc62d9c91, 0x7458, 0x47f6, 0x86, 0x2d, 0x1e, 0xf8, 0x6f, 0xb0, 0xb2, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FreeBufferSpace(out int32 FreeBufferSpace) mut => VT.get_FreeBufferSpace(ref this, out FreeBufferSpace);
			public HRESULT get_NonBlockingIO(out int32 NonBlockingIO) mut => VT.get_NonBlockingIO(ref this, out NonBlockingIO);
			public HRESULT get_State(out SpeechAudioState State) mut => VT.get_State(ref this, out State);
			public HRESULT get_CurrentSeekPosition(out VARIANT CurrentSeekPosition) mut => VT.get_CurrentSeekPosition(ref this, out CurrentSeekPosition);
			public HRESULT get_CurrentDevicePosition(out VARIANT CurrentDevicePosition) mut => VT.get_CurrentDevicePosition(ref this, out CurrentDevicePosition);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioStatus self, out int32 FreeBufferSpace) get_FreeBufferSpace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioStatus self, out int32 NonBlockingIO) get_NonBlockingIO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioStatus self, out SpeechAudioState State) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioStatus self, out VARIANT CurrentSeekPosition) get_CurrentSeekPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioStatus self, out VARIANT CurrentDevicePosition) get_CurrentDevicePosition;
			}
		}
		[CRepr]
		public struct ISpeechAudioFormat : IDispatch
		{
			public const new Guid IID = .(0xe6e9c590, 0x3e18, 0x40e3, 0x82, 0x99, 0x06, 0x1f, 0x98, 0xbd, 0xe7, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out SpeechAudioFormatType AudioFormat) mut => VT.get_Type(ref this, out AudioFormat);
			public HRESULT put_Type(SpeechAudioFormatType AudioFormat) mut => VT.put_Type(ref this, AudioFormat);
			public HRESULT get_Guid(BSTR* Guid) mut => VT.get_Guid(ref this, Guid);
			public HRESULT put_Guid(BSTR Guid) mut => VT.put_Guid(ref this, Guid);
			public HRESULT GetWaveFormatEx(ISpeechWaveFormatEx** SpeechWaveFormatEx) mut => VT.GetWaveFormatEx(ref this, SpeechWaveFormatEx);
			public HRESULT SetWaveFormatEx(ISpeechWaveFormatEx* SpeechWaveFormatEx) mut => VT.SetWaveFormatEx(ref this, SpeechWaveFormatEx);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioFormat self, out SpeechAudioFormatType AudioFormat) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioFormat self, SpeechAudioFormatType AudioFormat) put_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioFormat self, BSTR* Guid) get_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioFormat self, BSTR Guid) put_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioFormat self, ISpeechWaveFormatEx** SpeechWaveFormatEx) GetWaveFormatEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudioFormat self, ISpeechWaveFormatEx* SpeechWaveFormatEx) SetWaveFormatEx;
			}
		}
		[CRepr]
		public struct ISpeechWaveFormatEx : IDispatch
		{
			public const new Guid IID = .(0x7a1ef0d5, 0x1581, 0x4741, 0x88, 0xe4, 0x20, 0x9a, 0x49, 0xf1, 0x1a, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FormatTag(out int16 FormatTag) mut => VT.get_FormatTag(ref this, out FormatTag);
			public HRESULT put_FormatTag(int16 FormatTag) mut => VT.put_FormatTag(ref this, FormatTag);
			public HRESULT get_Channels(out int16 Channels) mut => VT.get_Channels(ref this, out Channels);
			public HRESULT put_Channels(int16 Channels) mut => VT.put_Channels(ref this, Channels);
			public HRESULT get_SamplesPerSec(out int32 SamplesPerSec) mut => VT.get_SamplesPerSec(ref this, out SamplesPerSec);
			public HRESULT put_SamplesPerSec(int32 SamplesPerSec) mut => VT.put_SamplesPerSec(ref this, SamplesPerSec);
			public HRESULT get_AvgBytesPerSec(out int32 AvgBytesPerSec) mut => VT.get_AvgBytesPerSec(ref this, out AvgBytesPerSec);
			public HRESULT put_AvgBytesPerSec(int32 AvgBytesPerSec) mut => VT.put_AvgBytesPerSec(ref this, AvgBytesPerSec);
			public HRESULT get_BlockAlign(out int16 BlockAlign) mut => VT.get_BlockAlign(ref this, out BlockAlign);
			public HRESULT put_BlockAlign(int16 BlockAlign) mut => VT.put_BlockAlign(ref this, BlockAlign);
			public HRESULT get_BitsPerSample(out int16 BitsPerSample) mut => VT.get_BitsPerSample(ref this, out BitsPerSample);
			public HRESULT put_BitsPerSample(int16 BitsPerSample) mut => VT.put_BitsPerSample(ref this, BitsPerSample);
			public HRESULT get_ExtraData(out VARIANT ExtraData) mut => VT.get_ExtraData(ref this, out ExtraData);
			public HRESULT put_ExtraData(VARIANT ExtraData) mut => VT.put_ExtraData(ref this, ExtraData);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out int16 FormatTag) get_FormatTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, int16 FormatTag) put_FormatTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out int16 Channels) get_Channels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, int16 Channels) put_Channels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out int32 SamplesPerSec) get_SamplesPerSec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, int32 SamplesPerSec) put_SamplesPerSec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out int32 AvgBytesPerSec) get_AvgBytesPerSec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, int32 AvgBytesPerSec) put_AvgBytesPerSec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out int16 BlockAlign) get_BlockAlign;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, int16 BlockAlign) put_BlockAlign;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out int16 BitsPerSample) get_BitsPerSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, int16 BitsPerSample) put_BitsPerSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, out VARIANT ExtraData) get_ExtraData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechWaveFormatEx self, VARIANT ExtraData) put_ExtraData;
			}
		}
		[CRepr]
		public struct ISpeechBaseStream : IDispatch
		{
			public const new Guid IID = .(0x6450336f, 0x7d49, 0x4ced, 0x80, 0x97, 0x49, 0xd6, 0xde, 0xe3, 0x72, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Format(ISpeechAudioFormat** AudioFormat) mut => VT.get_Format(ref this, AudioFormat);
			public HRESULT putref_Format(ISpeechAudioFormat* AudioFormat) mut => VT.putref_Format(ref this, AudioFormat);
			public HRESULT Read(out VARIANT Buffer, int32 NumberOfBytes, out int32 BytesRead) mut => VT.Read(ref this, out Buffer, NumberOfBytes, out BytesRead);
			public HRESULT Write(VARIANT Buffer, out int32 BytesWritten) mut => VT.Write(ref this, Buffer, out BytesWritten);
			public HRESULT Seek(VARIANT Position, SpeechStreamSeekPositionType Origin, out VARIANT NewPosition) mut => VT.Seek(ref this, Position, Origin, out NewPosition);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechBaseStream self, ISpeechAudioFormat** AudioFormat) get_Format;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechBaseStream self, ISpeechAudioFormat* AudioFormat) putref_Format;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechBaseStream self, out VARIANT Buffer, int32 NumberOfBytes, out int32 BytesRead) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechBaseStream self, VARIANT Buffer, out int32 BytesWritten) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechBaseStream self, VARIANT Position, SpeechStreamSeekPositionType Origin, out VARIANT NewPosition) Seek;
			}
		}
		[CRepr]
		public struct ISpeechFileStream : ISpeechBaseStream
		{
			public const new Guid IID = .(0xaf67f125, 0xab39, 0x4e93, 0xb4, 0xa2, 0xcc, 0x2e, 0x66, 0xe1, 0x82, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(BSTR FileName, SpeechStreamFileMode FileMode, int16 DoEvents) mut => VT.Open(ref this, FileName, FileMode, DoEvents);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechFileStream self, BSTR FileName, SpeechStreamFileMode FileMode, int16 DoEvents) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechFileStream self) Close;
			}
		}
		[CRepr]
		public struct ISpeechMemoryStream : ISpeechBaseStream
		{
			public const new Guid IID = .(0xeeb14b68, 0x808b, 0x4abe, 0xa5, 0xea, 0xb5, 0x1d, 0xa7, 0x58, 0x80, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetData(VARIANT Data) mut => VT.SetData(ref this, Data);
			public HRESULT GetData(out VARIANT pData) mut => VT.GetData(ref this, out pData);

			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMemoryStream self, VARIANT Data) SetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMemoryStream self, out VARIANT pData) GetData;
			}
		}
		[CRepr]
		public struct ISpeechCustomStream : ISpeechBaseStream
		{
			public const new Guid IID = .(0x1a9e9f4f, 0x104f, 0x4db8, 0xa1, 0x15, 0xef, 0xd7, 0xfd, 0x0c, 0x97, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BaseStream(IUnknown** ppUnkStream) mut => VT.get_BaseStream(ref this, ppUnkStream);
			public HRESULT putref_BaseStream(IUnknown* pUnkStream) mut => VT.putref_BaseStream(ref this, pUnkStream);

			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechCustomStream self, IUnknown** ppUnkStream) get_BaseStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechCustomStream self, IUnknown* pUnkStream) putref_BaseStream;
			}
		}
		[CRepr]
		public struct ISpeechAudio : ISpeechBaseStream
		{
			public const new Guid IID = .(0xcff8e175, 0x019e, 0x11d3, 0xa0, 0x8e, 0x00, 0xc0, 0x4f, 0x8e, 0xf9, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(ISpeechAudioStatus** Status) mut => VT.get_Status(ref this, Status);
			public HRESULT get_BufferInfo(ISpeechAudioBufferInfo** BufferInfo) mut => VT.get_BufferInfo(ref this, BufferInfo);
			public HRESULT get_DefaultFormat(ISpeechAudioFormat** StreamFormat) mut => VT.get_DefaultFormat(ref this, StreamFormat);
			public HRESULT get_Volume(out int32 Volume) mut => VT.get_Volume(ref this, out Volume);
			public HRESULT put_Volume(int32 Volume) mut => VT.put_Volume(ref this, Volume);
			public HRESULT get_BufferNotifySize(out int32 BufferNotifySize) mut => VT.get_BufferNotifySize(ref this, out BufferNotifySize);
			public HRESULT put_BufferNotifySize(int32 BufferNotifySize) mut => VT.put_BufferNotifySize(ref this, BufferNotifySize);
			public HRESULT get_EventHandle(out int32 EventHandle) mut => VT.get_EventHandle(ref this, out EventHandle);
			public HRESULT SetState(SpeechAudioState State) mut => VT.SetState(ref this, State);

			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, ISpeechAudioStatus** Status) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, ISpeechAudioBufferInfo** BufferInfo) get_BufferInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, ISpeechAudioFormat** StreamFormat) get_DefaultFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, out int32 Volume) get_Volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, int32 Volume) put_Volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, out int32 BufferNotifySize) get_BufferNotifySize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, int32 BufferNotifySize) put_BufferNotifySize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, out int32 EventHandle) get_EventHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechAudio self, SpeechAudioState State) SetState;
			}
		}
		[CRepr]
		public struct ISpeechMMSysAudio : ISpeechAudio
		{
			public const new Guid IID = .(0x3c76af6d, 0x1fd7, 0x4831, 0x81, 0xd1, 0x3b, 0x71, 0xd5, 0xa1, 0x3c, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DeviceId(out int32 DeviceId) mut => VT.get_DeviceId(ref this, out DeviceId);
			public HRESULT put_DeviceId(int32 DeviceId) mut => VT.put_DeviceId(ref this, DeviceId);
			public HRESULT get_LineId(out int32 LineId) mut => VT.get_LineId(ref this, out LineId);
			public HRESULT put_LineId(int32 LineId) mut => VT.put_LineId(ref this, LineId);
			public HRESULT get_MMHandle(out int32 Handle) mut => VT.get_MMHandle(ref this, out Handle);

			[CRepr]
			public struct VTable : ISpeechAudio.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMMSysAudio self, out int32 DeviceId) get_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMMSysAudio self, int32 DeviceId) put_DeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMMSysAudio self, out int32 LineId) get_LineId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMMSysAudio self, int32 LineId) put_LineId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechMMSysAudio self, out int32 Handle) get_MMHandle;
			}
		}
		[CRepr]
		public struct ISpeechVoice : IDispatch
		{
			public const new Guid IID = .(0x269316d8, 0x57bd, 0x11d2, 0x9e, 0xee, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(ISpeechVoiceStatus** Status) mut => VT.get_Status(ref this, Status);
			public HRESULT get_Voice(ISpeechObjectToken** Voice) mut => VT.get_Voice(ref this, Voice);
			public HRESULT putref_Voice(ISpeechObjectToken* Voice) mut => VT.putref_Voice(ref this, Voice);
			public HRESULT get_AudioOutput(ISpeechObjectToken** AudioOutput) mut => VT.get_AudioOutput(ref this, AudioOutput);
			public HRESULT putref_AudioOutput(ISpeechObjectToken* AudioOutput) mut => VT.putref_AudioOutput(ref this, AudioOutput);
			public HRESULT get_AudioOutputStream(ISpeechBaseStream** AudioOutputStream) mut => VT.get_AudioOutputStream(ref this, AudioOutputStream);
			public HRESULT putref_AudioOutputStream(ISpeechBaseStream* AudioOutputStream) mut => VT.putref_AudioOutputStream(ref this, AudioOutputStream);
			public HRESULT get_Rate(out int32 Rate) mut => VT.get_Rate(ref this, out Rate);
			public HRESULT put_Rate(int32 Rate) mut => VT.put_Rate(ref this, Rate);
			public HRESULT get_Volume(out int32 Volume) mut => VT.get_Volume(ref this, out Volume);
			public HRESULT put_Volume(int32 Volume) mut => VT.put_Volume(ref this, Volume);
			public HRESULT put_AllowAudioOutputFormatChangesOnNextSet(int16 Allow) mut => VT.put_AllowAudioOutputFormatChangesOnNextSet(ref this, Allow);
			public HRESULT get_AllowAudioOutputFormatChangesOnNextSet(out int16 Allow) mut => VT.get_AllowAudioOutputFormatChangesOnNextSet(ref this, out Allow);
			public HRESULT get_EventInterests(out SpeechVoiceEvents EventInterestFlags) mut => VT.get_EventInterests(ref this, out EventInterestFlags);
			public HRESULT put_EventInterests(SpeechVoiceEvents EventInterestFlags) mut => VT.put_EventInterests(ref this, EventInterestFlags);
			public HRESULT put_Priority(SpeechVoicePriority Priority) mut => VT.put_Priority(ref this, Priority);
			public HRESULT get_Priority(out SpeechVoicePriority Priority) mut => VT.get_Priority(ref this, out Priority);
			public HRESULT put_AlertBoundary(SpeechVoiceEvents Boundary) mut => VT.put_AlertBoundary(ref this, Boundary);
			public HRESULT get_AlertBoundary(out SpeechVoiceEvents Boundary) mut => VT.get_AlertBoundary(ref this, out Boundary);
			public HRESULT put_SynchronousSpeakTimeout(int32 msTimeout) mut => VT.put_SynchronousSpeakTimeout(ref this, msTimeout);
			public HRESULT get_SynchronousSpeakTimeout(out int32 msTimeout) mut => VT.get_SynchronousSpeakTimeout(ref this, out msTimeout);
			public HRESULT Speak(BSTR Text, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) mut => VT.Speak(ref this, Text, Flags, out StreamNumber);
			public HRESULT SpeakStream(ISpeechBaseStream* Stream, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) mut => VT.SpeakStream(ref this, Stream, Flags, out StreamNumber);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT Skip(BSTR Type, int32 NumItems, out int32 NumSkipped) mut => VT.Skip(ref this, Type, NumItems, out NumSkipped);
			public HRESULT GetVoices(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut => VT.GetVoices(ref this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			public HRESULT GetAudioOutputs(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut => VT.GetAudioOutputs(ref this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			public HRESULT WaitUntilDone(int32 msTimeout, out int16 Done) mut => VT.WaitUntilDone(ref this, msTimeout, out Done);
			public HRESULT SpeakCompleteEvent(out int32 Handle) mut => VT.SpeakCompleteEvent(ref this, out Handle);
			public HRESULT IsUISupported(BSTR TypeOfUI, in VARIANT ExtraData, out int16 Supported) mut => VT.IsUISupported(ref this, TypeOfUI, ExtraData, out Supported);
			public HRESULT DisplayUI(int32 hWndParent, BSTR Title, BSTR TypeOfUI, in VARIANT ExtraData) mut => VT.DisplayUI(ref this, hWndParent, Title, TypeOfUI, ExtraData);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechVoiceStatus** Status) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechObjectToken** Voice) get_Voice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechObjectToken* Voice) putref_Voice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechObjectToken** AudioOutput) get_AudioOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechObjectToken* AudioOutput) putref_AudioOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechBaseStream** AudioOutputStream) get_AudioOutputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechBaseStream* AudioOutputStream) putref_AudioOutputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out int32 Rate) get_Rate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, int32 Rate) put_Rate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out int32 Volume) get_Volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, int32 Volume) put_Volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, int16 Allow) put_AllowAudioOutputFormatChangesOnNextSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out int16 Allow) get_AllowAudioOutputFormatChangesOnNextSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out SpeechVoiceEvents EventInterestFlags) get_EventInterests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, SpeechVoiceEvents EventInterestFlags) put_EventInterests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, SpeechVoicePriority Priority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out SpeechVoicePriority Priority) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, SpeechVoiceEvents Boundary) put_AlertBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out SpeechVoiceEvents Boundary) get_AlertBoundary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, int32 msTimeout) put_SynchronousSpeakTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out int32 msTimeout) get_SynchronousSpeakTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, BSTR Text, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) Speak;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, ISpeechBaseStream* Stream, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) SpeakStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, BSTR Type, int32 NumItems, out int32 NumSkipped) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetVoices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetAudioOutputs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, int32 msTimeout, out int16 Done) WaitUntilDone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, out int32 Handle) SpeakCompleteEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, BSTR TypeOfUI, in VARIANT ExtraData, out int16 Supported) IsUISupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoice self, int32 hWndParent, BSTR Title, BSTR TypeOfUI, in VARIANT ExtraData) DisplayUI;
			}
		}
		[CRepr]
		public struct ISpeechVoiceStatus : IDispatch
		{
			public const new Guid IID = .(0x8be47b07, 0x57f6, 0x11d2, 0x9e, 0xee, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentStreamNumber(out int32 StreamNumber) mut => VT.get_CurrentStreamNumber(ref this, out StreamNumber);
			public HRESULT get_LastStreamNumberQueued(out int32 StreamNumber) mut => VT.get_LastStreamNumberQueued(ref this, out StreamNumber);
			public HRESULT get_LastHResult(out int32 HResult) mut => VT.get_LastHResult(ref this, out HResult);
			public HRESULT get_RunningState(out SpeechRunState State) mut => VT.get_RunningState(ref this, out State);
			public HRESULT get_InputWordPosition(out int32 Position) mut => VT.get_InputWordPosition(ref this, out Position);
			public HRESULT get_InputWordLength(out int32 Length) mut => VT.get_InputWordLength(ref this, out Length);
			public HRESULT get_InputSentencePosition(out int32 Position) mut => VT.get_InputSentencePosition(ref this, out Position);
			public HRESULT get_InputSentenceLength(out int32 Length) mut => VT.get_InputSentenceLength(ref this, out Length);
			public HRESULT get_LastBookmark(BSTR* Bookmark) mut => VT.get_LastBookmark(ref this, Bookmark);
			public HRESULT get_LastBookmarkId(out int32 BookmarkId) mut => VT.get_LastBookmarkId(ref this, out BookmarkId);
			public HRESULT get_PhonemeId(out int16 PhoneId) mut => VT.get_PhonemeId(ref this, out PhoneId);
			public HRESULT get_VisemeId(out int16 VisemeId) mut => VT.get_VisemeId(ref this, out VisemeId);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 StreamNumber) get_CurrentStreamNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 StreamNumber) get_LastStreamNumberQueued;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 HResult) get_LastHResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out SpeechRunState State) get_RunningState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 Position) get_InputWordPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 Length) get_InputWordLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 Position) get_InputSentencePosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 Length) get_InputSentenceLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, BSTR* Bookmark) get_LastBookmark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int32 BookmarkId) get_LastBookmarkId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int16 PhoneId) get_PhonemeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechVoiceStatus self, out int16 VisemeId) get_VisemeId;
			}
		}
		[CRepr]
		public struct _ISpeechVoiceEvents : IDispatch
		{
			public const new Guid IID = .(0xa372acd1, 0x3bef, 0x4bbd, 0x8f, 0xfb, 0xcb, 0x3e, 0x2b, 0x41, 0x6a, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ISpeechRecognizer : IDispatch
		{
			public const new Guid IID = .(0x2d5f1c0c, 0xbd75, 0x4b08, 0x94, 0x78, 0x3b, 0x11, 0xfe, 0xa2, 0x58, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT putref_Recognizer(ISpeechObjectToken* Recognizer) mut => VT.putref_Recognizer(ref this, Recognizer);
			public HRESULT get_Recognizer(ISpeechObjectToken** Recognizer) mut => VT.get_Recognizer(ref this, Recognizer);
			public HRESULT put_AllowAudioInputFormatChangesOnNextSet(int16 Allow) mut => VT.put_AllowAudioInputFormatChangesOnNextSet(ref this, Allow);
			public HRESULT get_AllowAudioInputFormatChangesOnNextSet(out int16 Allow) mut => VT.get_AllowAudioInputFormatChangesOnNextSet(ref this, out Allow);
			public HRESULT putref_AudioInput(ISpeechObjectToken* AudioInput) mut => VT.putref_AudioInput(ref this, AudioInput);
			public HRESULT get_AudioInput(ISpeechObjectToken** AudioInput) mut => VT.get_AudioInput(ref this, AudioInput);
			public HRESULT putref_AudioInputStream(ISpeechBaseStream* AudioInputStream) mut => VT.putref_AudioInputStream(ref this, AudioInputStream);
			public HRESULT get_AudioInputStream(ISpeechBaseStream** AudioInputStream) mut => VT.get_AudioInputStream(ref this, AudioInputStream);
			public HRESULT get_IsShared(out int16 Shared) mut => VT.get_IsShared(ref this, out Shared);
			public HRESULT put_State(SpeechRecognizerState State) mut => VT.put_State(ref this, State);
			public HRESULT get_State(out SpeechRecognizerState State) mut => VT.get_State(ref this, out State);
			public HRESULT get_Status(ISpeechRecognizerStatus** Status) mut => VT.get_Status(ref this, Status);
			public HRESULT putref_Profile(ISpeechObjectToken* Profile) mut => VT.putref_Profile(ref this, Profile);
			public HRESULT get_Profile(ISpeechObjectToken** Profile) mut => VT.get_Profile(ref this, Profile);
			public HRESULT EmulateRecognition(VARIANT TextElements, ref VARIANT ElementDisplayAttributes, int32 LanguageId) mut => VT.EmulateRecognition(ref this, TextElements, ref ElementDisplayAttributes, LanguageId);
			public HRESULT CreateRecoContext(ISpeechRecoContext** NewContext) mut => VT.CreateRecoContext(ref this, NewContext);
			public HRESULT GetFormat(SpeechFormatType Type, ISpeechAudioFormat** Format) mut => VT.GetFormat(ref this, Type, Format);
			public HRESULT SetPropertyNumber(BSTR Name, int32 Value, out int16 Supported) mut => VT.SetPropertyNumber(ref this, Name, Value, out Supported);
			public HRESULT GetPropertyNumber(BSTR Name, out int32 Value, out int16 Supported) mut => VT.GetPropertyNumber(ref this, Name, out Value, out Supported);
			public HRESULT SetPropertyString(BSTR Name, BSTR Value, out int16 Supported) mut => VT.SetPropertyString(ref this, Name, Value, out Supported);
			public HRESULT GetPropertyString(BSTR Name, BSTR* Value, out int16 Supported) mut => VT.GetPropertyString(ref this, Name, Value, out Supported);
			public HRESULT IsUISupported(BSTR TypeOfUI, in VARIANT ExtraData, out int16 Supported) mut => VT.IsUISupported(ref this, TypeOfUI, ExtraData, out Supported);
			public HRESULT DisplayUI(int32 hWndParent, BSTR Title, BSTR TypeOfUI, in VARIANT ExtraData) mut => VT.DisplayUI(ref this, hWndParent, Title, TypeOfUI, ExtraData);
			public HRESULT GetRecognizers(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut => VT.GetRecognizers(ref this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			public HRESULT GetAudioInputs(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut => VT.GetAudioInputs(ref this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			public HRESULT GetProfiles(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut => VT.GetProfiles(ref this, RequiredAttributes, OptionalAttributes, ObjectTokens);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechObjectToken* Recognizer) putref_Recognizer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechObjectToken** Recognizer) get_Recognizer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, int16 Allow) put_AllowAudioInputFormatChangesOnNextSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, out int16 Allow) get_AllowAudioInputFormatChangesOnNextSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechObjectToken* AudioInput) putref_AudioInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechObjectToken** AudioInput) get_AudioInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechBaseStream* AudioInputStream) putref_AudioInputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechBaseStream** AudioInputStream) get_AudioInputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, out int16 Shared) get_IsShared;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, SpeechRecognizerState State) put_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, out SpeechRecognizerState State) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechRecognizerStatus** Status) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechObjectToken* Profile) putref_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechObjectToken** Profile) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, VARIANT TextElements, ref VARIANT ElementDisplayAttributes, int32 LanguageId) EmulateRecognition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, ISpeechRecoContext** NewContext) CreateRecoContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, SpeechFormatType Type, ISpeechAudioFormat** Format) GetFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR Name, int32 Value, out int16 Supported) SetPropertyNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR Name, out int32 Value, out int16 Supported) GetPropertyNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR Name, BSTR Value, out int16 Supported) SetPropertyString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR Name, BSTR* Value, out int16 Supported) GetPropertyString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR TypeOfUI, in VARIANT ExtraData, out int16 Supported) IsUISupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, int32 hWndParent, BSTR Title, BSTR TypeOfUI, in VARIANT ExtraData) DisplayUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetRecognizers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetAudioInputs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizer self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetProfiles;
			}
		}
		[CRepr]
		public struct ISpeechRecognizerStatus : IDispatch
		{
			public const new Guid IID = .(0xbff9e781, 0x53ec, 0x484e, 0xbb, 0x8a, 0x0e, 0x1b, 0x55, 0x51, 0xe3, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AudioStatus(ISpeechAudioStatus** AudioStatus) mut => VT.get_AudioStatus(ref this, AudioStatus);
			public HRESULT get_CurrentStreamPosition(out VARIANT pCurrentStreamPos) mut => VT.get_CurrentStreamPosition(ref this, out pCurrentStreamPos);
			public HRESULT get_CurrentStreamNumber(out int32 StreamNumber) mut => VT.get_CurrentStreamNumber(ref this, out StreamNumber);
			public HRESULT get_NumberOfActiveRules(out int32 NumberOfActiveRules) mut => VT.get_NumberOfActiveRules(ref this, out NumberOfActiveRules);
			public HRESULT get_ClsidEngine(BSTR* ClsidEngine) mut => VT.get_ClsidEngine(ref this, ClsidEngine);
			public HRESULT get_SupportedLanguages(out VARIANT SupportedLanguages) mut => VT.get_SupportedLanguages(ref this, out SupportedLanguages);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizerStatus self, ISpeechAudioStatus** AudioStatus) get_AudioStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizerStatus self, out VARIANT pCurrentStreamPos) get_CurrentStreamPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizerStatus self, out int32 StreamNumber) get_CurrentStreamNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizerStatus self, out int32 NumberOfActiveRules) get_NumberOfActiveRules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizerStatus self, BSTR* ClsidEngine) get_ClsidEngine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecognizerStatus self, out VARIANT SupportedLanguages) get_SupportedLanguages;
			}
		}
		[CRepr]
		public struct ISpeechRecoContext : IDispatch
		{
			public const new Guid IID = .(0x580aa49d, 0x7e1e, 0x4809, 0xb8, 0xe2, 0x57, 0xda, 0x80, 0x61, 0x04, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Recognizer(ISpeechRecognizer** Recognizer) mut => VT.get_Recognizer(ref this, Recognizer);
			public HRESULT get_AudioInputInterferenceStatus(out SpeechInterference Interference) mut => VT.get_AudioInputInterferenceStatus(ref this, out Interference);
			public HRESULT get_RequestedUIType(BSTR* UIType) mut => VT.get_RequestedUIType(ref this, UIType);
			public HRESULT putref_Voice(ISpeechVoice* Voice) mut => VT.putref_Voice(ref this, Voice);
			public HRESULT get_Voice(ISpeechVoice** Voice) mut => VT.get_Voice(ref this, Voice);
			public HRESULT put_AllowVoiceFormatMatchingOnNextSet(int16 Allow) mut => VT.put_AllowVoiceFormatMatchingOnNextSet(ref this, Allow);
			public HRESULT get_AllowVoiceFormatMatchingOnNextSet(out int16 pAllow) mut => VT.get_AllowVoiceFormatMatchingOnNextSet(ref this, out pAllow);
			public HRESULT put_VoicePurgeEvent(SpeechRecoEvents EventInterest) mut => VT.put_VoicePurgeEvent(ref this, EventInterest);
			public HRESULT get_VoicePurgeEvent(out SpeechRecoEvents EventInterest) mut => VT.get_VoicePurgeEvent(ref this, out EventInterest);
			public HRESULT put_EventInterests(SpeechRecoEvents EventInterest) mut => VT.put_EventInterests(ref this, EventInterest);
			public HRESULT get_EventInterests(out SpeechRecoEvents EventInterest) mut => VT.get_EventInterests(ref this, out EventInterest);
			public HRESULT put_CmdMaxAlternates(int32 MaxAlternates) mut => VT.put_CmdMaxAlternates(ref this, MaxAlternates);
			public HRESULT get_CmdMaxAlternates(out int32 MaxAlternates) mut => VT.get_CmdMaxAlternates(ref this, out MaxAlternates);
			public HRESULT put_State(SpeechRecoContextState State) mut => VT.put_State(ref this, State);
			public HRESULT get_State(out SpeechRecoContextState State) mut => VT.get_State(ref this, out State);
			public HRESULT put_RetainedAudio(SpeechRetainedAudioOptions Option) mut => VT.put_RetainedAudio(ref this, Option);
			public HRESULT get_RetainedAudio(out SpeechRetainedAudioOptions Option) mut => VT.get_RetainedAudio(ref this, out Option);
			public HRESULT putref_RetainedAudioFormat(ISpeechAudioFormat* Format) mut => VT.putref_RetainedAudioFormat(ref this, Format);
			public HRESULT get_RetainedAudioFormat(ISpeechAudioFormat** Format) mut => VT.get_RetainedAudioFormat(ref this, Format);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT CreateGrammar(VARIANT GrammarId, ISpeechRecoGrammar** Grammar) mut => VT.CreateGrammar(ref this, GrammarId, Grammar);
			public HRESULT CreateResultFromMemory(ref VARIANT ResultBlock, ISpeechRecoResult** Result) mut => VT.CreateResultFromMemory(ref this, ref ResultBlock, Result);
			public HRESULT Bookmark(SpeechBookmarkOptions Options, VARIANT StreamPos, VARIANT BookmarkId) mut => VT.Bookmark(ref this, Options, StreamPos, BookmarkId);
			public HRESULT SetAdaptationData(BSTR AdaptationString) mut => VT.SetAdaptationData(ref this, AdaptationString);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, ISpeechRecognizer** Recognizer) get_Recognizer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out SpeechInterference Interference) get_AudioInputInterferenceStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, BSTR* UIType) get_RequestedUIType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, ISpeechVoice* Voice) putref_Voice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, ISpeechVoice** Voice) get_Voice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, int16 Allow) put_AllowVoiceFormatMatchingOnNextSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out int16 pAllow) get_AllowVoiceFormatMatchingOnNextSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, SpeechRecoEvents EventInterest) put_VoicePurgeEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out SpeechRecoEvents EventInterest) get_VoicePurgeEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, SpeechRecoEvents EventInterest) put_EventInterests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out SpeechRecoEvents EventInterest) get_EventInterests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, int32 MaxAlternates) put_CmdMaxAlternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out int32 MaxAlternates) get_CmdMaxAlternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, SpeechRecoContextState State) put_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out SpeechRecoContextState State) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, SpeechRetainedAudioOptions Option) put_RetainedAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, out SpeechRetainedAudioOptions Option) get_RetainedAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, ISpeechAudioFormat* Format) putref_RetainedAudioFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, ISpeechAudioFormat** Format) get_RetainedAudioFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, VARIANT GrammarId, ISpeechRecoGrammar** Grammar) CreateGrammar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, ref VARIANT ResultBlock, ISpeechRecoResult** Result) CreateResultFromMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, SpeechBookmarkOptions Options, VARIANT StreamPos, VARIANT BookmarkId) Bookmark;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoContext self, BSTR AdaptationString) SetAdaptationData;
			}
		}
		[CRepr]
		public struct ISpeechRecoGrammar : IDispatch
		{
			public const new Guid IID = .(0xb6d6f79f, 0x2158, 0x4e50, 0xb5, 0xbc, 0x9a, 0x9c, 0xcd, 0x85, 0x2a, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(out VARIANT Id) mut => VT.get_Id(ref this, out Id);
			public HRESULT get_RecoContext(ISpeechRecoContext** RecoContext) mut => VT.get_RecoContext(ref this, RecoContext);
			public HRESULT put_State(SpeechGrammarState State) mut => VT.put_State(ref this, State);
			public HRESULT get_State(out SpeechGrammarState State) mut => VT.get_State(ref this, out State);
			public HRESULT get_Rules(ISpeechGrammarRules** Rules) mut => VT.get_Rules(ref this, Rules);
			public HRESULT Reset(int32 NewLanguage) mut => VT.Reset(ref this, NewLanguage);
			public HRESULT CmdLoadFromFile(BSTR FileName, SpeechLoadOption LoadOption) mut => VT.CmdLoadFromFile(ref this, FileName, LoadOption);
			public HRESULT CmdLoadFromObject(BSTR ClassId, BSTR GrammarName, SpeechLoadOption LoadOption) mut => VT.CmdLoadFromObject(ref this, ClassId, GrammarName, LoadOption);
			public HRESULT CmdLoadFromResource(int32 hModule, VARIANT ResourceName, VARIANT ResourceType, int32 LanguageId, SpeechLoadOption LoadOption) mut => VT.CmdLoadFromResource(ref this, hModule, ResourceName, ResourceType, LanguageId, LoadOption);
			public HRESULT CmdLoadFromMemory(VARIANT GrammarData, SpeechLoadOption LoadOption) mut => VT.CmdLoadFromMemory(ref this, GrammarData, LoadOption);
			public HRESULT CmdLoadFromProprietaryGrammar(BSTR ProprietaryGuid, BSTR ProprietaryString, VARIANT ProprietaryData, SpeechLoadOption LoadOption) mut => VT.CmdLoadFromProprietaryGrammar(ref this, ProprietaryGuid, ProprietaryString, ProprietaryData, LoadOption);
			public HRESULT CmdSetRuleState(BSTR Name, SpeechRuleState State) mut => VT.CmdSetRuleState(ref this, Name, State);
			public HRESULT CmdSetRuleIdState(int32 RuleId, SpeechRuleState State) mut => VT.CmdSetRuleIdState(ref this, RuleId, State);
			public HRESULT DictationLoad(BSTR TopicName, SpeechLoadOption LoadOption) mut => VT.DictationLoad(ref this, TopicName, LoadOption);
			public HRESULT DictationUnload() mut => VT.DictationUnload(ref this);
			public HRESULT DictationSetState(SpeechRuleState State) mut => VT.DictationSetState(ref this, State);
			public HRESULT SetWordSequenceData(BSTR Text, int32 TextLength, ISpeechTextSelectionInformation* Info) mut => VT.SetWordSequenceData(ref this, Text, TextLength, Info);
			public HRESULT SetTextSelection(ISpeechTextSelectionInformation* Info) mut => VT.SetTextSelection(ref this, Info);
			public HRESULT IsPronounceable(BSTR Word, out SpeechWordPronounceable WordPronounceable) mut => VT.IsPronounceable(ref this, Word, out WordPronounceable);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, out VARIANT Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, ISpeechRecoContext** RecoContext) get_RecoContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, SpeechGrammarState State) put_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, out SpeechGrammarState State) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, ISpeechGrammarRules** Rules) get_Rules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, int32 NewLanguage) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR FileName, SpeechLoadOption LoadOption) CmdLoadFromFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR ClassId, BSTR GrammarName, SpeechLoadOption LoadOption) CmdLoadFromObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, int32 hModule, VARIANT ResourceName, VARIANT ResourceType, int32 LanguageId, SpeechLoadOption LoadOption) CmdLoadFromResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, VARIANT GrammarData, SpeechLoadOption LoadOption) CmdLoadFromMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR ProprietaryGuid, BSTR ProprietaryString, VARIANT ProprietaryData, SpeechLoadOption LoadOption) CmdLoadFromProprietaryGrammar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR Name, SpeechRuleState State) CmdSetRuleState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, int32 RuleId, SpeechRuleState State) CmdSetRuleIdState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR TopicName, SpeechLoadOption LoadOption) DictationLoad;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self) DictationUnload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, SpeechRuleState State) DictationSetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR Text, int32 TextLength, ISpeechTextSelectionInformation* Info) SetWordSequenceData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, ISpeechTextSelectionInformation* Info) SetTextSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoGrammar self, BSTR Word, out SpeechWordPronounceable WordPronounceable) IsPronounceable;
			}
		}
		[CRepr]
		public struct _ISpeechRecoContextEvents : IDispatch
		{
			public const new Guid IID = .(0x7b8fcb42, 0x0e9d, 0x4f00, 0xa0, 0x48, 0x7b, 0x04, 0xd6, 0x17, 0x9d, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct ISpeechGrammarRule : IDispatch
		{
			public const new Guid IID = .(0xafe719cf, 0x5dd1, 0x44f2, 0x99, 0x9c, 0x7a, 0x39, 0x9f, 0x1c, 0xfc, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Attributes(out SpeechRuleAttributes Attributes) mut => VT.get_Attributes(ref this, out Attributes);
			public HRESULT get_InitialState(ISpeechGrammarRuleState** State) mut => VT.get_InitialState(ref this, State);
			public HRESULT get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HRESULT get_Id(out int32 Id) mut => VT.get_Id(ref this, out Id);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT AddResource(BSTR ResourceName, BSTR ResourceValue) mut => VT.AddResource(ref this, ResourceName, ResourceValue);
			public HRESULT AddState(ISpeechGrammarRuleState** State) mut => VT.AddState(ref this, State);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self, out SpeechRuleAttributes Attributes) get_Attributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self, ISpeechGrammarRuleState** State) get_InitialState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self, out int32 Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self, BSTR ResourceName, BSTR ResourceValue) AddResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRule self, ISpeechGrammarRuleState** State) AddState;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRules : IDispatch
		{
			public const new Guid IID = .(0x6ffa3b44, 0xfc2d, 0x40d1, 0x8a, 0xfc, 0x32, 0x91, 0x1c, 0x7f, 0x1a, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT FindRule(VARIANT RuleNameOrId, ISpeechGrammarRule** Rule) mut => VT.FindRule(ref this, RuleNameOrId, Rule);
			public HRESULT Item(int32 Index, ISpeechGrammarRule** Rule) mut => VT.Item(ref this, Index, Rule);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);
			public HRESULT get_Dynamic(out int16 Dynamic) mut => VT.get_Dynamic(ref this, out Dynamic);
			public HRESULT Add(BSTR RuleName, SpeechRuleAttributes Attributes, int32 RuleId, ISpeechGrammarRule** Rule) mut => VT.Add(ref this, RuleName, Attributes, RuleId, Rule);
			public HRESULT Commit() mut => VT.Commit(ref this);
			public HRESULT CommitAndSave(BSTR* ErrorText, out VARIANT SaveStream) mut => VT.CommitAndSave(ref this, ErrorText, out SaveStream);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, VARIANT RuleNameOrId, ISpeechGrammarRule** Rule) FindRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, int32 Index, ISpeechGrammarRule** Rule) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, IUnknown** EnumVARIANT) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, out int16 Dynamic) get_Dynamic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, BSTR RuleName, SpeechRuleAttributes Attributes, int32 RuleId, ISpeechGrammarRule** Rule) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRules self, BSTR* ErrorText, out VARIANT SaveStream) CommitAndSave;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRuleState : IDispatch
		{
			public const new Guid IID = .(0xd4286f2c, 0xee67, 0x45ae, 0xb9, 0x28, 0x28, 0xd6, 0x95, 0x36, 0x2e, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Rule(ISpeechGrammarRule** Rule) mut => VT.get_Rule(ref this, Rule);
			public HRESULT get_Transitions(ISpeechGrammarRuleStateTransitions** Transitions) mut => VT.get_Transitions(ref this, Transitions);
			public HRESULT AddWordTransition(ISpeechGrammarRuleState* DestState, BSTR Words, BSTR Separators, SpeechGrammarWordType Type, BSTR PropertyName, int32 PropertyId, ref VARIANT PropertyValue, float Weight) mut => VT.AddWordTransition(ref this, DestState, Words, Separators, Type, PropertyName, PropertyId, ref PropertyValue, Weight);
			public HRESULT AddRuleTransition(ISpeechGrammarRuleState* DestinationState, ISpeechGrammarRule* Rule, BSTR PropertyName, int32 PropertyId, ref VARIANT PropertyValue, float Weight) mut => VT.AddRuleTransition(ref this, DestinationState, Rule, PropertyName, PropertyId, ref PropertyValue, Weight);
			public HRESULT AddSpecialTransition(ISpeechGrammarRuleState* DestinationState, SpeechSpecialTransitionType Type, BSTR PropertyName, int32 PropertyId, ref VARIANT PropertyValue, float Weight) mut => VT.AddSpecialTransition(ref this, DestinationState, Type, PropertyName, PropertyId, ref PropertyValue, Weight);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleState self, ISpeechGrammarRule** Rule) get_Rule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleState self, ISpeechGrammarRuleStateTransitions** Transitions) get_Transitions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleState self, ISpeechGrammarRuleState* DestState, BSTR Words, BSTR Separators, SpeechGrammarWordType Type, BSTR PropertyName, int32 PropertyId, ref VARIANT PropertyValue, float Weight) AddWordTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleState self, ISpeechGrammarRuleState* DestinationState, ISpeechGrammarRule* Rule, BSTR PropertyName, int32 PropertyId, ref VARIANT PropertyValue, float Weight) AddRuleTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleState self, ISpeechGrammarRuleState* DestinationState, SpeechSpecialTransitionType Type, BSTR PropertyName, int32 PropertyId, ref VARIANT PropertyValue, float Weight) AddSpecialTransition;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRuleStateTransition : IDispatch
		{
			public const new Guid IID = .(0xcafd1db1, 0x41d1, 0x4a06, 0x98, 0x63, 0xe2, 0xe8, 0x1d, 0xa1, 0x7a, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out SpeechGrammarRuleStateTransitionType Type) mut => VT.get_Type(ref this, out Type);
			public HRESULT get_Text(BSTR* Text) mut => VT.get_Text(ref this, Text);
			public HRESULT get_Rule(ISpeechGrammarRule** Rule) mut => VT.get_Rule(ref this, Rule);
			public HRESULT get_Weight(out VARIANT Weight) mut => VT.get_Weight(ref this, out Weight);
			public HRESULT get_PropertyName(BSTR* PropertyName) mut => VT.get_PropertyName(ref this, PropertyName);
			public HRESULT get_PropertyId(out int32 PropertyId) mut => VT.get_PropertyId(ref this, out PropertyId);
			public HRESULT get_PropertyValue(out VARIANT PropertyValue) mut => VT.get_PropertyValue(ref this, out PropertyValue);
			public HRESULT get_NextState(ISpeechGrammarRuleState** NextState) mut => VT.get_NextState(ref this, NextState);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, out SpeechGrammarRuleStateTransitionType Type) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, BSTR* Text) get_Text;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, ISpeechGrammarRule** Rule) get_Rule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, out VARIANT Weight) get_Weight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, BSTR* PropertyName) get_PropertyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, out int32 PropertyId) get_PropertyId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, out VARIANT PropertyValue) get_PropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransition self, ISpeechGrammarRuleState** NextState) get_NextState;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRuleStateTransitions : IDispatch
		{
			public const new Guid IID = .(0xeabce657, 0x75bc, 0x44a2, 0xaa, 0x7f, 0xc5, 0x64, 0x76, 0x74, 0x29, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechGrammarRuleStateTransition** Transition) mut => VT.Item(ref this, Index, Transition);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransitions self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransitions self, int32 Index, ISpeechGrammarRuleStateTransition** Transition) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechGrammarRuleStateTransitions self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechTextSelectionInformation : IDispatch
		{
			public const new Guid IID = .(0x3b9c7e7a, 0x6eee, 0x4ded, 0x90, 0x92, 0x11, 0x65, 0x72, 0x79, 0xad, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ActiveOffset(int32 ActiveOffset) mut => VT.put_ActiveOffset(ref this, ActiveOffset);
			public HRESULT get_ActiveOffset(out int32 ActiveOffset) mut => VT.get_ActiveOffset(ref this, out ActiveOffset);
			public HRESULT put_ActiveLength(int32 ActiveLength) mut => VT.put_ActiveLength(ref this, ActiveLength);
			public HRESULT get_ActiveLength(out int32 ActiveLength) mut => VT.get_ActiveLength(ref this, out ActiveLength);
			public HRESULT put_SelectionOffset(int32 SelectionOffset) mut => VT.put_SelectionOffset(ref this, SelectionOffset);
			public HRESULT get_SelectionOffset(out int32 SelectionOffset) mut => VT.get_SelectionOffset(ref this, out SelectionOffset);
			public HRESULT put_SelectionLength(int32 SelectionLength) mut => VT.put_SelectionLength(ref this, SelectionLength);
			public HRESULT get_SelectionLength(out int32 SelectionLength) mut => VT.get_SelectionLength(ref this, out SelectionLength);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, int32 ActiveOffset) put_ActiveOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, out int32 ActiveOffset) get_ActiveOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, int32 ActiveLength) put_ActiveLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, out int32 ActiveLength) get_ActiveLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, int32 SelectionOffset) put_SelectionOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, out int32 SelectionOffset) get_SelectionOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, int32 SelectionLength) put_SelectionLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechTextSelectionInformation self, out int32 SelectionLength) get_SelectionLength;
			}
		}
		[CRepr]
		public struct ISpeechRecoResult : IDispatch
		{
			public const new Guid IID = .(0xed2879cf, 0xced9, 0x4ee6, 0xa5, 0x34, 0xde, 0x01, 0x91, 0xd5, 0x46, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RecoContext(ISpeechRecoContext** RecoContext) mut => VT.get_RecoContext(ref this, RecoContext);
			public HRESULT get_Times(ISpeechRecoResultTimes** Times) mut => VT.get_Times(ref this, Times);
			public HRESULT putref_AudioFormat(ISpeechAudioFormat* Format) mut => VT.putref_AudioFormat(ref this, Format);
			public HRESULT get_AudioFormat(ISpeechAudioFormat** Format) mut => VT.get_AudioFormat(ref this, Format);
			public HRESULT get_PhraseInfo(ISpeechPhraseInfo** PhraseInfo) mut => VT.get_PhraseInfo(ref this, PhraseInfo);
			public HRESULT Alternates(int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) mut => VT.Alternates(ref this, RequestCount, StartElement, Elements, Alternates);
			public HRESULT Audio(int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) mut => VT.Audio(ref this, StartElement, Elements, Stream);
			public HRESULT SpeakAudio(int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) mut => VT.SpeakAudio(ref this, StartElement, Elements, Flags, out StreamNumber);
			public HRESULT SaveToMemory(out VARIANT ResultBlock) mut => VT.SaveToMemory(ref this, out ResultBlock);
			public HRESULT DiscardResultInfo(SpeechDiscardType ValueTypes) mut => VT.DiscardResultInfo(ref this, ValueTypes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, ISpeechRecoContext** RecoContext) get_RecoContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, ISpeechRecoResultTimes** Times) get_Times;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, ISpeechAudioFormat* Format) putref_AudioFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, ISpeechAudioFormat** Format) get_AudioFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, ISpeechPhraseInfo** PhraseInfo) get_PhraseInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) Alternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) Audio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) SpeakAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, out VARIANT ResultBlock) SaveToMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult self, SpeechDiscardType ValueTypes) DiscardResultInfo;
			}
		}
		[CRepr]
		public struct ISpeechRecoResult2 : ISpeechRecoResult
		{
			public const new Guid IID = .(0x8e0a246d, 0xd3c8, 0x45de, 0x86, 0x57, 0x04, 0x29, 0x0c, 0x45, 0x8c, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTextFeedback(BSTR Feedback, int16 WasSuccessful) mut => VT.SetTextFeedback(ref this, Feedback, WasSuccessful);

			[CRepr]
			public struct VTable : ISpeechRecoResult.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResult2 self, BSTR Feedback, int16 WasSuccessful) SetTextFeedback;
			}
		}
		[CRepr]
		public struct ISpeechRecoResultTimes : IDispatch
		{
			public const new Guid IID = .(0x62b3b8fb, 0xf6e7, 0x41be, 0xbd, 0xcb, 0x05, 0x6b, 0x1c, 0x29, 0xef, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StreamTime(out VARIANT Time) mut => VT.get_StreamTime(ref this, out Time);
			public HRESULT get_Length(out VARIANT Length) mut => VT.get_Length(ref this, out Length);
			public HRESULT get_TickCount(out int32 TickCount) mut => VT.get_TickCount(ref this, out TickCount);
			public HRESULT get_OffsetFromStart(out VARIANT OffsetFromStart) mut => VT.get_OffsetFromStart(ref this, out OffsetFromStart);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultTimes self, out VARIANT Time) get_StreamTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultTimes self, out VARIANT Length) get_Length;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultTimes self, out int32 TickCount) get_TickCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultTimes self, out VARIANT OffsetFromStart) get_OffsetFromStart;
			}
		}
		[CRepr]
		public struct ISpeechPhraseAlternate : IDispatch
		{
			public const new Guid IID = .(0x27864a2a, 0x2b9f, 0x4cb8, 0x92, 0xd3, 0x0d, 0x27, 0x22, 0xfd, 0x1e, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RecoResult(ISpeechRecoResult** RecoResult) mut => VT.get_RecoResult(ref this, RecoResult);
			public HRESULT get_StartElementInResult(out int32 StartElement) mut => VT.get_StartElementInResult(ref this, out StartElement);
			public HRESULT get_NumberOfElementsInResult(out int32 NumberOfElements) mut => VT.get_NumberOfElementsInResult(ref this, out NumberOfElements);
			public HRESULT get_PhraseInfo(ISpeechPhraseInfo** PhraseInfo) mut => VT.get_PhraseInfo(ref this, PhraseInfo);
			public HRESULT Commit() mut => VT.Commit(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternate self, ISpeechRecoResult** RecoResult) get_RecoResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternate self, out int32 StartElement) get_StartElementInResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternate self, out int32 NumberOfElements) get_NumberOfElementsInResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternate self, ISpeechPhraseInfo** PhraseInfo) get_PhraseInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternate self) Commit;
			}
		}
		[CRepr]
		public struct ISpeechPhraseAlternates : IDispatch
		{
			public const new Guid IID = .(0xb238b6d5, 0xf276, 0x4c3d, 0xa6, 0xc1, 0x29, 0x74, 0x80, 0x1c, 0x3c, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechPhraseAlternate** PhraseAlternate) mut => VT.Item(ref this, Index, PhraseAlternate);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternates self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternates self, int32 Index, ISpeechPhraseAlternate** PhraseAlternate) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseAlternates self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseInfo : IDispatch
		{
			public const new Guid IID = .(0x961559cf, 0x4e67, 0x4662, 0x8b, 0xf0, 0xd9, 0x3f, 0x1f, 0xcd, 0x61, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LanguageId(out int32 LanguageId) mut => VT.get_LanguageId(ref this, out LanguageId);
			public HRESULT get_GrammarId(out VARIANT GrammarId) mut => VT.get_GrammarId(ref this, out GrammarId);
			public HRESULT get_StartTime(out VARIANT StartTime) mut => VT.get_StartTime(ref this, out StartTime);
			public HRESULT get_AudioStreamPosition(out VARIANT AudioStreamPosition) mut => VT.get_AudioStreamPosition(ref this, out AudioStreamPosition);
			public HRESULT get_AudioSizeBytes(out int32 pAudioSizeBytes) mut => VT.get_AudioSizeBytes(ref this, out pAudioSizeBytes);
			public HRESULT get_RetainedSizeBytes(out int32 RetainedSizeBytes) mut => VT.get_RetainedSizeBytes(ref this, out RetainedSizeBytes);
			public HRESULT get_AudioSizeTime(out int32 AudioSizeTime) mut => VT.get_AudioSizeTime(ref this, out AudioSizeTime);
			public HRESULT get_Rule(ISpeechPhraseRule** Rule) mut => VT.get_Rule(ref this, Rule);
			public HRESULT get_Properties(ISpeechPhraseProperties** Properties) mut => VT.get_Properties(ref this, Properties);
			public HRESULT get_Elements(ISpeechPhraseElements** Elements) mut => VT.get_Elements(ref this, Elements);
			public HRESULT get_Replacements(ISpeechPhraseReplacements** Replacements) mut => VT.get_Replacements(ref this, Replacements);
			public HRESULT get_EngineId(BSTR* EngineIdGuid) mut => VT.get_EngineId(ref this, EngineIdGuid);
			public HRESULT get_EnginePrivateData(out VARIANT PrivateData) mut => VT.get_EnginePrivateData(ref this, out PrivateData);
			public HRESULT SaveToMemory(out VARIANT PhraseBlock) mut => VT.SaveToMemory(ref this, out PhraseBlock);
			public HRESULT GetText(int32 StartElement, int32 Elements, int16 UseReplacements, BSTR* Text) mut => VT.GetText(ref this, StartElement, Elements, UseReplacements, Text);
			public HRESULT GetDisplayAttributes(int32 StartElement, int32 Elements, int16 UseReplacements, out SpeechDisplayAttributes DisplayAttributes) mut => VT.GetDisplayAttributes(ref this, StartElement, Elements, UseReplacements, out DisplayAttributes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out int32 LanguageId) get_LanguageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out VARIANT GrammarId) get_GrammarId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out VARIANT StartTime) get_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out VARIANT AudioStreamPosition) get_AudioStreamPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out int32 pAudioSizeBytes) get_AudioSizeBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out int32 RetainedSizeBytes) get_RetainedSizeBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out int32 AudioSizeTime) get_AudioSizeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, ISpeechPhraseRule** Rule) get_Rule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, ISpeechPhraseProperties** Properties) get_Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, ISpeechPhraseElements** Elements) get_Elements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, ISpeechPhraseReplacements** Replacements) get_Replacements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, BSTR* EngineIdGuid) get_EngineId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out VARIANT PrivateData) get_EnginePrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, out VARIANT PhraseBlock) SaveToMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, int32 StartElement, int32 Elements, int16 UseReplacements, BSTR* Text) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfo self, int32 StartElement, int32 Elements, int16 UseReplacements, out SpeechDisplayAttributes DisplayAttributes) GetDisplayAttributes;
			}
		}
		[CRepr]
		public struct ISpeechPhraseElement : IDispatch
		{
			public const new Guid IID = .(0xe6176f96, 0xe373, 0x4801, 0xb2, 0x23, 0x3b, 0x62, 0xc0, 0x68, 0xc0, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AudioTimeOffset(out int32 AudioTimeOffset) mut => VT.get_AudioTimeOffset(ref this, out AudioTimeOffset);
			public HRESULT get_AudioSizeTime(out int32 AudioSizeTime) mut => VT.get_AudioSizeTime(ref this, out AudioSizeTime);
			public HRESULT get_AudioStreamOffset(out int32 AudioStreamOffset) mut => VT.get_AudioStreamOffset(ref this, out AudioStreamOffset);
			public HRESULT get_AudioSizeBytes(out int32 AudioSizeBytes) mut => VT.get_AudioSizeBytes(ref this, out AudioSizeBytes);
			public HRESULT get_RetainedStreamOffset(out int32 RetainedStreamOffset) mut => VT.get_RetainedStreamOffset(ref this, out RetainedStreamOffset);
			public HRESULT get_RetainedSizeBytes(out int32 RetainedSizeBytes) mut => VT.get_RetainedSizeBytes(ref this, out RetainedSizeBytes);
			public HRESULT get_DisplayText(BSTR* DisplayText) mut => VT.get_DisplayText(ref this, DisplayText);
			public HRESULT get_LexicalForm(BSTR* LexicalForm) mut => VT.get_LexicalForm(ref this, LexicalForm);
			public HRESULT get_Pronunciation(out VARIANT Pronunciation) mut => VT.get_Pronunciation(ref this, out Pronunciation);
			public HRESULT get_DisplayAttributes(out SpeechDisplayAttributes DisplayAttributes) mut => VT.get_DisplayAttributes(ref this, out DisplayAttributes);
			public HRESULT get_RequiredConfidence(out SpeechEngineConfidence RequiredConfidence) mut => VT.get_RequiredConfidence(ref this, out RequiredConfidence);
			public HRESULT get_ActualConfidence(out SpeechEngineConfidence ActualConfidence) mut => VT.get_ActualConfidence(ref this, out ActualConfidence);
			public HRESULT get_EngineConfidence(out float EngineConfidence) mut => VT.get_EngineConfidence(ref this, out EngineConfidence);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out int32 AudioTimeOffset) get_AudioTimeOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out int32 AudioSizeTime) get_AudioSizeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out int32 AudioStreamOffset) get_AudioStreamOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out int32 AudioSizeBytes) get_AudioSizeBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out int32 RetainedStreamOffset) get_RetainedStreamOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out int32 RetainedSizeBytes) get_RetainedSizeBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, BSTR* DisplayText) get_DisplayText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, BSTR* LexicalForm) get_LexicalForm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out VARIANT Pronunciation) get_Pronunciation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out SpeechDisplayAttributes DisplayAttributes) get_DisplayAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out SpeechEngineConfidence RequiredConfidence) get_RequiredConfidence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out SpeechEngineConfidence ActualConfidence) get_ActualConfidence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElement self, out float EngineConfidence) get_EngineConfidence;
			}
		}
		[CRepr]
		public struct ISpeechPhraseElements : IDispatch
		{
			public const new Guid IID = .(0x0626b328, 0x3478, 0x467d, 0xa0, 0xb3, 0xd0, 0x85, 0x3b, 0x93, 0xdd, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechPhraseElement** Element) mut => VT.Item(ref this, Index, Element);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElements self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElements self, int32 Index, ISpeechPhraseElement** Element) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseElements self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseReplacement : IDispatch
		{
			public const new Guid IID = .(0x2890a410, 0x53a7, 0x4fb5, 0x94, 0xec, 0x06, 0xd4, 0x99, 0x8e, 0x3d, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayAttributes(out SpeechDisplayAttributes DisplayAttributes) mut => VT.get_DisplayAttributes(ref this, out DisplayAttributes);
			public HRESULT get_Text(BSTR* Text) mut => VT.get_Text(ref this, Text);
			public HRESULT get_FirstElement(out int32 FirstElement) mut => VT.get_FirstElement(ref this, out FirstElement);
			public HRESULT get_NumberOfElements(out int32 NumberOfElements) mut => VT.get_NumberOfElements(ref this, out NumberOfElements);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacement self, out SpeechDisplayAttributes DisplayAttributes) get_DisplayAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacement self, BSTR* Text) get_Text;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacement self, out int32 FirstElement) get_FirstElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacement self, out int32 NumberOfElements) get_NumberOfElements;
			}
		}
		[CRepr]
		public struct ISpeechPhraseReplacements : IDispatch
		{
			public const new Guid IID = .(0x38bc662f, 0x2257, 0x4525, 0x95, 0x9e, 0x20, 0x69, 0xd2, 0x59, 0x6c, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechPhraseReplacement** Reps) mut => VT.Item(ref this, Index, Reps);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacements self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacements self, int32 Index, ISpeechPhraseReplacement** Reps) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseReplacements self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseProperty : IDispatch
		{
			public const new Guid IID = .(0xce563d48, 0x961e, 0x4732, 0xa2, 0xe1, 0x37, 0x8a, 0x42, 0xb4, 0x30, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HRESULT get_Id(out int32 Id) mut => VT.get_Id(ref this, out Id);
			public HRESULT get_Value(out VARIANT Value) mut => VT.get_Value(ref this, out Value);
			public HRESULT get_FirstElement(out int32 FirstElement) mut => VT.get_FirstElement(ref this, out FirstElement);
			public HRESULT get_NumberOfElements(out int32 NumberOfElements) mut => VT.get_NumberOfElements(ref this, out NumberOfElements);
			public HRESULT get_EngineConfidence(out float Confidence) mut => VT.get_EngineConfidence(ref this, out Confidence);
			public HRESULT get_Confidence(out SpeechEngineConfidence Confidence) mut => VT.get_Confidence(ref this, out Confidence);
			public HRESULT get_Parent(ISpeechPhraseProperty** ParentProperty) mut => VT.get_Parent(ref this, ParentProperty);
			public HRESULT get_Children(ISpeechPhraseProperties** Children) mut => VT.get_Children(ref this, Children);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, out int32 Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, out VARIANT Value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, out int32 FirstElement) get_FirstElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, out int32 NumberOfElements) get_NumberOfElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, out float Confidence) get_EngineConfidence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, out SpeechEngineConfidence Confidence) get_Confidence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, ISpeechPhraseProperty** ParentProperty) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperty self, ISpeechPhraseProperties** Children) get_Children;
			}
		}
		[CRepr]
		public struct ISpeechPhraseProperties : IDispatch
		{
			public const new Guid IID = .(0x08166b47, 0x102e, 0x4b23, 0xa5, 0x99, 0xbd, 0xb9, 0x8d, 0xbf, 0xd1, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechPhraseProperty** Property) mut => VT.Item(ref this, Index, Property);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperties self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperties self, int32 Index, ISpeechPhraseProperty** Property) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseProperties self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseRule : IDispatch
		{
			public const new Guid IID = .(0xa7bfe112, 0xa4a0, 0x48d9, 0xb6, 0x02, 0xc3, 0x13, 0x84, 0x3f, 0x69, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut => VT.get_Name(ref this, Name);
			public HRESULT get_Id(out int32 Id) mut => VT.get_Id(ref this, out Id);
			public HRESULT get_FirstElement(out int32 FirstElement) mut => VT.get_FirstElement(ref this, out FirstElement);
			public HRESULT get_NumberOfElements(out int32 NumberOfElements) mut => VT.get_NumberOfElements(ref this, out NumberOfElements);
			public HRESULT get_Parent(ISpeechPhraseRule** Parent) mut => VT.get_Parent(ref this, Parent);
			public HRESULT get_Children(ISpeechPhraseRules** Children) mut => VT.get_Children(ref this, Children);
			public HRESULT get_Confidence(out SpeechEngineConfidence ActualConfidence) mut => VT.get_Confidence(ref this, out ActualConfidence);
			public HRESULT get_EngineConfidence(out float EngineConfidence) mut => VT.get_EngineConfidence(ref this, out EngineConfidence);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, BSTR* Name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, out int32 Id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, out int32 FirstElement) get_FirstElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, out int32 NumberOfElements) get_NumberOfElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, ISpeechPhraseRule** Parent) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, ISpeechPhraseRules** Children) get_Children;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, out SpeechEngineConfidence ActualConfidence) get_Confidence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRule self, out float EngineConfidence) get_EngineConfidence;
			}
		}
		[CRepr]
		public struct ISpeechPhraseRules : IDispatch
		{
			public const new Guid IID = .(0x9047d593, 0x01dd, 0x4b72, 0x81, 0xa3, 0xe4, 0xa0, 0xca, 0x69, 0xf4, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechPhraseRule** Rule) mut => VT.Item(ref this, Index, Rule);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRules self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRules self, int32 Index, ISpeechPhraseRule** Rule) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseRules self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechLexicon : IDispatch
		{
			public const new Guid IID = .(0x3da7627a, 0xc7ae, 0x4b23, 0x87, 0x08, 0x63, 0x8c, 0x50, 0x36, 0x2c, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GenerationId(out int32 GenerationId) mut => VT.get_GenerationId(ref this, out GenerationId);
			public HRESULT GetWords(SpeechLexiconType Flags, out int32 GenerationID, ISpeechLexiconWords** Words) mut => VT.GetWords(ref this, Flags, out GenerationID, Words);
			public HRESULT AddPronunciation(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) mut => VT.AddPronunciation(ref this, bstrWord, LangId, PartOfSpeech, bstrPronunciation);
			public HRESULT AddPronunciationByPhoneIds(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, ref VARIANT PhoneIds) mut => VT.AddPronunciationByPhoneIds(ref this, bstrWord, LangId, PartOfSpeech, ref PhoneIds);
			public HRESULT RemovePronunciation(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) mut => VT.RemovePronunciation(ref this, bstrWord, LangId, PartOfSpeech, bstrPronunciation);
			public HRESULT RemovePronunciationByPhoneIds(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, ref VARIANT PhoneIds) mut => VT.RemovePronunciationByPhoneIds(ref this, bstrWord, LangId, PartOfSpeech, ref PhoneIds);
			public HRESULT GetPronunciations(BSTR bstrWord, int32 LangId, SpeechLexiconType TypeFlags, ISpeechLexiconPronunciations** ppPronunciations) mut => VT.GetPronunciations(ref this, bstrWord, LangId, TypeFlags, ppPronunciations);
			public HRESULT GetGenerationChange(out int32 GenerationID, ISpeechLexiconWords** ppWords) mut => VT.GetGenerationChange(ref this, out GenerationID, ppWords);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, out int32 GenerationId) get_GenerationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, SpeechLexiconType Flags, out int32 GenerationID, ISpeechLexiconWords** Words) GetWords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) AddPronunciation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, ref VARIANT PhoneIds) AddPronunciationByPhoneIds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) RemovePronunciation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, ref VARIANT PhoneIds) RemovePronunciationByPhoneIds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, BSTR bstrWord, int32 LangId, SpeechLexiconType TypeFlags, ISpeechLexiconPronunciations** ppPronunciations) GetPronunciations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexicon self, out int32 GenerationID, ISpeechLexiconWords** ppWords) GetGenerationChange;
			}
		}
		[CRepr]
		public struct ISpeechLexiconWords : IDispatch
		{
			public const new Guid IID = .(0x8d199862, 0x415e, 0x47d5, 0xac, 0x4f, 0xfa, 0xa6, 0x08, 0xb4, 0x24, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechLexiconWord** Word) mut => VT.Item(ref this, Index, Word);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWords self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWords self, int32 Index, ISpeechLexiconWord** Word) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWords self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechLexiconWord : IDispatch
		{
			public const new Guid IID = .(0x4e5b933c, 0xc9be, 0x48ed, 0x88, 0x42, 0x1e, 0xe5, 0x1b, 0xb1, 0xd4, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LangId(out int32 LangId) mut => VT.get_LangId(ref this, out LangId);
			public HRESULT get_Type(out SpeechWordType WordType) mut => VT.get_Type(ref this, out WordType);
			public HRESULT get_Word(BSTR* Word) mut => VT.get_Word(ref this, Word);
			public HRESULT get_Pronunciations(ISpeechLexiconPronunciations** Pronunciations) mut => VT.get_Pronunciations(ref this, Pronunciations);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWord self, out int32 LangId) get_LangId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWord self, out SpeechWordType WordType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWord self, BSTR* Word) get_Word;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconWord self, ISpeechLexiconPronunciations** Pronunciations) get_Pronunciations;
			}
		}
		[CRepr]
		public struct ISpeechLexiconPronunciations : IDispatch
		{
			public const new Guid IID = .(0x72829128, 0x5682, 0x4704, 0xa0, 0xd4, 0x3e, 0x2b, 0xb6, 0xf2, 0xea, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT Item(int32 Index, ISpeechLexiconPronunciation** Pronunciation) mut => VT.Item(ref this, Index, Pronunciation);
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut => VT.get__NewEnum(ref this, EnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciations self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciations self, int32 Index, ISpeechLexiconPronunciation** Pronunciation) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciations self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechLexiconPronunciation : IDispatch
		{
			public const new Guid IID = .(0x95252c5d, 0x9e43, 0x4f4a, 0x98, 0x99, 0x48, 0xee, 0x73, 0x35, 0x2f, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out SpeechLexiconType LexiconType) mut => VT.get_Type(ref this, out LexiconType);
			public HRESULT get_LangId(out int32 LangId) mut => VT.get_LangId(ref this, out LangId);
			public HRESULT get_PartOfSpeech(out SpeechPartOfSpeech PartOfSpeech) mut => VT.get_PartOfSpeech(ref this, out PartOfSpeech);
			public HRESULT get_PhoneIds(out VARIANT PhoneIds) mut => VT.get_PhoneIds(ref this, out PhoneIds);
			public HRESULT get_Symbolic(BSTR* Symbolic) mut => VT.get_Symbolic(ref this, Symbolic);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciation self, out SpeechLexiconType LexiconType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciation self, out int32 LangId) get_LangId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciation self, out SpeechPartOfSpeech PartOfSpeech) get_PartOfSpeech;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciation self, out VARIANT PhoneIds) get_PhoneIds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechLexiconPronunciation self, BSTR* Symbolic) get_Symbolic;
			}
		}
		[CRepr]
		public struct ISpeechXMLRecoResult : ISpeechRecoResult
		{
			public const new Guid IID = .(0xaaec54af, 0x8f85, 0x4924, 0x94, 0x4d, 0xb7, 0x9d, 0x39, 0xd7, 0x2e, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXMLResult(SPXMLRESULTOPTIONS Options, BSTR* pResult) mut => VT.GetXMLResult(ref this, Options, pResult);
			public HRESULT GetXMLErrorInfo(out int32 LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, out int32 ResultCode, out int16 IsError) mut => VT.GetXMLErrorInfo(ref this, out LineNumber, ScriptLine, Source, Description, out ResultCode, out IsError);

			[CRepr]
			public struct VTable : ISpeechRecoResult.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechXMLRecoResult self, SPXMLRESULTOPTIONS Options, BSTR* pResult) GetXMLResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechXMLRecoResult self, out int32 LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, out int32 ResultCode, out int16 IsError) GetXMLErrorInfo;
			}
		}
		[CRepr]
		public struct ISpeechRecoResultDispatch : IDispatch
		{
			public const new Guid IID = .(0x6d60eb64, 0xaced, 0x40a6, 0xbb, 0xf3, 0x4e, 0x55, 0x7f, 0x71, 0xde, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RecoContext(ISpeechRecoContext** RecoContext) mut => VT.get_RecoContext(ref this, RecoContext);
			public HRESULT get_Times(ISpeechRecoResultTimes** Times) mut => VT.get_Times(ref this, Times);
			public HRESULT putref_AudioFormat(ISpeechAudioFormat* Format) mut => VT.putref_AudioFormat(ref this, Format);
			public HRESULT get_AudioFormat(ISpeechAudioFormat** Format) mut => VT.get_AudioFormat(ref this, Format);
			public HRESULT get_PhraseInfo(ISpeechPhraseInfo** PhraseInfo) mut => VT.get_PhraseInfo(ref this, PhraseInfo);
			public HRESULT Alternates(int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) mut => VT.Alternates(ref this, RequestCount, StartElement, Elements, Alternates);
			public HRESULT Audio(int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) mut => VT.Audio(ref this, StartElement, Elements, Stream);
			public HRESULT SpeakAudio(int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) mut => VT.SpeakAudio(ref this, StartElement, Elements, Flags, out StreamNumber);
			public HRESULT SaveToMemory(out VARIANT ResultBlock) mut => VT.SaveToMemory(ref this, out ResultBlock);
			public HRESULT DiscardResultInfo(SpeechDiscardType ValueTypes) mut => VT.DiscardResultInfo(ref this, ValueTypes);
			public HRESULT GetXMLResult(SPXMLRESULTOPTIONS Options, BSTR* pResult) mut => VT.GetXMLResult(ref this, Options, pResult);
			public HRESULT GetXMLErrorInfo(out int32 LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, out HRESULT ResultCode, out int16 IsError) mut => VT.GetXMLErrorInfo(ref this, out LineNumber, ScriptLine, Source, Description, out ResultCode, out IsError);
			public HRESULT SetTextFeedback(BSTR Feedback, int16 WasSuccessful) mut => VT.SetTextFeedback(ref this, Feedback, WasSuccessful);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, ISpeechRecoContext** RecoContext) get_RecoContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, ISpeechRecoResultTimes** Times) get_Times;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, ISpeechAudioFormat* Format) putref_AudioFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, ISpeechAudioFormat** Format) get_AudioFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, ISpeechPhraseInfo** PhraseInfo) get_PhraseInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) Alternates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) Audio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, out int32 StreamNumber) SpeakAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, out VARIANT ResultBlock) SaveToMemory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, SpeechDiscardType ValueTypes) DiscardResultInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, SPXMLRESULTOPTIONS Options, BSTR* pResult) GetXMLResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, out int32 LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, out HRESULT ResultCode, out int16 IsError) GetXMLErrorInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechRecoResultDispatch self, BSTR Feedback, int16 WasSuccessful) SetTextFeedback;
			}
		}
		[CRepr]
		public struct ISpeechPhraseInfoBuilder : IDispatch
		{
			public const new Guid IID = .(0x3b151836, 0xdf3a, 0x4e0a, 0x84, 0x6c, 0xd2, 0xad, 0xc9, 0x33, 0x43, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestorePhraseFromMemory(ref VARIANT PhraseInMemory, ISpeechPhraseInfo** PhraseInfo) mut => VT.RestorePhraseFromMemory(ref this, ref PhraseInMemory, PhraseInfo);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhraseInfoBuilder self, ref VARIANT PhraseInMemory, ISpeechPhraseInfo** PhraseInfo) RestorePhraseFromMemory;
			}
		}
		[CRepr]
		public struct ISpeechPhoneConverter : IDispatch
		{
			public const new Guid IID = .(0xc3e4f353, 0x433f, 0x43d6, 0x89, 0xa1, 0x6a, 0x62, 0xa7, 0x05, 0x4c, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LanguageId(out int32 LanguageId) mut => VT.get_LanguageId(ref this, out LanguageId);
			public HRESULT put_LanguageId(int32 LanguageId) mut => VT.put_LanguageId(ref this, LanguageId);
			public HRESULT PhoneToId(BSTR Phonemes, out VARIANT IdArray) mut => VT.PhoneToId(ref this, Phonemes, out IdArray);
			public HRESULT IdToPhone(VARIANT IdArray, BSTR* Phonemes) mut => VT.IdToPhone(ref this, IdArray, Phonemes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhoneConverter self, out int32 LanguageId) get_LanguageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhoneConverter self, int32 LanguageId) put_LanguageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhoneConverter self, BSTR Phonemes, out VARIANT IdArray) PhoneToId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechPhoneConverter self, VARIANT IdArray, BSTR* Phonemes) IdToPhone;
			}
		}
		
	}
}
