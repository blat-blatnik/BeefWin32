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
			SHT_NotOverriden = -1,
			SHT_Unknown = 0,
			SHT_EMAIL = 4096,
			SHT_OTHER = 8192,
			PS_RESERVED1 = 12288,
			PS_RESERVED2 = 16384,
			PS_RESERVED3 = 20480,
			PS_RESERVED4 = 61440,
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
			IN_VOLUME = 0,
			AX_VOLUME = 100,
			IN_RATE = -10,
			AX_RATE = 10,
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
			SetBinaryValue = 1,
			GetBinaryValue = 2,
			SetStringValue = 3,
			GetStringValue = 4,
			SetLongValue = 5,
			GetlongValue = 6,
			OpenKey = 7,
			CreateKey = 8,
			DeleteKey = 9,
			DeleteValue = 10,
			EnumKeys = 11,
			EnumValues = 12,
		}
		public enum DISPID_SpeechObjectToken : int32
		{
			Id = 1,
			DataKey = 2,
			Category = 3,
			GetDescription = 4,
			SetId = 5,
			GetAttribute = 6,
			CreateInstance = 7,
			Remove = 8,
			GetStorageFileName = 9,
			RemoveStorageFileName = 10,
			IsUISupported = 11,
			DisplayUI = 12,
			MatchesAttributes = 13,
		}
		public enum SpeechDataKeyLocation : int32
		{
			DefaultLocation = 0,
			CurrentUser = 1,
			LocalMachine = 2,
			CurrentConfig = 5,
		}
		public enum SpeechTokenContext : uint32
		{
			InprocServer = 1,
			InprocHandler = 2,
			LocalServer = 4,
			RemoteServer = 16,
			All = 23,
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
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechObjectTokenCategory : int32
		{
			Id = 1,
			Default = 2,
			SetId = 3,
			GetDataKey = 4,
			EnumerateTokens = 5,
		}
		public enum SpeechAudioFormatType : int32
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
		}
		public enum DISPID_SpeechAudioFormat : int32
		{
			Type = 1,
			Guid = 2,
			GetWaveFormatEx = 3,
			SetWaveFormatEx = 4,
		}
		public enum DISPID_SpeechBaseStream : int32
		{
			Format = 1,
			Read = 2,
			Write = 3,
			Seek = 4,
		}
		public enum SpeechStreamSeekPositionType : uint32
		{
			Start = 0,
			CurrentPosition = 1,
			End = 2,
		}
		public enum DISPID_SpeechAudio : int32
		{
			Status = 200,
			BufferInfo = 201,
			DefaultFormat = 202,
			Volume = 203,
			BufferNotifySize = 204,
			EventHandle = 205,
			SetState = 206,
		}
		public enum SpeechAudioState : int32
		{
			Closed = 0,
			Stop = 1,
			Pause = 2,
			Run = 3,
		}
		public enum DISPID_SpeechMMSysAudio : int32
		{
			DeviceId = 300,
			LineId = 301,
			MMHandle = 302,
		}
		public enum DISPID_SpeechFileStream : int32
		{
			Open = 100,
			Close = 101,
		}
		public enum SpeechStreamFileMode : int32
		{
			OpenForRead = 0,
			OpenReadWrite = 1,
			Create = 2,
			CreateForWrite = 3,
		}
		public enum DISPID_SpeechCustomStream : int32
		{
			DISPID_SCSBaseStream = 100,
		}
		public enum DISPID_SpeechMemoryStream : int32
		{
			SetData = 100,
			GetData = 101,
		}
		public enum DISPID_SpeechAudioStatus : int32
		{
			FreeBufferSpace = 1,
			NonBlockingIO = 2,
			State = 3,
			CurrentSeekPosition = 4,
			CurrentDevicePosition = 5,
		}
		public enum DISPID_SpeechAudioBufferInfo : int32
		{
			MinNotification = 1,
			BufferSize = 2,
			EventBias = 3,
		}
		public enum DISPID_SpeechWaveFormatEx : int32
		{
			FormatTag = 1,
			Channels = 2,
			SamplesPerSec = 3,
			AvgBytesPerSec = 4,
			BlockAlign = 5,
			BitsPerSample = 6,
			ExtraData = 7,
		}
		public enum DISPID_SpeechVoice : int32
		{
			Status = 1,
			Voice = 2,
			AudioOutput = 3,
			AudioOutputStream = 4,
			Rate = 5,
			Volume = 6,
			AllowAudioOuputFormatChangesOnNextSet = 7,
			EventInterests = 8,
			Priority = 9,
			AlertBoundary = 10,
			SyncronousSpeakTimeout = 11,
			Speak = 12,
			SpeakStream = 13,
			Pause = 14,
			Resume = 15,
			Skip = 16,
			GetVoices = 17,
			GetAudioOutputs = 18,
			WaitUntilDone = 19,
			SpeakCompleteEvent = 20,
			IsUISupported = 21,
			DisplayUI = 22,
		}
		public enum SpeechVoicePriority : int32
		{
			Normal = 0,
			Alert = 1,
			Over = 2,
		}
		[AllowDuplicates]
		public enum SpeechVoiceSpeakFlags : int32
		{
			Default = 0,
			lagsAsync = 1,
			PurgeBeforeSpeak = 2,
			IsFilename = 4,
			IsXML = 8,
			IsNotXML = 16,
			PersistXML = 32,
			NLPSpeakPunc = 64,
			ParseSapi = 128,
			ParseSsml = 256,
			ParseAutodetect = 0,
			NLPMask = 64,
			ParseMask = 384,
			VoiceMask = 511,
			UnusedFlags = -512,
		}
		public enum SpeechVoiceEvents : int32
		{
			StartInputStream = 2,
			EndInputStream = 4,
			VoiceChange = 8,
			Bookmark = 16,
			WordBoundary = 32,
			Phoneme = 64,
			SentenceBoundary = 128,
			Viseme = 256,
			AudioLevel = 512,
			Private = 32768,
			AllEvents = 33790,
		}
		public enum DISPID_SpeechVoiceStatus : int32
		{
			CurrentStreamNumber = 1,
			LastStreamNumberQueued = 2,
			LastResult = 3,
			RunningState = 4,
			InputWordPosition = 5,
			InputWordLength = 6,
			InputSentencePosition = 7,
			InputSentenceLength = 8,
			LastBookmark = 9,
			LastBookmarkId = 10,
			PhonemeId = 11,
			VisemeId = 12,
		}
		public enum SpeechRunState : int32
		{
			Done = 1,
			IsSpeaking = 2,
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
			StreamStart = 1,
			StreamEnd = 2,
			VoiceChange = 3,
			Bookmark = 4,
			Word = 5,
			Phoneme = 6,
			SentenceBoundary = 7,
			Viseme = 8,
			AudioLevel = 9,
			EnginePrivate = 10,
		}
		public enum DISPID_SpeechRecognizer : int32
		{
			RRecognizer = 1,
			RAllowAudioInputFormatChangesOnNextSet = 2,
			RAudioInput = 3,
			RAudioInputStream = 4,
			RIsShared = 5,
			RState = 6,
			RStatus = 7,
			RProfile = 8,
			REmulateRecognition = 9,
			RCreateRecoContext = 10,
			RGetFormat = 11,
			RSetPropertyNumber = 12,
			RGetPropertyNumber = 13,
			RSetPropertyString = 14,
			RGetPropertyString = 15,
			RIsUISupported = 16,
			RDisplayUI = 17,
			RGetRecognizers = 18,
			VGetAudioInputs = 19,
			VGetProfiles = 20,
		}
		public enum SpeechRecognizerState : int32
		{
			Inactive = 0,
			Active = 1,
			ActiveAlways = 2,
			InactiveWithPurge = 3,
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
			Input = 0,
			SREngine = 1,
		}
		public enum SpeechEmulationCompareFlags : int32
		{
			IgnoreCase = 1,
			IgnoreKanaType = 65536,
			IgnoreWidth = 131072,
			NoSpecialChars = 536870912,
			EmulateResult = 1073741824,
			Default = 196609,
		}
		public enum DISPID_SpeechRecognizerStatus : int32
		{
			AudioStatus = 1,
			CurrentStreamPosition = 2,
			CurrentStreamNumber = 3,
			NumberOfActiveRules = 4,
			ClsidEngine = 5,
			SupportedLanguages = 6,
		}
		public enum DISPID_SpeechRecoContext : int32
		{
			CRecognizer = 1,
			CAudioInInterferenceStatus = 2,
			CRequestedUIType = 3,
			CVoice = 4,
			AllowVoiceFormatMatchingOnNextSet = 5,
			CVoicePurgeEvent = 6,
			CEventInterests = 7,
			CCmdMaxAlternates = 8,
			CState = 9,
			CRetainedAudio = 10,
			CRetainedAudioFormat = 11,
			CPause = 12,
			CResume = 13,
			CCreateGrammar = 14,
			CCreateResultFromMemory = 15,
			CBookmark = 16,
			CSetAdaptationData = 17,
		}
		public enum SpeechRetainedAudioOptions : int32
		{
			None = 0,
			RetainAudio = 1,
		}
		public enum SpeechBookmarkOptions : int32
		{
			None = 0,
			Pause = 1,
		}
		public enum SpeechInterference : int32
		{
			None = 0,
			Noise = 1,
			NoSignal = 2,
			TooLoud = 3,
			TooQuiet = 4,
			TooFast = 5,
			TooSlow = 6,
		}
		public enum SpeechRecoEvents : int32
		{
			StreamEnd = 1,
			SoundStart = 2,
			SoundEnd = 4,
			PhraseStart = 8,
			Recognition = 16,
			Hypothesis = 32,
			Bookmark = 64,
			PropertyNumChange = 128,
			PropertyStringChange = 256,
			FalseRecognition = 512,
			Interference = 1024,
			RequestUI = 2048,
			StateChange = 4096,
			Adaptation = 8192,
			StreamStart = 16384,
			RecoOtherContext = 32768,
			AudioLevel = 65536,
			Private = 262144,
			AllEvents = 393215,
		}
		public enum SpeechRecoContextState : int32
		{
			Disabled = 0,
			Enabled = 1,
		}
		public enum DISPIDSPRG : int32
		{
			Id = 1,
			RecoContext = 2,
			State = 3,
			Rules = 4,
			Reset = 5,
			Commit = 6,
			CmdLoadFromFile = 7,
			CmdLoadFromObject = 8,
			CmdLoadFromResource = 9,
			CmdLoadFromMemory = 10,
			CmdLoadFromProprietaryGrammar = 11,
			CmdSetRuleState = 12,
			CmdSetRuleIdState = 13,
			DictationLoad = 14,
			DictationUnload = 15,
			DictationSetState = 16,
			SetWordSequenceData = 17,
			SetTextSelection = 18,
			IsPronounceable = 19,
		}
		public enum SpeechLoadOption : int32
		{
			Static = 0,
			Dynamic = 1,
		}
		public enum SpeechWordPronounceable : int32
		{
			UnknownWordUnpronounceable = 0,
			UnknownWordPronounceable = 1,
			KnownWordPronounceable = 2,
		}
		public enum SpeechGrammarState : int32
		{
			Enabled = 1,
			Disabled = 0,
			Exclusive = 3,
		}
		public enum SpeechRuleState : int32
		{
			Inactive = 0,
			Active = 1,
			ActiveWithAutoPause = 3,
			ActiveUserDelimited = 4,
		}
		public enum SpeechRuleAttributes : int32
		{
			TopLevel = 1,
			DefaultToActive = 2,
			Export = 4,
			Import = 8,
			Interpreter = 16,
			Dynamic = 32,
			Root = 64,
		}
		public enum SpeechGrammarWordType : int32
		{
			Display = 0,
			Lexical = 1,
			Pronounciation = 2,
			LexicalNoSpecialChars = 3,
		}
		public enum DISPID_SpeechRecoContextEvents : int32
		{
			StartStream = 1,
			EndStream = 2,
			Bookmark = 3,
			SoundStart = 4,
			SoundEnd = 5,
			PhraseStart = 6,
			Recognition = 7,
			Hypothesis = 8,
			PropertyNumberChange = 9,
			PropertyStringChange = 10,
			FalseRecognition = 11,
			Interference = 12,
			RequestUI = 13,
			RecognizerStateChange = 14,
			Adaptation = 15,
			RecognitionForOtherContext = 16,
			AudioLevel = 17,
			EnginePrivate = 18,
		}
		public enum SpeechRecognitionType : int32
		{
			Standard = 0,
			Autopause = 1,
			Emulated = 2,
			SMLTimeout = 4,
			ExtendableParse = 8,
			ReSent = 16,
		}
		public enum DISPID_SpeechGrammarRule : int32
		{
			Attributes = 1,
			InitialState = 2,
			Name = 3,
			Id = 4,
			Clear = 5,
			AddResource = 6,
			AddState = 7,
		}
		public enum DISPID_SpeechGrammarRules : int32
		{
			Count = 1,
			Dynamic = 2,
			Add = 3,
			Commit = 4,
			CommitAndSave = 5,
			FindRule = 6,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechGrammarRuleState : int32
		{
			Rule = 1,
			Transitions = 2,
			AddWordTransition = 3,
			AddRuleTransition = 4,
			AddSpecialTransition = 5,
		}
		public enum SpeechSpecialTransitionType : int32
		{
			Wildcard = 1,
			Dictation = 2,
			TextBuffer = 3,
		}
		public enum DISPID_SpeechGrammarRuleStateTransitions : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechGrammarRuleStateTransition : int32
		{
			Type = 1,
			Text = 2,
			Rule = 3,
			Weight = 4,
			PropertyName = 5,
			PropertyId = 6,
			PropertyValue = 7,
			NextState = 8,
		}
		public enum SpeechGrammarRuleStateTransitionType : int32
		{
			Epsilon = 0,
			Word = 1,
			Rule = 2,
			Dictation = 3,
			Wildcard = 4,
			TextBuffer = 5,
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
			RecoContext = 1,
			Times = 2,
			AudioFormat = 3,
			PhraseInfo = 4,
			Alternates = 5,
			Audio = 6,
			SpeakAudio = 7,
			SaveToMemory = 8,
			DiscardResultInfo = 9,
		}
		public enum SpeechDiscardType : int32
		{
			Property = 1,
			Replacement = 2,
			Rule = 4,
			DisplayText = 8,
			LexicalForm = 16,
			Pronunciation = 32,
			Audio = 64,
			Alternates = 128,
			All = 255,
		}
		public enum DISPID_SpeechXMLRecoResult : int32
		{
			Result = 10,
			ErrorInfo = 11,
		}
		public enum DISPID_SpeechRecoResult2 : int32
		{
			DISPID_SRRSetTextFeedback = 12,
		}
		public enum DISPID_SpeechPhraseBuilder : int32
		{
			DISPID_SPPBRestorePhraseFromMemory = 1,
		}
		public enum DISPID_SpeechRecoResultTimes : int32
		{
			StreamTime = 1,
			Length = 2,
			TickCount = 3,
			OffsetFromStart = 4,
		}
		public enum DISPID_SpeechPhraseAlternate : int32
		{
			RecoResult = 1,
			StartElementInResult = 2,
			NumberOfElementsInResult = 3,
			PhraseInfo = 4,
			Commit = 5,
		}
		public enum DISPID_SpeechPhraseAlternates : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseInfo : int32
		{
			LanguageId = 1,
			GrammarId = 2,
			StartTime = 3,
			AudioStreamPosition = 4,
			AudioSizeBytes = 5,
			RetainedSizeBytes = 6,
			AudioSizeTime = 7,
			Rule = 8,
			Properties = 9,
			Elements = 10,
			Replacements = 11,
			EngineId = 12,
			EnginePrivateData = 13,
			SaveToMemory = 14,
			GetText = 15,
			GetDisplayAttributes = 16,
		}
		public enum DISPID_SpeechPhraseElement : int32
		{
			AudioTimeOffset = 1,
			AudioSizeTime = 2,
			AudioStreamOffset = 3,
			AudioSizeBytes = 4,
			RetainedStreamOffset = 5,
			RetainedSizeBytes = 6,
			DisplayText = 7,
			LexicalForm = 8,
			Pronunciation = 9,
			DisplayAttributes = 10,
			RequiredConfidence = 11,
			ActualConfidence = 12,
			EngineConfidence = 13,
		}
		public enum SpeechEngineConfidence : int32
		{
			LowConfidence = -1,
			NormalConfidence = 0,
			HighConfidence = 1,
		}
		public enum DISPID_SpeechPhraseElements : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseReplacement : int32
		{
			DisplayAttributes = 1,
			Text = 2,
			FirstElement = 3,
			NumberOfElements = 4,
		}
		public enum DISPID_SpeechPhraseReplacements : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechPhraseProperty : int32
		{
			Name = 1,
			Id = 2,
			Value = 3,
			FirstElement = 4,
			NumberOfElements = 5,
			EngineConfidence = 6,
			Confidence = 7,
			Parent = 8,
			Children = 9,
		}
		public enum DISPID_SpeechPhraseProperties : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
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
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechLexicon : int32
		{
			GenerationId = 1,
			GetWords = 2,
			AddPronunciation = 3,
			AddPronunciationByPhoneIds = 4,
			RemovePronunciation = 5,
			RemovePronunciationByPhoneIds = 6,
			GetPronunciations = 7,
			GetGenerationChange = 8,
		}
		public enum SpeechLexiconType : int32
		{
			User = 1,
			App = 2,
		}
		public enum SpeechPartOfSpeech : int32
		{
			NotOverriden = -1,
			Unknown = 0,
			Noun = 4096,
			Verb = 8192,
			Modifier = 12288,
			Function = 16384,
			Interjection = 20480,
			LMA = 28672,
			SuppressWord = 61440,
		}
		public enum DISPID_SpeechLexiconWords : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum SpeechWordType : int32
		{
			Added = 1,
			Deleted = 2,
		}
		public enum DISPID_SpeechLexiconWord : int32
		{
			LangId = 1,
			Type = 2,
			Word = 3,
			Pronunciations = 4,
		}
		public enum DISPID_SpeechLexiconProns : int32
		{
			Count = 1,
			Item = 0,
			_NewEnum = -4,
		}
		public enum DISPID_SpeechLexiconPronunciation : int32
		{
			Type = 1,
			LangId = 2,
			PartOfSpeech = 3,
			PhoneIds = 4,
			Symbolic = 5,
		}
		public enum DISPID_SpeechPhoneConverter : int32
		{
			LangId = 1,
			PhoneToId = 2,
			IdToPhone = 3,
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
		
		[CRepr]
		public struct ISpNotifyCallback
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyCallback(WPARAM wParam, LPARAM lParam) mut
			{
				return VT.NotifyCallback(&this, wParam, lParam);
			}
			[CRepr]
			public struct VTable
			{
				public new function HRESULT(ISpNotifyCallback *self, WPARAM wParam, LPARAM lParam) NotifyCallback;
			}
		}
		[CRepr]
		public struct ISpNotifySource : IUnknown
		{
			public const new Guid IID = .(0x5eff4aef, 0x8487, 0x11d2, 0x96, 0x1c, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNotifySink(ISpNotifySink* pNotifySink) mut
			{
				return VT.SetNotifySink(&this, pNotifySink);
			}
			public HRESULT SetNotifyWindowMessage(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.SetNotifyWindowMessage(&this, hWnd, Msg, wParam, lParam);
			}
			public HRESULT SetNotifyCallbackFunction(SPNOTIFYCALLBACK* pfnCallback, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.SetNotifyCallbackFunction(&this, pfnCallback, wParam, lParam);
			}
			public HRESULT SetNotifyCallbackInterface(ISpNotifyCallback* pSpCallback, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.SetNotifyCallbackInterface(&this, pSpCallback, wParam, lParam);
			}
			public HRESULT SetNotifyWin32Event() mut
			{
				return VT.SetNotifyWin32Event(&this);
			}
			public HRESULT WaitForNotifyEvent(uint32 dwMilliseconds) mut
			{
				return VT.WaitForNotifyEvent(&this, dwMilliseconds);
			}
			public HANDLE GetNotifyEventHandle() mut
			{
				return VT.GetNotifyEventHandle(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpNotifySource *self, ISpNotifySink* pNotifySink) SetNotifySink;
				public new function HRESULT(ISpNotifySource *self, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) SetNotifyWindowMessage;
				public new function HRESULT(ISpNotifySource *self, SPNOTIFYCALLBACK* pfnCallback, WPARAM wParam, LPARAM lParam) SetNotifyCallbackFunction;
				public new function HRESULT(ISpNotifySource *self, ISpNotifyCallback* pSpCallback, WPARAM wParam, LPARAM lParam) SetNotifyCallbackInterface;
				public new function HRESULT(ISpNotifySource *self) SetNotifyWin32Event;
				public new function HRESULT(ISpNotifySource *self, uint32 dwMilliseconds) WaitForNotifyEvent;
				public new function HANDLE(ISpNotifySource *self) GetNotifyEventHandle;
			}
		}
		[CRepr]
		public struct ISpNotifySink : IUnknown
		{
			public const new Guid IID = .(0x259684dc, 0x37c3, 0x11d2, 0x96, 0x03, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify() mut
			{
				return VT.Notify(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpNotifySink *self) Notify;
			}
		}
		[CRepr]
		public struct ISpNotifyTranslator : ISpNotifySink
		{
			public const new Guid IID = .(0xaca16614, 0x5d3d, 0x11d2, 0x96, 0x0e, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitWindowMessage(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.InitWindowMessage(&this, hWnd, Msg, wParam, lParam);
			}
			public HRESULT InitCallback(SPNOTIFYCALLBACK* pfnCallback, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.InitCallback(&this, pfnCallback, wParam, lParam);
			}
			public HRESULT InitSpNotifyCallback(ISpNotifyCallback* pSpCallback, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.InitSpNotifyCallback(&this, pSpCallback, wParam, lParam);
			}
			public HRESULT InitWin32Event(HANDLE hEvent, BOOL fCloseHandleOnRelease) mut
			{
				return VT.InitWin32Event(&this, hEvent, fCloseHandleOnRelease);
			}
			public HRESULT Wait(uint32 dwMilliseconds) mut
			{
				return VT.Wait(&this, dwMilliseconds);
			}
			public HANDLE GetEventHandle() mut
			{
				return VT.GetEventHandle(&this);
			}
			[CRepr]
			public struct VTable : ISpNotifySink.VTable
			{
				public new function HRESULT(ISpNotifyTranslator *self, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam) InitWindowMessage;
				public new function HRESULT(ISpNotifyTranslator *self, SPNOTIFYCALLBACK* pfnCallback, WPARAM wParam, LPARAM lParam) InitCallback;
				public new function HRESULT(ISpNotifyTranslator *self, ISpNotifyCallback* pSpCallback, WPARAM wParam, LPARAM lParam) InitSpNotifyCallback;
				public new function HRESULT(ISpNotifyTranslator *self, HANDLE hEvent, BOOL fCloseHandleOnRelease) InitWin32Event;
				public new function HRESULT(ISpNotifyTranslator *self, uint32 dwMilliseconds) Wait;
				public new function HANDLE(ISpNotifyTranslator *self) GetEventHandle;
			}
		}
		[CRepr]
		public struct ISpDataKey : IUnknown
		{
			public const new Guid IID = .(0x14056581, 0xe16c, 0x11d2, 0xbb, 0x90, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetData(PWSTR pszValueName, uint32 cbData, uint8* pData) mut
			{
				return VT.SetData(&this, pszValueName, cbData, pData);
			}
			public HRESULT GetData(PWSTR pszValueName, uint32* pcbData, uint8* pData) mut
			{
				return VT.GetData(&this, pszValueName, pcbData, pData);
			}
			public HRESULT SetStringValue(PWSTR pszValueName, PWSTR pszValue) mut
			{
				return VT.SetStringValue(&this, pszValueName, pszValue);
			}
			public HRESULT GetStringValue(PWSTR pszValueName, PWSTR* ppszValue) mut
			{
				return VT.GetStringValue(&this, pszValueName, ppszValue);
			}
			public HRESULT SetDWORD(PWSTR pszValueName, uint32 dwValue) mut
			{
				return VT.SetDWORD(&this, pszValueName, dwValue);
			}
			public HRESULT GetDWORD(PWSTR pszValueName, uint32* pdwValue) mut
			{
				return VT.GetDWORD(&this, pszValueName, pdwValue);
			}
			public HRESULT OpenKey(PWSTR pszSubKeyName, ISpDataKey** ppSubKey) mut
			{
				return VT.OpenKey(&this, pszSubKeyName, ppSubKey);
			}
			public HRESULT CreateKey(PWSTR pszSubKey, ISpDataKey** ppSubKey) mut
			{
				return VT.CreateKey(&this, pszSubKey, ppSubKey);
			}
			public HRESULT DeleteKey(PWSTR pszSubKey) mut
			{
				return VT.DeleteKey(&this, pszSubKey);
			}
			public HRESULT DeleteValue(PWSTR pszValueName) mut
			{
				return VT.DeleteValue(&this, pszValueName);
			}
			public HRESULT EnumKeys(uint32 Index, PWSTR* ppszSubKeyName) mut
			{
				return VT.EnumKeys(&this, Index, ppszSubKeyName);
			}
			public HRESULT EnumValues(uint32 Index, PWSTR* ppszValueName) mut
			{
				return VT.EnumValues(&this, Index, ppszValueName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName, uint32 cbData, uint8* pData) SetData;
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName, uint32* pcbData, uint8* pData) GetData;
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName, PWSTR pszValue) SetStringValue;
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName, PWSTR* ppszValue) GetStringValue;
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName, uint32 dwValue) SetDWORD;
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName, uint32* pdwValue) GetDWORD;
				public new function HRESULT(ISpDataKey *self, PWSTR pszSubKeyName, ISpDataKey** ppSubKey) OpenKey;
				public new function HRESULT(ISpDataKey *self, PWSTR pszSubKey, ISpDataKey** ppSubKey) CreateKey;
				public new function HRESULT(ISpDataKey *self, PWSTR pszSubKey) DeleteKey;
				public new function HRESULT(ISpDataKey *self, PWSTR pszValueName) DeleteValue;
				public new function HRESULT(ISpDataKey *self, uint32 Index, PWSTR* ppszSubKeyName) EnumKeys;
				public new function HRESULT(ISpDataKey *self, uint32 Index, PWSTR* ppszValueName) EnumValues;
			}
		}
		[CRepr]
		public struct ISpRegDataKey : ISpDataKey
		{
			public const new Guid IID = .(0x92a66e2b, 0xc830, 0x4149, 0x83, 0xdf, 0x6f, 0xc2, 0xba, 0x1e, 0x7a, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetKey(HKEY hkey, BOOL fReadOnly) mut
			{
				return VT.SetKey(&this, hkey, fReadOnly);
			}
			[CRepr]
			public struct VTable : ISpDataKey.VTable
			{
				public new function HRESULT(ISpRegDataKey *self, HKEY hkey, BOOL fReadOnly) SetKey;
			}
		}
		[CRepr]
		public struct ISpObjectTokenCategory : ISpDataKey
		{
			public const new Guid IID = .(0x2d3d3845, 0x39af, 0x4850, 0xbb, 0xf9, 0x40, 0xb4, 0x97, 0x80, 0x01, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetId(PWSTR pszCategoryId, BOOL fCreateIfNotExist) mut
			{
				return VT.SetId(&this, pszCategoryId, fCreateIfNotExist);
			}
			public HRESULT GetId(PWSTR* ppszCoMemCategoryId) mut
			{
				return VT.GetId(&this, ppszCoMemCategoryId);
			}
			public HRESULT GetDataKey(SPDATAKEYLOCATION spdkl, ISpDataKey** ppDataKey) mut
			{
				return VT.GetDataKey(&this, spdkl, ppDataKey);
			}
			public HRESULT EnumTokens(PWSTR pzsReqAttribs, PWSTR pszOptAttribs, IEnumSpObjectTokens** ppEnum) mut
			{
				return VT.EnumTokens(&this, pzsReqAttribs, pszOptAttribs, ppEnum);
			}
			public HRESULT SetDefaultTokenId(PWSTR pszTokenId) mut
			{
				return VT.SetDefaultTokenId(&this, pszTokenId);
			}
			public HRESULT GetDefaultTokenId(PWSTR* ppszCoMemTokenId) mut
			{
				return VT.GetDefaultTokenId(&this, ppszCoMemTokenId);
			}
			[CRepr]
			public struct VTable : ISpDataKey.VTable
			{
				public new function HRESULT(ISpObjectTokenCategory *self, PWSTR pszCategoryId, BOOL fCreateIfNotExist) SetId;
				public new function HRESULT(ISpObjectTokenCategory *self, PWSTR* ppszCoMemCategoryId) GetId;
				public new function HRESULT(ISpObjectTokenCategory *self, SPDATAKEYLOCATION spdkl, ISpDataKey** ppDataKey) GetDataKey;
				public new function HRESULT(ISpObjectTokenCategory *self, PWSTR pzsReqAttribs, PWSTR pszOptAttribs, IEnumSpObjectTokens** ppEnum) EnumTokens;
				public new function HRESULT(ISpObjectTokenCategory *self, PWSTR pszTokenId) SetDefaultTokenId;
				public new function HRESULT(ISpObjectTokenCategory *self, PWSTR* ppszCoMemTokenId) GetDefaultTokenId;
			}
		}
		[CRepr]
		public struct ISpObjectToken : ISpDataKey
		{
			public const new Guid IID = .(0x14056589, 0xe16c, 0x11d2, 0xbb, 0x90, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetId(PWSTR pszCategoryId, PWSTR pszTokenId, BOOL fCreateIfNotExist) mut
			{
				return VT.SetId(&this, pszCategoryId, pszTokenId, fCreateIfNotExist);
			}
			public HRESULT GetId(PWSTR* ppszCoMemTokenId) mut
			{
				return VT.GetId(&this, ppszCoMemTokenId);
			}
			public HRESULT GetCategory(ISpObjectTokenCategory** ppTokenCategory) mut
			{
				return VT.GetCategory(&this, ppTokenCategory);
			}
			public HRESULT CreateInstance(IUnknown* pUnkOuter, uint32 dwClsContext, Guid* riid, void** ppvObject) mut
			{
				return VT.CreateInstance(&this, pUnkOuter, dwClsContext, riid, ppvObject);
			}
			public HRESULT GetStorageFileName(Guid* clsidCaller, PWSTR pszValueName, PWSTR pszFileNameSpecifier, uint32 nFolder, PWSTR* ppszFilePath) mut
			{
				return VT.GetStorageFileName(&this, clsidCaller, pszValueName, pszFileNameSpecifier, nFolder, ppszFilePath);
			}
			public HRESULT RemoveStorageFileName(Guid* clsidCaller, PWSTR pszKeyName, BOOL fDeleteFile) mut
			{
				return VT.RemoveStorageFileName(&this, clsidCaller, pszKeyName, fDeleteFile);
			}
			public HRESULT Remove(Guid* pclsidCaller) mut
			{
				return VT.Remove(&this, pclsidCaller);
			}
			public HRESULT IsUISupported(PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, IUnknown* punkObject, BOOL* pfSupported) mut
			{
				return VT.IsUISupported(&this, pszTypeOfUI, pvExtraData, cbExtraData, punkObject, pfSupported);
			}
			public HRESULT DisplayUI(HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, IUnknown* punkObject) mut
			{
				return VT.DisplayUI(&this, hwndParent, pszTitle, pszTypeOfUI, pvExtraData, cbExtraData, punkObject);
			}
			public HRESULT MatchesAttributes(PWSTR pszAttributes, BOOL* pfMatches) mut
			{
				return VT.MatchesAttributes(&this, pszAttributes, pfMatches);
			}
			[CRepr]
			public struct VTable : ISpDataKey.VTable
			{
				public new function HRESULT(ISpObjectToken *self, PWSTR pszCategoryId, PWSTR pszTokenId, BOOL fCreateIfNotExist) SetId;
				public new function HRESULT(ISpObjectToken *self, PWSTR* ppszCoMemTokenId) GetId;
				public new function HRESULT(ISpObjectToken *self, ISpObjectTokenCategory** ppTokenCategory) GetCategory;
				public new function HRESULT(ISpObjectToken *self, IUnknown* pUnkOuter, uint32 dwClsContext, Guid* riid, void** ppvObject) CreateInstance;
				public new function HRESULT(ISpObjectToken *self, Guid* clsidCaller, PWSTR pszValueName, PWSTR pszFileNameSpecifier, uint32 nFolder, PWSTR* ppszFilePath) GetStorageFileName;
				public new function HRESULT(ISpObjectToken *self, Guid* clsidCaller, PWSTR pszKeyName, BOOL fDeleteFile) RemoveStorageFileName;
				public new function HRESULT(ISpObjectToken *self, Guid* pclsidCaller) Remove;
				public new function HRESULT(ISpObjectToken *self, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, IUnknown* punkObject, BOOL* pfSupported) IsUISupported;
				public new function HRESULT(ISpObjectToken *self, HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, IUnknown* punkObject) DisplayUI;
				public new function HRESULT(ISpObjectToken *self, PWSTR pszAttributes, BOOL* pfMatches) MatchesAttributes;
			}
		}
		[CRepr]
		public struct ISpObjectTokenInit : ISpObjectToken
		{
			public const new Guid IID = .(0xb8aab0cf, 0x346f, 0x49d8, 0x94, 0x99, 0xc8, 0xb0, 0x3f, 0x16, 0x1d, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitFromDataKey(PWSTR pszCategoryId, PWSTR pszTokenId, ISpDataKey* pDataKey) mut
			{
				return VT.InitFromDataKey(&this, pszCategoryId, pszTokenId, pDataKey);
			}
			[CRepr]
			public struct VTable : ISpObjectToken.VTable
			{
				public new function HRESULT(ISpObjectTokenInit *self, PWSTR pszCategoryId, PWSTR pszTokenId, ISpDataKey* pDataKey) InitFromDataKey;
			}
		}
		[CRepr]
		public struct IEnumSpObjectTokens : IUnknown
		{
			public const new Guid IID = .(0x06b64f9e, 0x7fda, 0x11d2, 0xb4, 0xf2, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, ISpObjectToken** pelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, pelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSpObjectTokens** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Item(uint32 Index, ISpObjectToken** ppToken) mut
			{
				return VT.Item(&this, Index, ppToken);
			}
			public HRESULT GetCount(uint32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSpObjectTokens *self, uint32 celt, ISpObjectToken** pelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSpObjectTokens *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSpObjectTokens *self) Reset;
				public new function HRESULT(IEnumSpObjectTokens *self, IEnumSpObjectTokens** ppEnum) Clone;
				public new function HRESULT(IEnumSpObjectTokens *self, uint32 Index, ISpObjectToken** ppToken) Item;
				public new function HRESULT(IEnumSpObjectTokens *self, uint32* pCount) GetCount;
			}
		}
		[CRepr]
		public struct ISpObjectWithToken : IUnknown
		{
			public const new Guid IID = .(0x5b559f40, 0xe952, 0x11d2, 0xbb, 0x91, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetObjectToken(ISpObjectToken* pToken) mut
			{
				return VT.SetObjectToken(&this, pToken);
			}
			public HRESULT GetObjectToken(ISpObjectToken** ppToken) mut
			{
				return VT.GetObjectToken(&this, ppToken);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpObjectWithToken *self, ISpObjectToken* pToken) SetObjectToken;
				public new function HRESULT(ISpObjectWithToken *self, ISpObjectToken** ppToken) GetObjectToken;
			}
		}
		[CRepr]
		public struct ISpResourceManager : IServiceProvider
		{
			public const new Guid IID = .(0x93384e18, 0x5014, 0x43d5, 0xad, 0xbb, 0xa7, 0x8e, 0x05, 0x59, 0x26, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetObject(Guid* guidServiceId, IUnknown* pUnkObject) mut
			{
				return VT.SetObject(&this, guidServiceId, pUnkObject);
			}
			public HRESULT GetObject(Guid* guidServiceId, Guid* ObjectCLSID, Guid* ObjectIID, BOOL fReleaseWhenLastExternalRefReleased, void** ppObject) mut
			{
				return VT.GetObject(&this, guidServiceId, ObjectCLSID, ObjectIID, fReleaseWhenLastExternalRefReleased, ppObject);
			}
			[CRepr]
			public struct VTable : IServiceProvider.VTable
			{
				public new function HRESULT(ISpResourceManager *self, Guid* guidServiceId, IUnknown* pUnkObject) SetObject;
				public new function HRESULT(ISpResourceManager *self, Guid* guidServiceId, Guid* ObjectCLSID, Guid* ObjectIID, BOOL fReleaseWhenLastExternalRefReleased, void** ppObject) GetObject;
			}
		}
		[CRepr]
		public struct ISpEventSource : ISpNotifySource
		{
			public const new Guid IID = .(0xbe7a9cce, 0x5f9e, 0x11d2, 0x96, 0x0f, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInterest(uint64 ullEventInterest, uint64 ullQueuedInterest) mut
			{
				return VT.SetInterest(&this, ullEventInterest, ullQueuedInterest);
			}
			public HRESULT GetEvents(uint32 ulCount, SPEVENT* pEventArray, uint32* pulFetched) mut
			{
				return VT.GetEvents(&this, ulCount, pEventArray, pulFetched);
			}
			public HRESULT GetInfo(SPEVENTSOURCEINFO* pInfo) mut
			{
				return VT.GetInfo(&this, pInfo);
			}
			[CRepr]
			public struct VTable : ISpNotifySource.VTable
			{
				public new function HRESULT(ISpEventSource *self, uint64 ullEventInterest, uint64 ullQueuedInterest) SetInterest;
				public new function HRESULT(ISpEventSource *self, uint32 ulCount, SPEVENT* pEventArray, uint32* pulFetched) GetEvents;
				public new function HRESULT(ISpEventSource *self, SPEVENTSOURCEINFO* pInfo) GetInfo;
			}
		}
		[CRepr]
		public struct ISpEventSource2 : ISpEventSource
		{
			public const new Guid IID = .(0x2373a435, 0x6a4b, 0x429e, 0xa6, 0xac, 0xd4, 0x23, 0x1a, 0x61, 0x97, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEventsEx(uint32 ulCount, SPEVENTEX* pEventArray, uint32* pulFetched) mut
			{
				return VT.GetEventsEx(&this, ulCount, pEventArray, pulFetched);
			}
			[CRepr]
			public struct VTable : ISpEventSource.VTable
			{
				public new function HRESULT(ISpEventSource2 *self, uint32 ulCount, SPEVENTEX* pEventArray, uint32* pulFetched) GetEventsEx;
			}
		}
		[CRepr]
		public struct ISpEventSink : IUnknown
		{
			public const new Guid IID = .(0xbe7a9cc9, 0x5f9e, 0x11d2, 0x96, 0x0f, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddEvents(SPEVENT* pEventArray, uint32 ulCount) mut
			{
				return VT.AddEvents(&this, pEventArray, ulCount);
			}
			public HRESULT GetEventInterest(uint64* pullEventInterest) mut
			{
				return VT.GetEventInterest(&this, pullEventInterest);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpEventSink *self, SPEVENT* pEventArray, uint32 ulCount) AddEvents;
				public new function HRESULT(ISpEventSink *self, uint64* pullEventInterest) GetEventInterest;
			}
		}
		[CRepr]
		public struct ISpStreamFormat : IStream
		{
			public const new Guid IID = .(0xbed530be, 0x2606, 0x4f4d, 0xa1, 0xc0, 0x54, 0xc5, 0xcd, 0xa5, 0x56, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFormat(Guid* pguidFormatId, WAVEFORMATEX** ppCoMemWaveFormatEx) mut
			{
				return VT.GetFormat(&this, pguidFormatId, ppCoMemWaveFormatEx);
			}
			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function HRESULT(ISpStreamFormat *self, Guid* pguidFormatId, WAVEFORMATEX** ppCoMemWaveFormatEx) GetFormat;
			}
		}
		[CRepr]
		public struct ISpStream : ISpStreamFormat
		{
			public const new Guid IID = .(0x12e3cca9, 0x7518, 0x44c5, 0xa5, 0xe7, 0xba, 0x5a, 0x79, 0xcb, 0x92, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBaseStream(IStream* pStream, Guid* rguidFormat, WAVEFORMATEX* pWaveFormatEx) mut
			{
				return VT.SetBaseStream(&this, pStream, rguidFormat, pWaveFormatEx);
			}
			public HRESULT GetBaseStream(IStream** ppStream) mut
			{
				return VT.GetBaseStream(&this, ppStream);
			}
			public HRESULT BindToFile(PWSTR pszFileName, SPFILEMODE eMode, Guid* pFormatId, WAVEFORMATEX* pWaveFormatEx, uint64 ullEventInterest) mut
			{
				return VT.BindToFile(&this, pszFileName, eMode, pFormatId, pWaveFormatEx, ullEventInterest);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : ISpStreamFormat.VTable
			{
				public new function HRESULT(ISpStream *self, IStream* pStream, Guid* rguidFormat, WAVEFORMATEX* pWaveFormatEx) SetBaseStream;
				public new function HRESULT(ISpStream *self, IStream** ppStream) GetBaseStream;
				public new function HRESULT(ISpStream *self, PWSTR pszFileName, SPFILEMODE eMode, Guid* pFormatId, WAVEFORMATEX* pWaveFormatEx, uint64 ullEventInterest) BindToFile;
				public new function HRESULT(ISpStream *self) Close;
			}
		}
		[CRepr]
		public struct ISpStreamFormatConverter : ISpStreamFormat
		{
			public const new Guid IID = .(0x678a932c, 0xea71, 0x4446, 0x9b, 0x41, 0x78, 0xfd, 0xa6, 0x28, 0x0a, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBaseStream(ISpStreamFormat* pStream, BOOL fSetFormatToBaseStreamFormat, BOOL fWriteToBaseStream) mut
			{
				return VT.SetBaseStream(&this, pStream, fSetFormatToBaseStreamFormat, fWriteToBaseStream);
			}
			public HRESULT GetBaseStream(ISpStreamFormat** ppStream) mut
			{
				return VT.GetBaseStream(&this, ppStream);
			}
			public HRESULT SetFormat(Guid* rguidFormatIdOfConvertedStream, WAVEFORMATEX* pWaveFormatExOfConvertedStream) mut
			{
				return VT.SetFormat(&this, rguidFormatIdOfConvertedStream, pWaveFormatExOfConvertedStream);
			}
			public HRESULT ResetSeekPosition() mut
			{
				return VT.ResetSeekPosition(&this);
			}
			public HRESULT ScaleConvertedToBaseOffset(uint64 ullOffsetConvertedStream, uint64* pullOffsetBaseStream) mut
			{
				return VT.ScaleConvertedToBaseOffset(&this, ullOffsetConvertedStream, pullOffsetBaseStream);
			}
			public HRESULT ScaleBaseToConvertedOffset(uint64 ullOffsetBaseStream, uint64* pullOffsetConvertedStream) mut
			{
				return VT.ScaleBaseToConvertedOffset(&this, ullOffsetBaseStream, pullOffsetConvertedStream);
			}
			[CRepr]
			public struct VTable : ISpStreamFormat.VTable
			{
				public new function HRESULT(ISpStreamFormatConverter *self, ISpStreamFormat* pStream, BOOL fSetFormatToBaseStreamFormat, BOOL fWriteToBaseStream) SetBaseStream;
				public new function HRESULT(ISpStreamFormatConverter *self, ISpStreamFormat** ppStream) GetBaseStream;
				public new function HRESULT(ISpStreamFormatConverter *self, Guid* rguidFormatIdOfConvertedStream, WAVEFORMATEX* pWaveFormatExOfConvertedStream) SetFormat;
				public new function HRESULT(ISpStreamFormatConverter *self) ResetSeekPosition;
				public new function HRESULT(ISpStreamFormatConverter *self, uint64 ullOffsetConvertedStream, uint64* pullOffsetBaseStream) ScaleConvertedToBaseOffset;
				public new function HRESULT(ISpStreamFormatConverter *self, uint64 ullOffsetBaseStream, uint64* pullOffsetConvertedStream) ScaleBaseToConvertedOffset;
			}
		}
		[CRepr]
		public struct ISpAudio : ISpStreamFormat
		{
			public const new Guid IID = .(0xc05c768f, 0xfae8, 0x4ec2, 0x8e, 0x07, 0x33, 0x83, 0x21, 0xc1, 0x24, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetState(SPAUDIOSTATE NewState, uint64 ullReserved) mut
			{
				return VT.SetState(&this, NewState, ullReserved);
			}
			public HRESULT SetFormat(Guid* rguidFmtId, WAVEFORMATEX* pWaveFormatEx) mut
			{
				return VT.SetFormat(&this, rguidFmtId, pWaveFormatEx);
			}
			public HRESULT GetStatus(SPAUDIOSTATUS* pStatus) mut
			{
				return VT.GetStatus(&this, pStatus);
			}
			public HRESULT SetBufferInfo(SPAUDIOBUFFERINFO* pBuffInfo) mut
			{
				return VT.SetBufferInfo(&this, pBuffInfo);
			}
			public HRESULT GetBufferInfo(SPAUDIOBUFFERINFO* pBuffInfo) mut
			{
				return VT.GetBufferInfo(&this, pBuffInfo);
			}
			public HRESULT GetDefaultFormat(Guid* pFormatId, WAVEFORMATEX** ppCoMemWaveFormatEx) mut
			{
				return VT.GetDefaultFormat(&this, pFormatId, ppCoMemWaveFormatEx);
			}
			public HANDLE EventHandle() mut
			{
				return VT.EventHandle(&this);
			}
			public HRESULT GetVolumeLevel(uint32* pLevel) mut
			{
				return VT.GetVolumeLevel(&this, pLevel);
			}
			public HRESULT SetVolumeLevel(uint32 Level) mut
			{
				return VT.SetVolumeLevel(&this, Level);
			}
			public HRESULT GetBufferNotifySize(uint32* pcbSize) mut
			{
				return VT.GetBufferNotifySize(&this, pcbSize);
			}
			public HRESULT SetBufferNotifySize(uint32 cbSize) mut
			{
				return VT.SetBufferNotifySize(&this, cbSize);
			}
			[CRepr]
			public struct VTable : ISpStreamFormat.VTable
			{
				public new function HRESULT(ISpAudio *self, SPAUDIOSTATE NewState, uint64 ullReserved) SetState;
				public new function HRESULT(ISpAudio *self, Guid* rguidFmtId, WAVEFORMATEX* pWaveFormatEx) SetFormat;
				public new function HRESULT(ISpAudio *self, SPAUDIOSTATUS* pStatus) GetStatus;
				public new function HRESULT(ISpAudio *self, SPAUDIOBUFFERINFO* pBuffInfo) SetBufferInfo;
				public new function HRESULT(ISpAudio *self, SPAUDIOBUFFERINFO* pBuffInfo) GetBufferInfo;
				public new function HRESULT(ISpAudio *self, Guid* pFormatId, WAVEFORMATEX** ppCoMemWaveFormatEx) GetDefaultFormat;
				public new function HANDLE(ISpAudio *self) EventHandle;
				public new function HRESULT(ISpAudio *self, uint32* pLevel) GetVolumeLevel;
				public new function HRESULT(ISpAudio *self, uint32 Level) SetVolumeLevel;
				public new function HRESULT(ISpAudio *self, uint32* pcbSize) GetBufferNotifySize;
				public new function HRESULT(ISpAudio *self, uint32 cbSize) SetBufferNotifySize;
			}
		}
		[CRepr]
		public struct ISpMMSysAudio : ISpAudio
		{
			public const new Guid IID = .(0x15806f6e, 0x1d70, 0x4b48, 0x98, 0xe6, 0x3b, 0x1a, 0x00, 0x75, 0x09, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceId(uint32* puDeviceId) mut
			{
				return VT.GetDeviceId(&this, puDeviceId);
			}
			public HRESULT SetDeviceId(uint32 uDeviceId) mut
			{
				return VT.SetDeviceId(&this, uDeviceId);
			}
			public HRESULT GetMMHandle(void** pHandle) mut
			{
				return VT.GetMMHandle(&this, pHandle);
			}
			public HRESULT GetLineId(uint32* puLineId) mut
			{
				return VT.GetLineId(&this, puLineId);
			}
			public HRESULT SetLineId(uint32 uLineId) mut
			{
				return VT.SetLineId(&this, uLineId);
			}
			[CRepr]
			public struct VTable : ISpAudio.VTable
			{
				public new function HRESULT(ISpMMSysAudio *self, uint32* puDeviceId) GetDeviceId;
				public new function HRESULT(ISpMMSysAudio *self, uint32 uDeviceId) SetDeviceId;
				public new function HRESULT(ISpMMSysAudio *self, void** pHandle) GetMMHandle;
				public new function HRESULT(ISpMMSysAudio *self, uint32* puLineId) GetLineId;
				public new function HRESULT(ISpMMSysAudio *self, uint32 uLineId) SetLineId;
			}
		}
		[CRepr]
		public struct ISpTranscript : IUnknown
		{
			public const new Guid IID = .(0x10f63bce, 0x201a, 0x11d3, 0xac, 0x70, 0x00, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTranscript(PWSTR* ppszTranscript) mut
			{
				return VT.GetTranscript(&this, ppszTranscript);
			}
			public HRESULT AppendTranscript(PWSTR pszTranscript) mut
			{
				return VT.AppendTranscript(&this, pszTranscript);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpTranscript *self, PWSTR* ppszTranscript) GetTranscript;
				public new function HRESULT(ISpTranscript *self, PWSTR pszTranscript) AppendTranscript;
			}
		}
		[CRepr]
		public struct ISpLexicon : IUnknown
		{
			public const new Guid IID = .(0xda41a7c2, 0x5383, 0x4db2, 0x91, 0x6b, 0x6c, 0x17, 0x19, 0xe3, 0xdb, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPronunciations(PWSTR pszWord, uint16 LangID, uint32 dwFlags, SPWORDPRONUNCIATIONLIST* pWordPronunciationList) mut
			{
				return VT.GetPronunciations(&this, pszWord, LangID, dwFlags, pWordPronunciationList);
			}
			public HRESULT AddPronunciation(PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) mut
			{
				return VT.AddPronunciation(&this, pszWord, LangID, ePartOfSpeech, pszPronunciation);
			}
			public HRESULT RemovePronunciation(PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) mut
			{
				return VT.RemovePronunciation(&this, pszWord, LangID, ePartOfSpeech, pszPronunciation);
			}
			public HRESULT GetGeneration(uint32* pdwGeneration) mut
			{
				return VT.GetGeneration(&this, pdwGeneration);
			}
			public HRESULT GetGenerationChange(uint32 dwFlags, uint32* pdwGeneration, SPWORDLIST* pWordList) mut
			{
				return VT.GetGenerationChange(&this, dwFlags, pdwGeneration, pWordList);
			}
			public HRESULT GetWords(uint32 dwFlags, uint32* pdwGeneration, uint32* pdwCookie, SPWORDLIST* pWordList) mut
			{
				return VT.GetWords(&this, dwFlags, pdwGeneration, pdwCookie, pWordList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpLexicon *self, PWSTR pszWord, uint16 LangID, uint32 dwFlags, SPWORDPRONUNCIATIONLIST* pWordPronunciationList) GetPronunciations;
				public new function HRESULT(ISpLexicon *self, PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) AddPronunciation;
				public new function HRESULT(ISpLexicon *self, PWSTR pszWord, uint16 LangID, SPPARTOFSPEECH ePartOfSpeech, uint16* pszPronunciation) RemovePronunciation;
				public new function HRESULT(ISpLexicon *self, uint32* pdwGeneration) GetGeneration;
				public new function HRESULT(ISpLexicon *self, uint32 dwFlags, uint32* pdwGeneration, SPWORDLIST* pWordList) GetGenerationChange;
				public new function HRESULT(ISpLexicon *self, uint32 dwFlags, uint32* pdwGeneration, uint32* pdwCookie, SPWORDLIST* pWordList) GetWords;
			}
		}
		[CRepr]
		public struct ISpContainerLexicon : ISpLexicon
		{
			public const new Guid IID = .(0x8565572f, 0xc094, 0x41cc, 0xb5, 0x6e, 0x10, 0xbd, 0x9c, 0x3f, 0xf0, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddLexicon(ISpLexicon* pAddLexicon, uint32 dwFlags) mut
			{
				return VT.AddLexicon(&this, pAddLexicon, dwFlags);
			}
			[CRepr]
			public struct VTable : ISpLexicon.VTable
			{
				public new function HRESULT(ISpContainerLexicon *self, ISpLexicon* pAddLexicon, uint32 dwFlags) AddLexicon;
			}
		}
		[CRepr]
		public struct ISpShortcut : IUnknown
		{
			public const new Guid IID = .(0x3df681e2, 0xea56, 0x11d9, 0x8b, 0xde, 0xf6, 0x6b, 0xad, 0x1e, 0x3f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddShortcut(PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) mut
			{
				return VT.AddShortcut(&this, pszDisplay, LangID, pszSpoken, shType);
			}
			public HRESULT RemoveShortcut(PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) mut
			{
				return VT.RemoveShortcut(&this, pszDisplay, LangID, pszSpoken, shType);
			}
			public HRESULT GetShortcuts(uint16 LangID, SPSHORTCUTPAIRLIST* pShortcutpairList) mut
			{
				return VT.GetShortcuts(&this, LangID, pShortcutpairList);
			}
			public HRESULT GetGeneration(uint32* pdwGeneration) mut
			{
				return VT.GetGeneration(&this, pdwGeneration);
			}
			public HRESULT GetWordsFromGenerationChange(uint32* pdwGeneration, SPWORDLIST* pWordList) mut
			{
				return VT.GetWordsFromGenerationChange(&this, pdwGeneration, pWordList);
			}
			public HRESULT GetWords(uint32* pdwGeneration, uint32* pdwCookie, SPWORDLIST* pWordList) mut
			{
				return VT.GetWords(&this, pdwGeneration, pdwCookie, pWordList);
			}
			public HRESULT GetShortcutsForGeneration(uint32* pdwGeneration, uint32* pdwCookie, SPSHORTCUTPAIRLIST* pShortcutpairList) mut
			{
				return VT.GetShortcutsForGeneration(&this, pdwGeneration, pdwCookie, pShortcutpairList);
			}
			public HRESULT GetGenerationChange(uint32* pdwGeneration, SPSHORTCUTPAIRLIST* pShortcutpairList) mut
			{
				return VT.GetGenerationChange(&this, pdwGeneration, pShortcutpairList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpShortcut *self, PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) AddShortcut;
				public new function HRESULT(ISpShortcut *self, PWSTR pszDisplay, uint16 LangID, PWSTR pszSpoken, SPSHORTCUTTYPE shType) RemoveShortcut;
				public new function HRESULT(ISpShortcut *self, uint16 LangID, SPSHORTCUTPAIRLIST* pShortcutpairList) GetShortcuts;
				public new function HRESULT(ISpShortcut *self, uint32* pdwGeneration) GetGeneration;
				public new function HRESULT(ISpShortcut *self, uint32* pdwGeneration, SPWORDLIST* pWordList) GetWordsFromGenerationChange;
				public new function HRESULT(ISpShortcut *self, uint32* pdwGeneration, uint32* pdwCookie, SPWORDLIST* pWordList) GetWords;
				public new function HRESULT(ISpShortcut *self, uint32* pdwGeneration, uint32* pdwCookie, SPSHORTCUTPAIRLIST* pShortcutpairList) GetShortcutsForGeneration;
				public new function HRESULT(ISpShortcut *self, uint32* pdwGeneration, SPSHORTCUTPAIRLIST* pShortcutpairList) GetGenerationChange;
			}
		}
		[CRepr]
		public struct ISpPhoneConverter : ISpObjectWithToken
		{
			public const new Guid IID = .(0x8445c581, 0x0cac, 0x4a38, 0xab, 0xfe, 0x9b, 0x2c, 0xe2, 0x82, 0x64, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PhoneToId(PWSTR pszPhone, uint16* pId) mut
			{
				return VT.PhoneToId(&this, pszPhone, pId);
			}
			public HRESULT IdToPhone(uint16* pId, PWSTR pszPhone) mut
			{
				return VT.IdToPhone(&this, pId, pszPhone);
			}
			[CRepr]
			public struct VTable : ISpObjectWithToken.VTable
			{
				public new function HRESULT(ISpPhoneConverter *self, PWSTR pszPhone, uint16* pId) PhoneToId;
				public new function HRESULT(ISpPhoneConverter *self, uint16* pId, PWSTR pszPhone) IdToPhone;
			}
		}
		[CRepr]
		public struct ISpPhoneticAlphabetConverter : IUnknown
		{
			public const new Guid IID = .(0x133adcd4, 0x19b4, 0x4020, 0x9f, 0xdc, 0x84, 0x2e, 0x78, 0x25, 0x3b, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLangId(uint16* pLangID) mut
			{
				return VT.GetLangId(&this, pLangID);
			}
			public HRESULT SetLangId(uint16 LangID) mut
			{
				return VT.SetLangId(&this, LangID);
			}
			public HRESULT SAPI2UPS(uint16* pszSAPIId, uint16* pszUPSId, uint32 cMaxLength) mut
			{
				return VT.SAPI2UPS(&this, pszSAPIId, pszUPSId, cMaxLength);
			}
			public HRESULT UPS2SAPI(uint16* pszUPSId, uint16* pszSAPIId, uint32 cMaxLength) mut
			{
				return VT.UPS2SAPI(&this, pszUPSId, pszSAPIId, cMaxLength);
			}
			public HRESULT GetMaxConvertLength(uint32 cSrcLength, BOOL bSAPI2UPS, uint32* pcMaxDestLength) mut
			{
				return VT.GetMaxConvertLength(&this, cSrcLength, bSAPI2UPS, pcMaxDestLength);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpPhoneticAlphabetConverter *self, uint16* pLangID) GetLangId;
				public new function HRESULT(ISpPhoneticAlphabetConverter *self, uint16 LangID) SetLangId;
				public new function HRESULT(ISpPhoneticAlphabetConverter *self, uint16* pszSAPIId, uint16* pszUPSId, uint32 cMaxLength) SAPI2UPS;
				public new function HRESULT(ISpPhoneticAlphabetConverter *self, uint16* pszUPSId, uint16* pszSAPIId, uint32 cMaxLength) UPS2SAPI;
				public new function HRESULT(ISpPhoneticAlphabetConverter *self, uint32 cSrcLength, BOOL bSAPI2UPS, uint32* pcMaxDestLength) GetMaxConvertLength;
			}
		}
		[CRepr]
		public struct ISpPhoneticAlphabetSelection : IUnknown
		{
			public const new Guid IID = .(0xb2745efd, 0x42ce, 0x48ca, 0x81, 0xf1, 0xa9, 0x6e, 0x02, 0x53, 0x8a, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsAlphabetUPS(BOOL* pfIsUPS) mut
			{
				return VT.IsAlphabetUPS(&this, pfIsUPS);
			}
			public HRESULT SetAlphabetToUPS(BOOL fForceUPS) mut
			{
				return VT.SetAlphabetToUPS(&this, fForceUPS);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpPhoneticAlphabetSelection *self, BOOL* pfIsUPS) IsAlphabetUPS;
				public new function HRESULT(ISpPhoneticAlphabetSelection *self, BOOL fForceUPS) SetAlphabetToUPS;
			}
		}
		[CRepr]
		public struct ISpVoice : ISpEventSource
		{
			public const new Guid IID = .(0x6c44df74, 0x72b9, 0x4992, 0xa1, 0xec, 0xef, 0x99, 0x6e, 0x04, 0x22, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutput(IUnknown* pUnkOutput, BOOL fAllowFormatChanges) mut
			{
				return VT.SetOutput(&this, pUnkOutput, fAllowFormatChanges);
			}
			public HRESULT GetOutputObjectToken(ISpObjectToken** ppObjectToken) mut
			{
				return VT.GetOutputObjectToken(&this, ppObjectToken);
			}
			public HRESULT GetOutputStream(ISpStreamFormat** ppStream) mut
			{
				return VT.GetOutputStream(&this, ppStream);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT SetVoice(ISpObjectToken* pToken) mut
			{
				return VT.SetVoice(&this, pToken);
			}
			public HRESULT GetVoice(ISpObjectToken** ppToken) mut
			{
				return VT.GetVoice(&this, ppToken);
			}
			public HRESULT Speak(PWSTR pwcs, uint32 dwFlags, uint32* pulStreamNumber) mut
			{
				return VT.Speak(&this, pwcs, dwFlags, pulStreamNumber);
			}
			public HRESULT SpeakStream(IStream* pStream, uint32 dwFlags, uint32* pulStreamNumber) mut
			{
				return VT.SpeakStream(&this, pStream, dwFlags, pulStreamNumber);
			}
			public HRESULT GetStatus(SPVOICESTATUS* pStatus, PWSTR* ppszLastBookmark) mut
			{
				return VT.GetStatus(&this, pStatus, ppszLastBookmark);
			}
			public HRESULT Skip(PWSTR pItemType, int32 lNumItems, uint32* pulNumSkipped) mut
			{
				return VT.Skip(&this, pItemType, lNumItems, pulNumSkipped);
			}
			public HRESULT SetPriority(SPVPRIORITY ePriority) mut
			{
				return VT.SetPriority(&this, ePriority);
			}
			public HRESULT GetPriority(SPVPRIORITY* pePriority) mut
			{
				return VT.GetPriority(&this, pePriority);
			}
			public HRESULT SetAlertBoundary(SPEVENTENUM eBoundary) mut
			{
				return VT.SetAlertBoundary(&this, eBoundary);
			}
			public HRESULT GetAlertBoundary(SPEVENTENUM* peBoundary) mut
			{
				return VT.GetAlertBoundary(&this, peBoundary);
			}
			public HRESULT SetRate(int32 RateAdjust) mut
			{
				return VT.SetRate(&this, RateAdjust);
			}
			public HRESULT GetRate(int32* pRateAdjust) mut
			{
				return VT.GetRate(&this, pRateAdjust);
			}
			public HRESULT SetVolume(uint16 usVolume) mut
			{
				return VT.SetVolume(&this, usVolume);
			}
			public HRESULT GetVolume(uint16* pusVolume) mut
			{
				return VT.GetVolume(&this, pusVolume);
			}
			public HRESULT WaitUntilDone(uint32 msTimeout) mut
			{
				return VT.WaitUntilDone(&this, msTimeout);
			}
			public HRESULT SetSyncSpeakTimeout(uint32 msTimeout) mut
			{
				return VT.SetSyncSpeakTimeout(&this, msTimeout);
			}
			public HRESULT GetSyncSpeakTimeout(uint32* pmsTimeout) mut
			{
				return VT.GetSyncSpeakTimeout(&this, pmsTimeout);
			}
			public HANDLE SpeakCompleteEvent() mut
			{
				return VT.SpeakCompleteEvent(&this);
			}
			public HRESULT IsUISupported(PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, BOOL* pfSupported) mut
			{
				return VT.IsUISupported(&this, pszTypeOfUI, pvExtraData, cbExtraData, pfSupported);
			}
			public HRESULT DisplayUI(HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) mut
			{
				return VT.DisplayUI(&this, hwndParent, pszTitle, pszTypeOfUI, pvExtraData, cbExtraData);
			}
			[CRepr]
			public struct VTable : ISpEventSource.VTable
			{
				public new function HRESULT(ISpVoice *self, IUnknown* pUnkOutput, BOOL fAllowFormatChanges) SetOutput;
				public new function HRESULT(ISpVoice *self, ISpObjectToken** ppObjectToken) GetOutputObjectToken;
				public new function HRESULT(ISpVoice *self, ISpStreamFormat** ppStream) GetOutputStream;
				public new function HRESULT(ISpVoice *self) Pause;
				public new function HRESULT(ISpVoice *self) Resume;
				public new function HRESULT(ISpVoice *self, ISpObjectToken* pToken) SetVoice;
				public new function HRESULT(ISpVoice *self, ISpObjectToken** ppToken) GetVoice;
				public new function HRESULT(ISpVoice *self, PWSTR pwcs, uint32 dwFlags, uint32* pulStreamNumber) Speak;
				public new function HRESULT(ISpVoice *self, IStream* pStream, uint32 dwFlags, uint32* pulStreamNumber) SpeakStream;
				public new function HRESULT(ISpVoice *self, SPVOICESTATUS* pStatus, PWSTR* ppszLastBookmark) GetStatus;
				public new function HRESULT(ISpVoice *self, PWSTR pItemType, int32 lNumItems, uint32* pulNumSkipped) Skip;
				public new function HRESULT(ISpVoice *self, SPVPRIORITY ePriority) SetPriority;
				public new function HRESULT(ISpVoice *self, SPVPRIORITY* pePriority) GetPriority;
				public new function HRESULT(ISpVoice *self, SPEVENTENUM eBoundary) SetAlertBoundary;
				public new function HRESULT(ISpVoice *self, SPEVENTENUM* peBoundary) GetAlertBoundary;
				public new function HRESULT(ISpVoice *self, int32 RateAdjust) SetRate;
				public new function HRESULT(ISpVoice *self, int32* pRateAdjust) GetRate;
				public new function HRESULT(ISpVoice *self, uint16 usVolume) SetVolume;
				public new function HRESULT(ISpVoice *self, uint16* pusVolume) GetVolume;
				public new function HRESULT(ISpVoice *self, uint32 msTimeout) WaitUntilDone;
				public new function HRESULT(ISpVoice *self, uint32 msTimeout) SetSyncSpeakTimeout;
				public new function HRESULT(ISpVoice *self, uint32* pmsTimeout) GetSyncSpeakTimeout;
				public new function HANDLE(ISpVoice *self) SpeakCompleteEvent;
				public new function HRESULT(ISpVoice *self, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, BOOL* pfSupported) IsUISupported;
				public new function HRESULT(ISpVoice *self, HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) DisplayUI;
			}
		}
		[CRepr]
		public struct ISpPhrase : IUnknown
		{
			public const new Guid IID = .(0x1a5c0354, 0xb621, 0x4b5a, 0x87, 0x91, 0xd3, 0x06, 0xed, 0x37, 0x9e, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPhrase(SPPHRASE** ppCoMemPhrase) mut
			{
				return VT.GetPhrase(&this, ppCoMemPhrase);
			}
			public HRESULT GetSerializedPhrase(SPSERIALIZEDPHRASE** ppCoMemPhrase) mut
			{
				return VT.GetSerializedPhrase(&this, ppCoMemPhrase);
			}
			public HRESULT GetText(uint32 ulStart, uint32 ulCount, BOOL fUseTextReplacements, PWSTR* ppszCoMemText, uint8* pbDisplayAttributes) mut
			{
				return VT.GetText(&this, ulStart, ulCount, fUseTextReplacements, ppszCoMemText, pbDisplayAttributes);
			}
			public HRESULT Discard(uint32 dwValueTypes) mut
			{
				return VT.Discard(&this, dwValueTypes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpPhrase *self, SPPHRASE** ppCoMemPhrase) GetPhrase;
				public new function HRESULT(ISpPhrase *self, SPSERIALIZEDPHRASE** ppCoMemPhrase) GetSerializedPhrase;
				public new function HRESULT(ISpPhrase *self, uint32 ulStart, uint32 ulCount, BOOL fUseTextReplacements, PWSTR* ppszCoMemText, uint8* pbDisplayAttributes) GetText;
				public new function HRESULT(ISpPhrase *self, uint32 dwValueTypes) Discard;
			}
		}
		[CRepr]
		public struct ISpPhraseAlt : ISpPhrase
		{
			public const new Guid IID = .(0x8fcebc98, 0x4e49, 0x4067, 0x9c, 0x6c, 0xd8, 0x6a, 0x0e, 0x09, 0x2e, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAltInfo(ISpPhrase** ppParent, uint32* pulStartElementInParent, uint32* pcElementsInParent, uint32* pcElementsInAlt) mut
			{
				return VT.GetAltInfo(&this, ppParent, pulStartElementInParent, pcElementsInParent, pcElementsInAlt);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			[CRepr]
			public struct VTable : ISpPhrase.VTable
			{
				public new function HRESULT(ISpPhraseAlt *self, ISpPhrase** ppParent, uint32* pulStartElementInParent, uint32* pcElementsInParent, uint32* pcElementsInAlt) GetAltInfo;
				public new function HRESULT(ISpPhraseAlt *self) Commit;
			}
		}
		[CRepr]
		public struct ISpPhrase2 : ISpPhrase
		{
			public const new Guid IID = .(0xf264da52, 0xe457, 0x4696, 0xb8, 0x56, 0xa7, 0x37, 0xb7, 0x17, 0xaf, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXMLResult(PWSTR* ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) mut
			{
				return VT.GetXMLResult(&this, ppszCoMemXMLResult, Options);
			}
			public HRESULT GetXMLErrorInfo(SPSEMANTICERRORINFO* pSemanticErrorInfo) mut
			{
				return VT.GetXMLErrorInfo(&this, pSemanticErrorInfo);
			}
			public HRESULT GetAudio(uint32 ulStartElement, uint32 cElements, ISpStreamFormat** ppStream) mut
			{
				return VT.GetAudio(&this, ulStartElement, cElements, ppStream);
			}
			[CRepr]
			public struct VTable : ISpPhrase.VTable
			{
				public new function HRESULT(ISpPhrase2 *self, PWSTR* ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) GetXMLResult;
				public new function HRESULT(ISpPhrase2 *self, SPSEMANTICERRORINFO* pSemanticErrorInfo) GetXMLErrorInfo;
				public new function HRESULT(ISpPhrase2 *self, uint32 ulStartElement, uint32 cElements, ISpStreamFormat** ppStream) GetAudio;
			}
		}
		[CRepr]
		public struct ISpRecoResult : ISpPhrase
		{
			public const new Guid IID = .(0x20b053be, 0xe235, 0x43cd, 0x9a, 0x2a, 0x8d, 0x17, 0xa4, 0x8b, 0x78, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResultTimes(SPRECORESULTTIMES* pTimes) mut
			{
				return VT.GetResultTimes(&this, pTimes);
			}
			public HRESULT GetAlternates(uint32 ulStartElement, uint32 cElements, uint32 ulRequestCount, ISpPhraseAlt** ppPhrases, uint32* pcPhrasesReturned) mut
			{
				return VT.GetAlternates(&this, ulStartElement, cElements, ulRequestCount, ppPhrases, pcPhrasesReturned);
			}
			public HRESULT GetAudio(uint32 ulStartElement, uint32 cElements, ISpStreamFormat** ppStream) mut
			{
				return VT.GetAudio(&this, ulStartElement, cElements, ppStream);
			}
			public HRESULT SpeakAudio(uint32 ulStartElement, uint32 cElements, uint32 dwFlags, uint32* pulStreamNumber) mut
			{
				return VT.SpeakAudio(&this, ulStartElement, cElements, dwFlags, pulStreamNumber);
			}
			public HRESULT Serialize(SPSERIALIZEDRESULT** ppCoMemSerializedResult) mut
			{
				return VT.Serialize(&this, ppCoMemSerializedResult);
			}
			public HRESULT ScaleAudio(Guid* pAudioFormatId, WAVEFORMATEX* pWaveFormatEx) mut
			{
				return VT.ScaleAudio(&this, pAudioFormatId, pWaveFormatEx);
			}
			public HRESULT GetRecoContext(ISpRecoContext** ppRecoContext) mut
			{
				return VT.GetRecoContext(&this, ppRecoContext);
			}
			[CRepr]
			public struct VTable : ISpPhrase.VTable
			{
				public new function HRESULT(ISpRecoResult *self, SPRECORESULTTIMES* pTimes) GetResultTimes;
				public new function HRESULT(ISpRecoResult *self, uint32 ulStartElement, uint32 cElements, uint32 ulRequestCount, ISpPhraseAlt** ppPhrases, uint32* pcPhrasesReturned) GetAlternates;
				public new function HRESULT(ISpRecoResult *self, uint32 ulStartElement, uint32 cElements, ISpStreamFormat** ppStream) GetAudio;
				public new function HRESULT(ISpRecoResult *self, uint32 ulStartElement, uint32 cElements, uint32 dwFlags, uint32* pulStreamNumber) SpeakAudio;
				public new function HRESULT(ISpRecoResult *self, SPSERIALIZEDRESULT** ppCoMemSerializedResult) Serialize;
				public new function HRESULT(ISpRecoResult *self, Guid* pAudioFormatId, WAVEFORMATEX* pWaveFormatEx) ScaleAudio;
				public new function HRESULT(ISpRecoResult *self, ISpRecoContext** ppRecoContext) GetRecoContext;
			}
		}
		[CRepr]
		public struct ISpRecoResult2 : ISpRecoResult
		{
			public const new Guid IID = .(0x27cac6c4, 0x88f2, 0x41f2, 0x88, 0x17, 0x0c, 0x95, 0xe5, 0x9f, 0x1e, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CommitAlternate(ISpPhraseAlt* pPhraseAlt, ISpRecoResult** ppNewResult) mut
			{
				return VT.CommitAlternate(&this, pPhraseAlt, ppNewResult);
			}
			public HRESULT CommitText(uint32 ulStartElement, uint32 cElements, PWSTR pszCorrectedData, uint32 eCommitFlags) mut
			{
				return VT.CommitText(&this, ulStartElement, cElements, pszCorrectedData, eCommitFlags);
			}
			public HRESULT SetTextFeedback(PWSTR pszFeedback, BOOL fSuccessful) mut
			{
				return VT.SetTextFeedback(&this, pszFeedback, fSuccessful);
			}
			[CRepr]
			public struct VTable : ISpRecoResult.VTable
			{
				public new function HRESULT(ISpRecoResult2 *self, ISpPhraseAlt* pPhraseAlt, ISpRecoResult** ppNewResult) CommitAlternate;
				public new function HRESULT(ISpRecoResult2 *self, uint32 ulStartElement, uint32 cElements, PWSTR pszCorrectedData, uint32 eCommitFlags) CommitText;
				public new function HRESULT(ISpRecoResult2 *self, PWSTR pszFeedback, BOOL fSuccessful) SetTextFeedback;
			}
		}
		[CRepr]
		public struct ISpXMLRecoResult : ISpRecoResult
		{
			public const new Guid IID = .(0xae39362b, 0x45a8, 0x4074, 0x9b, 0x9e, 0xcc, 0xf4, 0x9a, 0xa2, 0xd0, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXMLResult(PWSTR* ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) mut
			{
				return VT.GetXMLResult(&this, ppszCoMemXMLResult, Options);
			}
			public HRESULT GetXMLErrorInfo(SPSEMANTICERRORINFO* pSemanticErrorInfo) mut
			{
				return VT.GetXMLErrorInfo(&this, pSemanticErrorInfo);
			}
			[CRepr]
			public struct VTable : ISpRecoResult.VTable
			{
				public new function HRESULT(ISpXMLRecoResult *self, PWSTR* ppszCoMemXMLResult, SPXMLRESULTOPTIONS Options) GetXMLResult;
				public new function HRESULT(ISpXMLRecoResult *self, SPSEMANTICERRORINFO* pSemanticErrorInfo) GetXMLErrorInfo;
			}
		}
		[CRepr]
		public struct ISpGrammarBuilder : IUnknown
		{
			public const new Guid IID = .(0x8137828f, 0x591a, 0x4a42, 0xbe, 0x58, 0x49, 0xea, 0x7e, 0xba, 0xac, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetGrammar(uint16 NewLanguage) mut
			{
				return VT.ResetGrammar(&this, NewLanguage);
			}
			public HRESULT GetRule(PWSTR pszRuleName, uint32 dwRuleId, uint32 dwAttributes, BOOL fCreateIfNotExist, SPSTATEHANDLE__** phInitialState) mut
			{
				return VT.GetRule(&this, pszRuleName, dwRuleId, dwAttributes, fCreateIfNotExist, phInitialState);
			}
			public HRESULT ClearRule(SPSTATEHANDLE__* hState) mut
			{
				return VT.ClearRule(&this, hState);
			}
			public HRESULT CreateNewState(SPSTATEHANDLE__* hState, SPSTATEHANDLE__** phState) mut
			{
				return VT.CreateNewState(&this, hState, phState);
			}
			public HRESULT AddWordTransition(SPSTATEHANDLE__* hFromState, SPSTATEHANDLE__* hToState, PWSTR psz, PWSTR pszSeparators, SPGRAMMARWORDTYPE eWordType, float Weight, SPPROPERTYINFO* pPropInfo) mut
			{
				return VT.AddWordTransition(&this, hFromState, hToState, psz, pszSeparators, eWordType, Weight, pPropInfo);
			}
			public HRESULT AddRuleTransition(SPSTATEHANDLE__* hFromState, SPSTATEHANDLE__* hToState, SPSTATEHANDLE__* hRule, float Weight, SPPROPERTYINFO* pPropInfo) mut
			{
				return VT.AddRuleTransition(&this, hFromState, hToState, hRule, Weight, pPropInfo);
			}
			public HRESULT AddResource(SPSTATEHANDLE__* hRuleState, PWSTR pszResourceName, PWSTR pszResourceValue) mut
			{
				return VT.AddResource(&this, hRuleState, pszResourceName, pszResourceValue);
			}
			public HRESULT Commit(uint32 dwReserved) mut
			{
				return VT.Commit(&this, dwReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpGrammarBuilder *self, uint16 NewLanguage) ResetGrammar;
				public new function HRESULT(ISpGrammarBuilder *self, PWSTR pszRuleName, uint32 dwRuleId, uint32 dwAttributes, BOOL fCreateIfNotExist, SPSTATEHANDLE__** phInitialState) GetRule;
				public new function HRESULT(ISpGrammarBuilder *self, SPSTATEHANDLE__* hState) ClearRule;
				public new function HRESULT(ISpGrammarBuilder *self, SPSTATEHANDLE__* hState, SPSTATEHANDLE__** phState) CreateNewState;
				public new function HRESULT(ISpGrammarBuilder *self, SPSTATEHANDLE__* hFromState, SPSTATEHANDLE__* hToState, PWSTR psz, PWSTR pszSeparators, SPGRAMMARWORDTYPE eWordType, float Weight, SPPROPERTYINFO* pPropInfo) AddWordTransition;
				public new function HRESULT(ISpGrammarBuilder *self, SPSTATEHANDLE__* hFromState, SPSTATEHANDLE__* hToState, SPSTATEHANDLE__* hRule, float Weight, SPPROPERTYINFO* pPropInfo) AddRuleTransition;
				public new function HRESULT(ISpGrammarBuilder *self, SPSTATEHANDLE__* hRuleState, PWSTR pszResourceName, PWSTR pszResourceValue) AddResource;
				public new function HRESULT(ISpGrammarBuilder *self, uint32 dwReserved) Commit;
			}
		}
		[CRepr]
		public struct ISpRecoGrammar : ISpGrammarBuilder
		{
			public const new Guid IID = .(0x2177db29, 0x7f45, 0x47d0, 0x85, 0x54, 0x06, 0x7e, 0x91, 0xc8, 0x05, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGrammarId(uint64* pullGrammarId) mut
			{
				return VT.GetGrammarId(&this, pullGrammarId);
			}
			public HRESULT GetRecoContext(ISpRecoContext** ppRecoCtxt) mut
			{
				return VT.GetRecoContext(&this, ppRecoCtxt);
			}
			public HRESULT LoadCmdFromFile(PWSTR pszFileName, SPLOADOPTIONS Options) mut
			{
				return VT.LoadCmdFromFile(&this, pszFileName, Options);
			}
			public HRESULT LoadCmdFromObject(Guid* rcid, PWSTR pszGrammarName, SPLOADOPTIONS Options) mut
			{
				return VT.LoadCmdFromObject(&this, rcid, pszGrammarName, Options);
			}
			public HRESULT LoadCmdFromResource(HINSTANCE hModule, PWSTR pszResourceName, PWSTR pszResourceType, uint16 wLanguage, SPLOADOPTIONS Options) mut
			{
				return VT.LoadCmdFromResource(&this, hModule, pszResourceName, pszResourceType, wLanguage, Options);
			}
			public HRESULT LoadCmdFromMemory(SPBINARYGRAMMAR* pGrammar, SPLOADOPTIONS Options) mut
			{
				return VT.LoadCmdFromMemory(&this, pGrammar, Options);
			}
			public HRESULT LoadCmdFromProprietaryGrammar(Guid* rguidParam, PWSTR pszStringParam, void* pvDataPrarm, uint32 cbDataSize, SPLOADOPTIONS Options) mut
			{
				return VT.LoadCmdFromProprietaryGrammar(&this, rguidParam, pszStringParam, pvDataPrarm, cbDataSize, Options);
			}
			public HRESULT SetRuleState(PWSTR pszName, void* pReserved, SPRULESTATE NewState) mut
			{
				return VT.SetRuleState(&this, pszName, pReserved, NewState);
			}
			public HRESULT SetRuleIdState(uint32 ulRuleId, SPRULESTATE NewState) mut
			{
				return VT.SetRuleIdState(&this, ulRuleId, NewState);
			}
			public HRESULT LoadDictation(PWSTR pszTopicName, SPLOADOPTIONS Options) mut
			{
				return VT.LoadDictation(&this, pszTopicName, Options);
			}
			public HRESULT UnloadDictation() mut
			{
				return VT.UnloadDictation(&this);
			}
			public HRESULT SetDictationState(SPRULESTATE NewState) mut
			{
				return VT.SetDictationState(&this, NewState);
			}
			public HRESULT SetWordSequenceData(char16* pText, uint32 cchText, SPTEXTSELECTIONINFO* pInfo) mut
			{
				return VT.SetWordSequenceData(&this, pText, cchText, pInfo);
			}
			public HRESULT SetTextSelection(SPTEXTSELECTIONINFO* pInfo) mut
			{
				return VT.SetTextSelection(&this, pInfo);
			}
			public HRESULT IsPronounceable(PWSTR pszWord, SPWORDPRONOUNCEABLE* pWordPronounceable) mut
			{
				return VT.IsPronounceable(&this, pszWord, pWordPronounceable);
			}
			public HRESULT SetGrammarState(SPGRAMMARSTATE eGrammarState) mut
			{
				return VT.SetGrammarState(&this, eGrammarState);
			}
			public HRESULT SaveCmd(IStream* pStream, PWSTR* ppszCoMemErrorText) mut
			{
				return VT.SaveCmd(&this, pStream, ppszCoMemErrorText);
			}
			public HRESULT GetGrammarState(SPGRAMMARSTATE* peGrammarState) mut
			{
				return VT.GetGrammarState(&this, peGrammarState);
			}
			[CRepr]
			public struct VTable : ISpGrammarBuilder.VTable
			{
				public new function HRESULT(ISpRecoGrammar *self, uint64* pullGrammarId) GetGrammarId;
				public new function HRESULT(ISpRecoGrammar *self, ISpRecoContext** ppRecoCtxt) GetRecoContext;
				public new function HRESULT(ISpRecoGrammar *self, PWSTR pszFileName, SPLOADOPTIONS Options) LoadCmdFromFile;
				public new function HRESULT(ISpRecoGrammar *self, Guid* rcid, PWSTR pszGrammarName, SPLOADOPTIONS Options) LoadCmdFromObject;
				public new function HRESULT(ISpRecoGrammar *self, HINSTANCE hModule, PWSTR pszResourceName, PWSTR pszResourceType, uint16 wLanguage, SPLOADOPTIONS Options) LoadCmdFromResource;
				public new function HRESULT(ISpRecoGrammar *self, SPBINARYGRAMMAR* pGrammar, SPLOADOPTIONS Options) LoadCmdFromMemory;
				public new function HRESULT(ISpRecoGrammar *self, Guid* rguidParam, PWSTR pszStringParam, void* pvDataPrarm, uint32 cbDataSize, SPLOADOPTIONS Options) LoadCmdFromProprietaryGrammar;
				public new function HRESULT(ISpRecoGrammar *self, PWSTR pszName, void* pReserved, SPRULESTATE NewState) SetRuleState;
				public new function HRESULT(ISpRecoGrammar *self, uint32 ulRuleId, SPRULESTATE NewState) SetRuleIdState;
				public new function HRESULT(ISpRecoGrammar *self, PWSTR pszTopicName, SPLOADOPTIONS Options) LoadDictation;
				public new function HRESULT(ISpRecoGrammar *self) UnloadDictation;
				public new function HRESULT(ISpRecoGrammar *self, SPRULESTATE NewState) SetDictationState;
				public new function HRESULT(ISpRecoGrammar *self, char16* pText, uint32 cchText, SPTEXTSELECTIONINFO* pInfo) SetWordSequenceData;
				public new function HRESULT(ISpRecoGrammar *self, SPTEXTSELECTIONINFO* pInfo) SetTextSelection;
				public new function HRESULT(ISpRecoGrammar *self, PWSTR pszWord, SPWORDPRONOUNCEABLE* pWordPronounceable) IsPronounceable;
				public new function HRESULT(ISpRecoGrammar *self, SPGRAMMARSTATE eGrammarState) SetGrammarState;
				public new function HRESULT(ISpRecoGrammar *self, IStream* pStream, PWSTR* ppszCoMemErrorText) SaveCmd;
				public new function HRESULT(ISpRecoGrammar *self, SPGRAMMARSTATE* peGrammarState) GetGrammarState;
			}
		}
		[CRepr]
		public struct ISpGrammarBuilder2 : IUnknown
		{
			public const new Guid IID = .(0x8ab10026, 0x20cc, 0x4b20, 0x8c, 0x22, 0xa4, 0x9c, 0x9b, 0xa7, 0x8f, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTextSubset(SPSTATEHANDLE__* hFromState, SPSTATEHANDLE__* hToState, PWSTR psz, SPMATCHINGMODE eMatchMode) mut
			{
				return VT.AddTextSubset(&this, hFromState, hToState, psz, eMatchMode);
			}
			public HRESULT SetPhoneticAlphabet(PHONETICALPHABET phoneticALphabet) mut
			{
				return VT.SetPhoneticAlphabet(&this, phoneticALphabet);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpGrammarBuilder2 *self, SPSTATEHANDLE__* hFromState, SPSTATEHANDLE__* hToState, PWSTR psz, SPMATCHINGMODE eMatchMode) AddTextSubset;
				public new function HRESULT(ISpGrammarBuilder2 *self, PHONETICALPHABET phoneticALphabet) SetPhoneticAlphabet;
			}
		}
		[CRepr]
		public struct ISpRecoGrammar2 : IUnknown
		{
			public const new Guid IID = .(0x4b37bc9e, 0x9ed6, 0x44a3, 0x93, 0xd3, 0x18, 0xf0, 0x22, 0xb7, 0x9e, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRules(SPRULE** ppCoMemRules, uint32* puNumRules) mut
			{
				return VT.GetRules(&this, ppCoMemRules, puNumRules);
			}
			public HRESULT LoadCmdFromFile2(PWSTR pszFileName, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) mut
			{
				return VT.LoadCmdFromFile2(&this, pszFileName, Options, pszSharingUri, pszBaseUri);
			}
			public HRESULT LoadCmdFromMemory2(SPBINARYGRAMMAR* pGrammar, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) mut
			{
				return VT.LoadCmdFromMemory2(&this, pGrammar, Options, pszSharingUri, pszBaseUri);
			}
			public HRESULT SetRulePriority(PWSTR pszRuleName, uint32 ulRuleId, int32 nRulePriority) mut
			{
				return VT.SetRulePriority(&this, pszRuleName, ulRuleId, nRulePriority);
			}
			public HRESULT SetRuleWeight(PWSTR pszRuleName, uint32 ulRuleId, float flWeight) mut
			{
				return VT.SetRuleWeight(&this, pszRuleName, ulRuleId, flWeight);
			}
			public HRESULT SetDictationWeight(float flWeight) mut
			{
				return VT.SetDictationWeight(&this, flWeight);
			}
			public HRESULT SetGrammarLoader(ISpeechResourceLoader* pLoader) mut
			{
				return VT.SetGrammarLoader(&this, pLoader);
			}
			public HRESULT SetSMLSecurityManager(IInternetSecurityManager* pSMLSecurityManager) mut
			{
				return VT.SetSMLSecurityManager(&this, pSMLSecurityManager);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpRecoGrammar2 *self, SPRULE** ppCoMemRules, uint32* puNumRules) GetRules;
				public new function HRESULT(ISpRecoGrammar2 *self, PWSTR pszFileName, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) LoadCmdFromFile2;
				public new function HRESULT(ISpRecoGrammar2 *self, SPBINARYGRAMMAR* pGrammar, SPLOADOPTIONS Options, PWSTR pszSharingUri, PWSTR pszBaseUri) LoadCmdFromMemory2;
				public new function HRESULT(ISpRecoGrammar2 *self, PWSTR pszRuleName, uint32 ulRuleId, int32 nRulePriority) SetRulePriority;
				public new function HRESULT(ISpRecoGrammar2 *self, PWSTR pszRuleName, uint32 ulRuleId, float flWeight) SetRuleWeight;
				public new function HRESULT(ISpRecoGrammar2 *self, float flWeight) SetDictationWeight;
				public new function HRESULT(ISpRecoGrammar2 *self, ISpeechResourceLoader* pLoader) SetGrammarLoader;
				public new function HRESULT(ISpRecoGrammar2 *self, IInternetSecurityManager* pSMLSecurityManager) SetSMLSecurityManager;
			}
		}
		[CRepr]
		public struct ISpeechResourceLoader : IDispatch
		{
			public const new Guid IID = .(0xb9ac5783, 0xfcd0, 0x4b21, 0xb1, 0x19, 0xb4, 0xf8, 0xda, 0x8f, 0xd2, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadResource(BSTR bstrResourceUri, int16 fAlwaysReload, IUnknown** pStream, BSTR* pbstrMIMEType, int16* pfModified, BSTR* pbstrRedirectUrl) mut
			{
				return VT.LoadResource(&this, bstrResourceUri, fAlwaysReload, pStream, pbstrMIMEType, pfModified, pbstrRedirectUrl);
			}
			public HRESULT GetLocalCopy(BSTR bstrResourceUri, BSTR* pbstrLocalPath, BSTR* pbstrMIMEType, BSTR* pbstrRedirectUrl) mut
			{
				return VT.GetLocalCopy(&this, bstrResourceUri, pbstrLocalPath, pbstrMIMEType, pbstrRedirectUrl);
			}
			public HRESULT ReleaseLocalCopy(BSTR pbstrLocalPath) mut
			{
				return VT.ReleaseLocalCopy(&this, pbstrLocalPath);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechResourceLoader *self, BSTR bstrResourceUri, int16 fAlwaysReload, IUnknown** pStream, BSTR* pbstrMIMEType, int16* pfModified, BSTR* pbstrRedirectUrl) LoadResource;
				public new function HRESULT(ISpeechResourceLoader *self, BSTR bstrResourceUri, BSTR* pbstrLocalPath, BSTR* pbstrMIMEType, BSTR* pbstrRedirectUrl) GetLocalCopy;
				public new function HRESULT(ISpeechResourceLoader *self, BSTR pbstrLocalPath) ReleaseLocalCopy;
			}
		}
		[CRepr]
		public struct ISpRecoContext : ISpEventSource
		{
			public const new Guid IID = .(0xf740a62f, 0x7c15, 0x489e, 0x82, 0x34, 0x94, 0x0a, 0x33, 0xd9, 0x27, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRecognizer(ISpRecognizer** ppRecognizer) mut
			{
				return VT.GetRecognizer(&this, ppRecognizer);
			}
			public HRESULT CreateGrammar(uint64 ullGrammarId, ISpRecoGrammar** ppGrammar) mut
			{
				return VT.CreateGrammar(&this, ullGrammarId, ppGrammar);
			}
			public HRESULT GetStatus(SPRECOCONTEXTSTATUS* pStatus) mut
			{
				return VT.GetStatus(&this, pStatus);
			}
			public HRESULT GetMaxAlternates(uint32* pcAlternates) mut
			{
				return VT.GetMaxAlternates(&this, pcAlternates);
			}
			public HRESULT SetMaxAlternates(uint32 cAlternates) mut
			{
				return VT.SetMaxAlternates(&this, cAlternates);
			}
			public HRESULT SetAudioOptions(SPAUDIOOPTIONS Options, Guid* pAudioFormatId, WAVEFORMATEX* pWaveFormatEx) mut
			{
				return VT.SetAudioOptions(&this, Options, pAudioFormatId, pWaveFormatEx);
			}
			public HRESULT GetAudioOptions(SPAUDIOOPTIONS* pOptions, Guid* pAudioFormatId, WAVEFORMATEX** ppCoMemWFEX) mut
			{
				return VT.GetAudioOptions(&this, pOptions, pAudioFormatId, ppCoMemWFEX);
			}
			public HRESULT DeserializeResult(SPSERIALIZEDRESULT* pSerializedResult, ISpRecoResult** ppResult) mut
			{
				return VT.DeserializeResult(&this, pSerializedResult, ppResult);
			}
			public HRESULT Bookmark(SPBOOKMARKOPTIONS Options, uint64 ullStreamPosition, LPARAM lparamEvent) mut
			{
				return VT.Bookmark(&this, Options, ullStreamPosition, lparamEvent);
			}
			public HRESULT SetAdaptationData(PWSTR pAdaptationData, uint32 cch) mut
			{
				return VT.SetAdaptationData(&this, pAdaptationData, cch);
			}
			public HRESULT Pause(uint32 dwReserved) mut
			{
				return VT.Pause(&this, dwReserved);
			}
			public HRESULT Resume(uint32 dwReserved) mut
			{
				return VT.Resume(&this, dwReserved);
			}
			public HRESULT SetVoice(ISpVoice* pVoice, BOOL fAllowFormatChanges) mut
			{
				return VT.SetVoice(&this, pVoice, fAllowFormatChanges);
			}
			public HRESULT GetVoice(ISpVoice** ppVoice) mut
			{
				return VT.GetVoice(&this, ppVoice);
			}
			public HRESULT SetVoicePurgeEvent(uint64 ullEventInterest) mut
			{
				return VT.SetVoicePurgeEvent(&this, ullEventInterest);
			}
			public HRESULT GetVoicePurgeEvent(uint64* pullEventInterest) mut
			{
				return VT.GetVoicePurgeEvent(&this, pullEventInterest);
			}
			public HRESULT SetContextState(SPCONTEXTSTATE eContextState) mut
			{
				return VT.SetContextState(&this, eContextState);
			}
			public HRESULT GetContextState(SPCONTEXTSTATE* peContextState) mut
			{
				return VT.GetContextState(&this, peContextState);
			}
			[CRepr]
			public struct VTable : ISpEventSource.VTable
			{
				public new function HRESULT(ISpRecoContext *self, ISpRecognizer** ppRecognizer) GetRecognizer;
				public new function HRESULT(ISpRecoContext *self, uint64 ullGrammarId, ISpRecoGrammar** ppGrammar) CreateGrammar;
				public new function HRESULT(ISpRecoContext *self, SPRECOCONTEXTSTATUS* pStatus) GetStatus;
				public new function HRESULT(ISpRecoContext *self, uint32* pcAlternates) GetMaxAlternates;
				public new function HRESULT(ISpRecoContext *self, uint32 cAlternates) SetMaxAlternates;
				public new function HRESULT(ISpRecoContext *self, SPAUDIOOPTIONS Options, Guid* pAudioFormatId, WAVEFORMATEX* pWaveFormatEx) SetAudioOptions;
				public new function HRESULT(ISpRecoContext *self, SPAUDIOOPTIONS* pOptions, Guid* pAudioFormatId, WAVEFORMATEX** ppCoMemWFEX) GetAudioOptions;
				public new function HRESULT(ISpRecoContext *self, SPSERIALIZEDRESULT* pSerializedResult, ISpRecoResult** ppResult) DeserializeResult;
				public new function HRESULT(ISpRecoContext *self, SPBOOKMARKOPTIONS Options, uint64 ullStreamPosition, LPARAM lparamEvent) Bookmark;
				public new function HRESULT(ISpRecoContext *self, PWSTR pAdaptationData, uint32 cch) SetAdaptationData;
				public new function HRESULT(ISpRecoContext *self, uint32 dwReserved) Pause;
				public new function HRESULT(ISpRecoContext *self, uint32 dwReserved) Resume;
				public new function HRESULT(ISpRecoContext *self, ISpVoice* pVoice, BOOL fAllowFormatChanges) SetVoice;
				public new function HRESULT(ISpRecoContext *self, ISpVoice** ppVoice) GetVoice;
				public new function HRESULT(ISpRecoContext *self, uint64 ullEventInterest) SetVoicePurgeEvent;
				public new function HRESULT(ISpRecoContext *self, uint64* pullEventInterest) GetVoicePurgeEvent;
				public new function HRESULT(ISpRecoContext *self, SPCONTEXTSTATE eContextState) SetContextState;
				public new function HRESULT(ISpRecoContext *self, SPCONTEXTSTATE* peContextState) GetContextState;
			}
		}
		[CRepr]
		public struct ISpRecoContext2 : IUnknown
		{
			public const new Guid IID = .(0xbead311c, 0x52ff, 0x437f, 0x94, 0x64, 0x6b, 0x21, 0x05, 0x4c, 0xa7, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGrammarOptions(uint32 eGrammarOptions) mut
			{
				return VT.SetGrammarOptions(&this, eGrammarOptions);
			}
			public HRESULT GetGrammarOptions(uint32* peGrammarOptions) mut
			{
				return VT.GetGrammarOptions(&this, peGrammarOptions);
			}
			public HRESULT SetAdaptationData2(PWSTR pAdaptationData, uint32 cch, PWSTR pTopicName, uint32 eAdaptationSettings, SPADAPTATIONRELEVANCE eRelevance) mut
			{
				return VT.SetAdaptationData2(&this, pAdaptationData, cch, pTopicName, eAdaptationSettings, eRelevance);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpRecoContext2 *self, uint32 eGrammarOptions) SetGrammarOptions;
				public new function HRESULT(ISpRecoContext2 *self, uint32* peGrammarOptions) GetGrammarOptions;
				public new function HRESULT(ISpRecoContext2 *self, PWSTR pAdaptationData, uint32 cch, PWSTR pTopicName, uint32 eAdaptationSettings, SPADAPTATIONRELEVANCE eRelevance) SetAdaptationData2;
			}
		}
		[CRepr]
		public struct ISpProperties : IUnknown
		{
			public const new Guid IID = .(0x5b4fb971, 0xb115, 0x4de1, 0xad, 0x97, 0xe4, 0x82, 0xe3, 0xbf, 0x6e, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPropertyNum(PWSTR pName, int32 lValue) mut
			{
				return VT.SetPropertyNum(&this, pName, lValue);
			}
			public HRESULT GetPropertyNum(PWSTR pName, int32* plValue) mut
			{
				return VT.GetPropertyNum(&this, pName, plValue);
			}
			public HRESULT SetPropertyString(PWSTR pName, PWSTR pValue) mut
			{
				return VT.SetPropertyString(&this, pName, pValue);
			}
			public HRESULT GetPropertyString(PWSTR pName, PWSTR* ppCoMemValue) mut
			{
				return VT.GetPropertyString(&this, pName, ppCoMemValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpProperties *self, PWSTR pName, int32 lValue) SetPropertyNum;
				public new function HRESULT(ISpProperties *self, PWSTR pName, int32* plValue) GetPropertyNum;
				public new function HRESULT(ISpProperties *self, PWSTR pName, PWSTR pValue) SetPropertyString;
				public new function HRESULT(ISpProperties *self, PWSTR pName, PWSTR* ppCoMemValue) GetPropertyString;
			}
		}
		[CRepr]
		public struct ISpRecognizer : ISpProperties
		{
			public const new Guid IID = .(0xc2b5f241, 0xdaa0, 0x4507, 0x9e, 0x16, 0x5a, 0x1e, 0xaa, 0x2b, 0x7a, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRecognizer(ISpObjectToken* pRecognizer) mut
			{
				return VT.SetRecognizer(&this, pRecognizer);
			}
			public HRESULT GetRecognizer(ISpObjectToken** ppRecognizer) mut
			{
				return VT.GetRecognizer(&this, ppRecognizer);
			}
			public HRESULT SetInput(IUnknown* pUnkInput, BOOL fAllowFormatChanges) mut
			{
				return VT.SetInput(&this, pUnkInput, fAllowFormatChanges);
			}
			public HRESULT GetInputObjectToken(ISpObjectToken** ppToken) mut
			{
				return VT.GetInputObjectToken(&this, ppToken);
			}
			public HRESULT GetInputStream(ISpStreamFormat** ppStream) mut
			{
				return VT.GetInputStream(&this, ppStream);
			}
			public HRESULT CreateRecoContext(ISpRecoContext** ppNewCtxt) mut
			{
				return VT.CreateRecoContext(&this, ppNewCtxt);
			}
			public HRESULT GetRecoProfile(ISpObjectToken** ppToken) mut
			{
				return VT.GetRecoProfile(&this, ppToken);
			}
			public HRESULT SetRecoProfile(ISpObjectToken* pToken) mut
			{
				return VT.SetRecoProfile(&this, pToken);
			}
			public HRESULT IsSharedInstance() mut
			{
				return VT.IsSharedInstance(&this);
			}
			public HRESULT GetRecoState(SPRECOSTATE* pState) mut
			{
				return VT.GetRecoState(&this, pState);
			}
			public HRESULT SetRecoState(SPRECOSTATE NewState) mut
			{
				return VT.SetRecoState(&this, NewState);
			}
			public HRESULT GetStatus(SPRECOGNIZERSTATUS* pStatus) mut
			{
				return VT.GetStatus(&this, pStatus);
			}
			public HRESULT GetFormat(SPWAVEFORMATTYPE WaveFormatType, Guid* pFormatId, WAVEFORMATEX** ppCoMemWFEX) mut
			{
				return VT.GetFormat(&this, WaveFormatType, pFormatId, ppCoMemWFEX);
			}
			public HRESULT IsUISupported(PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, BOOL* pfSupported) mut
			{
				return VT.IsUISupported(&this, pszTypeOfUI, pvExtraData, cbExtraData, pfSupported);
			}
			public HRESULT DisplayUI(HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) mut
			{
				return VT.DisplayUI(&this, hwndParent, pszTitle, pszTypeOfUI, pvExtraData, cbExtraData);
			}
			public HRESULT EmulateRecognition(ISpPhrase* pPhrase) mut
			{
				return VT.EmulateRecognition(&this, pPhrase);
			}
			[CRepr]
			public struct VTable : ISpProperties.VTable
			{
				public new function HRESULT(ISpRecognizer *self, ISpObjectToken* pRecognizer) SetRecognizer;
				public new function HRESULT(ISpRecognizer *self, ISpObjectToken** ppRecognizer) GetRecognizer;
				public new function HRESULT(ISpRecognizer *self, IUnknown* pUnkInput, BOOL fAllowFormatChanges) SetInput;
				public new function HRESULT(ISpRecognizer *self, ISpObjectToken** ppToken) GetInputObjectToken;
				public new function HRESULT(ISpRecognizer *self, ISpStreamFormat** ppStream) GetInputStream;
				public new function HRESULT(ISpRecognizer *self, ISpRecoContext** ppNewCtxt) CreateRecoContext;
				public new function HRESULT(ISpRecognizer *self, ISpObjectToken** ppToken) GetRecoProfile;
				public new function HRESULT(ISpRecognizer *self, ISpObjectToken* pToken) SetRecoProfile;
				public new function HRESULT(ISpRecognizer *self) IsSharedInstance;
				public new function HRESULT(ISpRecognizer *self, SPRECOSTATE* pState) GetRecoState;
				public new function HRESULT(ISpRecognizer *self, SPRECOSTATE NewState) SetRecoState;
				public new function HRESULT(ISpRecognizer *self, SPRECOGNIZERSTATUS* pStatus) GetStatus;
				public new function HRESULT(ISpRecognizer *self, SPWAVEFORMATTYPE WaveFormatType, Guid* pFormatId, WAVEFORMATEX** ppCoMemWFEX) GetFormat;
				public new function HRESULT(ISpRecognizer *self, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData, BOOL* pfSupported) IsUISupported;
				public new function HRESULT(ISpRecognizer *self, HWND hwndParent, PWSTR pszTitle, PWSTR pszTypeOfUI, void* pvExtraData, uint32 cbExtraData) DisplayUI;
				public new function HRESULT(ISpRecognizer *self, ISpPhrase* pPhrase) EmulateRecognition;
			}
		}
		[CRepr]
		public struct ISpSerializeState : IUnknown
		{
			public const new Guid IID = .(0x21b501a0, 0x0ec7, 0x46c9, 0x92, 0xc3, 0xa2, 0xbc, 0x78, 0x4c, 0x54, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSerializedState(uint8** ppbData, uint32* pulSize, uint32 dwReserved) mut
			{
				return VT.GetSerializedState(&this, ppbData, pulSize, dwReserved);
			}
			public HRESULT SetSerializedState(uint8* pbData, uint32 ulSize, uint32 dwReserved) mut
			{
				return VT.SetSerializedState(&this, pbData, ulSize, dwReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpSerializeState *self, uint8** ppbData, uint32* pulSize, uint32 dwReserved) GetSerializedState;
				public new function HRESULT(ISpSerializeState *self, uint8* pbData, uint32 ulSize, uint32 dwReserved) SetSerializedState;
			}
		}
		[CRepr]
		public struct ISpRecognizer2 : IUnknown
		{
			public const new Guid IID = .(0x8fc6d974, 0xc81e, 0x4098, 0x93, 0xc5, 0x01, 0x47, 0xf6, 0x1e, 0xd4, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EmulateRecognitionEx(ISpPhrase* pPhrase, uint32 dwCompareFlags) mut
			{
				return VT.EmulateRecognitionEx(&this, pPhrase, dwCompareFlags);
			}
			public HRESULT SetTrainingState(BOOL fDoingTraining, BOOL fAdaptFromTrainingData) mut
			{
				return VT.SetTrainingState(&this, fDoingTraining, fAdaptFromTrainingData);
			}
			public HRESULT ResetAcousticModelAdaptation() mut
			{
				return VT.ResetAcousticModelAdaptation(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpRecognizer2 *self, ISpPhrase* pPhrase, uint32 dwCompareFlags) EmulateRecognitionEx;
				public new function HRESULT(ISpRecognizer2 *self, BOOL fDoingTraining, BOOL fAdaptFromTrainingData) SetTrainingState;
				public new function HRESULT(ISpRecognizer2 *self) ResetAcousticModelAdaptation;
			}
		}
		[CRepr]
		public struct ISpEnginePronunciation : IUnknown
		{
			public const new Guid IID = .(0xc360ce4b, 0x76d1, 0x4214, 0xad, 0x68, 0x52, 0x65, 0x7d, 0x50, 0x83, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Normalize(PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, SPNORMALIZATIONLIST* pNormalizationList) mut
			{
				return VT.Normalize(&this, pszWord, pszLeftContext, pszRightContext, LangID, pNormalizationList);
			}
			public HRESULT GetPronunciations(PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, SPWORDPRONUNCIATIONLIST* pEnginePronunciationList) mut
			{
				return VT.GetPronunciations(&this, pszWord, pszLeftContext, pszRightContext, LangID, pEnginePronunciationList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpEnginePronunciation *self, PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, SPNORMALIZATIONLIST* pNormalizationList) Normalize;
				public new function HRESULT(ISpEnginePronunciation *self, PWSTR pszWord, PWSTR pszLeftContext, PWSTR pszRightContext, uint16 LangID, SPWORDPRONUNCIATIONLIST* pEnginePronunciationList) GetPronunciations;
			}
		}
		[CRepr]
		public struct ISpDisplayAlternates : IUnknown
		{
			public const new Guid IID = .(0xc8d7c7e2, 0x0dde, 0x44b7, 0xaf, 0xe3, 0xb0, 0xc9, 0x91, 0xfb, 0xeb, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDisplayAlternates(SPDISPLAYPHRASE* pPhrase, uint32 cRequestCount, SPDISPLAYPHRASE** ppCoMemPhrases, uint32* pcPhrasesReturned) mut
			{
				return VT.GetDisplayAlternates(&this, pPhrase, cRequestCount, ppCoMemPhrases, pcPhrasesReturned);
			}
			public HRESULT SetFullStopTrailSpace(uint32 ulTrailSpace) mut
			{
				return VT.SetFullStopTrailSpace(&this, ulTrailSpace);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpDisplayAlternates *self, SPDISPLAYPHRASE* pPhrase, uint32 cRequestCount, SPDISPLAYPHRASE** ppCoMemPhrases, uint32* pcPhrasesReturned) GetDisplayAlternates;
				public new function HRESULT(ISpDisplayAlternates *self, uint32 ulTrailSpace) SetFullStopTrailSpace;
			}
		}
		[CRepr]
		public struct ISpeechDataKey : IDispatch
		{
			public const new Guid IID = .(0xce17c09b, 0x4efa, 0x44d5, 0xa4, 0xc9, 0x59, 0xd9, 0x58, 0x5a, 0xb0, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBinaryValue(BSTR ValueName, VARIANT Value) mut
			{
				return VT.SetBinaryValue(&this, ValueName, Value);
			}
			public HRESULT GetBinaryValue(BSTR ValueName, VARIANT* Value) mut
			{
				return VT.GetBinaryValue(&this, ValueName, Value);
			}
			public HRESULT SetStringValue(BSTR ValueName, BSTR Value) mut
			{
				return VT.SetStringValue(&this, ValueName, Value);
			}
			public HRESULT GetStringValue(BSTR ValueName, BSTR* Value) mut
			{
				return VT.GetStringValue(&this, ValueName, Value);
			}
			public HRESULT SetLongValue(BSTR ValueName, int32 Value) mut
			{
				return VT.SetLongValue(&this, ValueName, Value);
			}
			public HRESULT GetLongValue(BSTR ValueName, int32* Value) mut
			{
				return VT.GetLongValue(&this, ValueName, Value);
			}
			public HRESULT OpenKey(BSTR SubKeyName, ISpeechDataKey** SubKey) mut
			{
				return VT.OpenKey(&this, SubKeyName, SubKey);
			}
			public HRESULT CreateKey(BSTR SubKeyName, ISpeechDataKey** SubKey) mut
			{
				return VT.CreateKey(&this, SubKeyName, SubKey);
			}
			public HRESULT DeleteKey(BSTR SubKeyName) mut
			{
				return VT.DeleteKey(&this, SubKeyName);
			}
			public HRESULT DeleteValue(BSTR ValueName) mut
			{
				return VT.DeleteValue(&this, ValueName);
			}
			public HRESULT EnumKeys(int32 Index, BSTR* SubKeyName) mut
			{
				return VT.EnumKeys(&this, Index, SubKeyName);
			}
			public HRESULT EnumValues(int32 Index, BSTR* ValueName) mut
			{
				return VT.EnumValues(&this, Index, ValueName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName, VARIANT Value) SetBinaryValue;
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName, VARIANT* Value) GetBinaryValue;
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName, BSTR Value) SetStringValue;
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName, BSTR* Value) GetStringValue;
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName, int32 Value) SetLongValue;
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName, int32* Value) GetLongValue;
				public new function HRESULT(ISpeechDataKey *self, BSTR SubKeyName, ISpeechDataKey** SubKey) OpenKey;
				public new function HRESULT(ISpeechDataKey *self, BSTR SubKeyName, ISpeechDataKey** SubKey) CreateKey;
				public new function HRESULT(ISpeechDataKey *self, BSTR SubKeyName) DeleteKey;
				public new function HRESULT(ISpeechDataKey *self, BSTR ValueName) DeleteValue;
				public new function HRESULT(ISpeechDataKey *self, int32 Index, BSTR* SubKeyName) EnumKeys;
				public new function HRESULT(ISpeechDataKey *self, int32 Index, BSTR* ValueName) EnumValues;
			}
		}
		[CRepr]
		public struct ISpeechObjectToken : IDispatch
		{
			public const new Guid IID = .(0xc74a3adc, 0xb727, 0x4500, 0xa8, 0x4a, 0xb5, 0x26, 0x72, 0x1c, 0x8b, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* ObjectId) mut
			{
				return VT.get_Id(&this, ObjectId);
			}
			public HRESULT get_DataKey(ISpeechDataKey** DataKey) mut
			{
				return VT.get_DataKey(&this, DataKey);
			}
			public HRESULT get_Category(ISpeechObjectTokenCategory** Category) mut
			{
				return VT.get_Category(&this, Category);
			}
			public HRESULT GetDescription(int32 Locale, BSTR* Description) mut
			{
				return VT.GetDescription(&this, Locale, Description);
			}
			public HRESULT SetId(BSTR Id, BSTR CategoryID, int16 CreateIfNotExist) mut
			{
				return VT.SetId(&this, Id, CategoryID, CreateIfNotExist);
			}
			public HRESULT GetAttribute(BSTR AttributeName, BSTR* AttributeValue) mut
			{
				return VT.GetAttribute(&this, AttributeName, AttributeValue);
			}
			public HRESULT CreateInstance(IUnknown* pUnkOuter, SpeechTokenContext ClsContext, IUnknown** Object) mut
			{
				return VT.CreateInstance(&this, pUnkOuter, ClsContext, Object);
			}
			public HRESULT Remove(BSTR ObjectStorageCLSID) mut
			{
				return VT.Remove(&this, ObjectStorageCLSID);
			}
			public HRESULT GetStorageFileName(BSTR ObjectStorageCLSID, BSTR KeyName, BSTR FileName, SpeechTokenShellFolder Folder, BSTR* FilePath) mut
			{
				return VT.GetStorageFileName(&this, ObjectStorageCLSID, KeyName, FileName, Folder, FilePath);
			}
			public HRESULT RemoveStorageFileName(BSTR ObjectStorageCLSID, BSTR KeyName, int16 DeleteFileA) mut
			{
				return VT.RemoveStorageFileName(&this, ObjectStorageCLSID, KeyName, DeleteFileA);
			}
			public HRESULT IsUISupported(BSTR TypeOfUI, VARIANT* ExtraData, IUnknown* Object, int16* Supported) mut
			{
				return VT.IsUISupported(&this, TypeOfUI, ExtraData, Object, Supported);
			}
			public HRESULT DisplayUI(int32 hWnd, BSTR Title, BSTR TypeOfUI, VARIANT* ExtraData, IUnknown* Object) mut
			{
				return VT.DisplayUI(&this, hWnd, Title, TypeOfUI, ExtraData, Object);
			}
			public HRESULT MatchesAttributes(BSTR Attributes, int16* Matches) mut
			{
				return VT.MatchesAttributes(&this, Attributes, Matches);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechObjectToken *self, BSTR* ObjectId) get_Id;
				public new function HRESULT(ISpeechObjectToken *self, ISpeechDataKey** DataKey) get_DataKey;
				public new function HRESULT(ISpeechObjectToken *self, ISpeechObjectTokenCategory** Category) get_Category;
				public new function HRESULT(ISpeechObjectToken *self, int32 Locale, BSTR* Description) GetDescription;
				public new function HRESULT(ISpeechObjectToken *self, BSTR Id, BSTR CategoryID, int16 CreateIfNotExist) SetId;
				public new function HRESULT(ISpeechObjectToken *self, BSTR AttributeName, BSTR* AttributeValue) GetAttribute;
				public new function HRESULT(ISpeechObjectToken *self, IUnknown* pUnkOuter, SpeechTokenContext ClsContext, IUnknown** Object) CreateInstance;
				public new function HRESULT(ISpeechObjectToken *self, BSTR ObjectStorageCLSID) Remove;
				public new function HRESULT(ISpeechObjectToken *self, BSTR ObjectStorageCLSID, BSTR KeyName, BSTR FileName, SpeechTokenShellFolder Folder, BSTR* FilePath) GetStorageFileName;
				public new function HRESULT(ISpeechObjectToken *self, BSTR ObjectStorageCLSID, BSTR KeyName, int16 DeleteFileA) RemoveStorageFileName;
				public new function HRESULT(ISpeechObjectToken *self, BSTR TypeOfUI, VARIANT* ExtraData, IUnknown* Object, int16* Supported) IsUISupported;
				public new function HRESULT(ISpeechObjectToken *self, int32 hWnd, BSTR Title, BSTR TypeOfUI, VARIANT* ExtraData, IUnknown* Object) DisplayUI;
				public new function HRESULT(ISpeechObjectToken *self, BSTR Attributes, int16* Matches) MatchesAttributes;
			}
		}
		[CRepr]
		public struct ISpeechObjectTokens : IDispatch
		{
			public const new Guid IID = .(0x9285b776, 0x2e7b, 0x4bc0, 0xb5, 0x3e, 0x58, 0x0e, 0xb6, 0xfa, 0x96, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechObjectToken** Token) mut
			{
				return VT.Item(&this, Index, Token);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, ppEnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechObjectTokens *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechObjectTokens *self, int32 Index, ISpeechObjectToken** Token) Item;
				public new function HRESULT(ISpeechObjectTokens *self, IUnknown** ppEnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechObjectTokenCategory : IDispatch
		{
			public const new Guid IID = .(0xca7eac50, 0x2d01, 0x4145, 0x86, 0xd4, 0x5a, 0xe7, 0xd7, 0x0f, 0x44, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT put_Default(BSTR TokenId) mut
			{
				return VT.put_Default(&this, TokenId);
			}
			public HRESULT get_Default(BSTR* TokenId) mut
			{
				return VT.get_Default(&this, TokenId);
			}
			public HRESULT SetId(BSTR Id, int16 CreateIfNotExist) mut
			{
				return VT.SetId(&this, Id, CreateIfNotExist);
			}
			public HRESULT GetDataKey(SpeechDataKeyLocation Location, ISpeechDataKey** DataKey) mut
			{
				return VT.GetDataKey(&this, Location, DataKey);
			}
			public HRESULT EnumerateTokens(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** Tokens) mut
			{
				return VT.EnumerateTokens(&this, RequiredAttributes, OptionalAttributes, Tokens);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechObjectTokenCategory *self, BSTR* Id) get_Id;
				public new function HRESULT(ISpeechObjectTokenCategory *self, BSTR TokenId) put_Default;
				public new function HRESULT(ISpeechObjectTokenCategory *self, BSTR* TokenId) get_Default;
				public new function HRESULT(ISpeechObjectTokenCategory *self, BSTR Id, int16 CreateIfNotExist) SetId;
				public new function HRESULT(ISpeechObjectTokenCategory *self, SpeechDataKeyLocation Location, ISpeechDataKey** DataKey) GetDataKey;
				public new function HRESULT(ISpeechObjectTokenCategory *self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** Tokens) EnumerateTokens;
			}
		}
		[CRepr]
		public struct ISpeechAudioBufferInfo : IDispatch
		{
			public const new Guid IID = .(0x11b103d8, 0x1142, 0x4edf, 0xa0, 0x93, 0x82, 0xfb, 0x39, 0x15, 0xf8, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MinNotification(int32* MinNotification) mut
			{
				return VT.get_MinNotification(&this, MinNotification);
			}
			public HRESULT put_MinNotification(int32 MinNotification) mut
			{
				return VT.put_MinNotification(&this, MinNotification);
			}
			public HRESULT get_BufferSize(int32* BufferSize) mut
			{
				return VT.get_BufferSize(&this, BufferSize);
			}
			public HRESULT put_BufferSize(int32 BufferSize) mut
			{
				return VT.put_BufferSize(&this, BufferSize);
			}
			public HRESULT get_EventBias(int32* EventBias) mut
			{
				return VT.get_EventBias(&this, EventBias);
			}
			public HRESULT put_EventBias(int32 EventBias) mut
			{
				return VT.put_EventBias(&this, EventBias);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechAudioBufferInfo *self, int32* MinNotification) get_MinNotification;
				public new function HRESULT(ISpeechAudioBufferInfo *self, int32 MinNotification) put_MinNotification;
				public new function HRESULT(ISpeechAudioBufferInfo *self, int32* BufferSize) get_BufferSize;
				public new function HRESULT(ISpeechAudioBufferInfo *self, int32 BufferSize) put_BufferSize;
				public new function HRESULT(ISpeechAudioBufferInfo *self, int32* EventBias) get_EventBias;
				public new function HRESULT(ISpeechAudioBufferInfo *self, int32 EventBias) put_EventBias;
			}
		}
		[CRepr]
		public struct ISpeechAudioStatus : IDispatch
		{
			public const new Guid IID = .(0xc62d9c91, 0x7458, 0x47f6, 0x86, 0x2d, 0x1e, 0xf8, 0x6f, 0xb0, 0xb2, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FreeBufferSpace(int32* FreeBufferSpace) mut
			{
				return VT.get_FreeBufferSpace(&this, FreeBufferSpace);
			}
			public HRESULT get_NonBlockingIO(int32* NonBlockingIO) mut
			{
				return VT.get_NonBlockingIO(&this, NonBlockingIO);
			}
			public HRESULT get_State(SpeechAudioState* State) mut
			{
				return VT.get_State(&this, State);
			}
			public HRESULT get_CurrentSeekPosition(VARIANT* CurrentSeekPosition) mut
			{
				return VT.get_CurrentSeekPosition(&this, CurrentSeekPosition);
			}
			public HRESULT get_CurrentDevicePosition(VARIANT* CurrentDevicePosition) mut
			{
				return VT.get_CurrentDevicePosition(&this, CurrentDevicePosition);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechAudioStatus *self, int32* FreeBufferSpace) get_FreeBufferSpace;
				public new function HRESULT(ISpeechAudioStatus *self, int32* NonBlockingIO) get_NonBlockingIO;
				public new function HRESULT(ISpeechAudioStatus *self, SpeechAudioState* State) get_State;
				public new function HRESULT(ISpeechAudioStatus *self, VARIANT* CurrentSeekPosition) get_CurrentSeekPosition;
				public new function HRESULT(ISpeechAudioStatus *self, VARIANT* CurrentDevicePosition) get_CurrentDevicePosition;
			}
		}
		[CRepr]
		public struct ISpeechAudioFormat : IDispatch
		{
			public const new Guid IID = .(0xe6e9c590, 0x3e18, 0x40e3, 0x82, 0x99, 0x06, 0x1f, 0x98, 0xbd, 0xe7, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(SpeechAudioFormatType* AudioFormat) mut
			{
				return VT.get_Type(&this, AudioFormat);
			}
			public HRESULT put_Type(SpeechAudioFormatType AudioFormat) mut
			{
				return VT.put_Type(&this, AudioFormat);
			}
			public HRESULT get_Guid(BSTR* Guid) mut
			{
				return VT.get_Guid(&this, Guid);
			}
			public HRESULT put_Guid(BSTR Guid) mut
			{
				return VT.put_Guid(&this, Guid);
			}
			public HRESULT GetWaveFormatEx(ISpeechWaveFormatEx** SpeechWaveFormatEx) mut
			{
				return VT.GetWaveFormatEx(&this, SpeechWaveFormatEx);
			}
			public HRESULT SetWaveFormatEx(ISpeechWaveFormatEx* SpeechWaveFormatEx) mut
			{
				return VT.SetWaveFormatEx(&this, SpeechWaveFormatEx);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechAudioFormat *self, SpeechAudioFormatType* AudioFormat) get_Type;
				public new function HRESULT(ISpeechAudioFormat *self, SpeechAudioFormatType AudioFormat) put_Type;
				public new function HRESULT(ISpeechAudioFormat *self, BSTR* Guid) get_Guid;
				public new function HRESULT(ISpeechAudioFormat *self, BSTR Guid) put_Guid;
				public new function HRESULT(ISpeechAudioFormat *self, ISpeechWaveFormatEx** SpeechWaveFormatEx) GetWaveFormatEx;
				public new function HRESULT(ISpeechAudioFormat *self, ISpeechWaveFormatEx* SpeechWaveFormatEx) SetWaveFormatEx;
			}
		}
		[CRepr]
		public struct ISpeechWaveFormatEx : IDispatch
		{
			public const new Guid IID = .(0x7a1ef0d5, 0x1581, 0x4741, 0x88, 0xe4, 0x20, 0x9a, 0x49, 0xf1, 0x1a, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FormatTag(int16* FormatTag) mut
			{
				return VT.get_FormatTag(&this, FormatTag);
			}
			public HRESULT put_FormatTag(int16 FormatTag) mut
			{
				return VT.put_FormatTag(&this, FormatTag);
			}
			public HRESULT get_Channels(int16* Channels) mut
			{
				return VT.get_Channels(&this, Channels);
			}
			public HRESULT put_Channels(int16 Channels) mut
			{
				return VT.put_Channels(&this, Channels);
			}
			public HRESULT get_SamplesPerSec(int32* SamplesPerSec) mut
			{
				return VT.get_SamplesPerSec(&this, SamplesPerSec);
			}
			public HRESULT put_SamplesPerSec(int32 SamplesPerSec) mut
			{
				return VT.put_SamplesPerSec(&this, SamplesPerSec);
			}
			public HRESULT get_AvgBytesPerSec(int32* AvgBytesPerSec) mut
			{
				return VT.get_AvgBytesPerSec(&this, AvgBytesPerSec);
			}
			public HRESULT put_AvgBytesPerSec(int32 AvgBytesPerSec) mut
			{
				return VT.put_AvgBytesPerSec(&this, AvgBytesPerSec);
			}
			public HRESULT get_BlockAlign(int16* BlockAlign) mut
			{
				return VT.get_BlockAlign(&this, BlockAlign);
			}
			public HRESULT put_BlockAlign(int16 BlockAlign) mut
			{
				return VT.put_BlockAlign(&this, BlockAlign);
			}
			public HRESULT get_BitsPerSample(int16* BitsPerSample) mut
			{
				return VT.get_BitsPerSample(&this, BitsPerSample);
			}
			public HRESULT put_BitsPerSample(int16 BitsPerSample) mut
			{
				return VT.put_BitsPerSample(&this, BitsPerSample);
			}
			public HRESULT get_ExtraData(VARIANT* ExtraData) mut
			{
				return VT.get_ExtraData(&this, ExtraData);
			}
			public HRESULT put_ExtraData(VARIANT ExtraData) mut
			{
				return VT.put_ExtraData(&this, ExtraData);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechWaveFormatEx *self, int16* FormatTag) get_FormatTag;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16 FormatTag) put_FormatTag;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16* Channels) get_Channels;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16 Channels) put_Channels;
				public new function HRESULT(ISpeechWaveFormatEx *self, int32* SamplesPerSec) get_SamplesPerSec;
				public new function HRESULT(ISpeechWaveFormatEx *self, int32 SamplesPerSec) put_SamplesPerSec;
				public new function HRESULT(ISpeechWaveFormatEx *self, int32* AvgBytesPerSec) get_AvgBytesPerSec;
				public new function HRESULT(ISpeechWaveFormatEx *self, int32 AvgBytesPerSec) put_AvgBytesPerSec;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16* BlockAlign) get_BlockAlign;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16 BlockAlign) put_BlockAlign;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16* BitsPerSample) get_BitsPerSample;
				public new function HRESULT(ISpeechWaveFormatEx *self, int16 BitsPerSample) put_BitsPerSample;
				public new function HRESULT(ISpeechWaveFormatEx *self, VARIANT* ExtraData) get_ExtraData;
				public new function HRESULT(ISpeechWaveFormatEx *self, VARIANT ExtraData) put_ExtraData;
			}
		}
		[CRepr]
		public struct ISpeechBaseStream : IDispatch
		{
			public const new Guid IID = .(0x6450336f, 0x7d49, 0x4ced, 0x80, 0x97, 0x49, 0xd6, 0xde, 0xe3, 0x72, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Format(ISpeechAudioFormat** AudioFormat) mut
			{
				return VT.get_Format(&this, AudioFormat);
			}
			public HRESULT putref_Format(ISpeechAudioFormat* AudioFormat) mut
			{
				return VT.putref_Format(&this, AudioFormat);
			}
			public HRESULT Read(VARIANT* Buffer, int32 NumberOfBytes, int32* BytesRead) mut
			{
				return VT.Read(&this, Buffer, NumberOfBytes, BytesRead);
			}
			public HRESULT Write(VARIANT Buffer, int32* BytesWritten) mut
			{
				return VT.Write(&this, Buffer, BytesWritten);
			}
			public HRESULT Seek(VARIANT Position, SpeechStreamSeekPositionType Origin, VARIANT* NewPosition) mut
			{
				return VT.Seek(&this, Position, Origin, NewPosition);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechBaseStream *self, ISpeechAudioFormat** AudioFormat) get_Format;
				public new function HRESULT(ISpeechBaseStream *self, ISpeechAudioFormat* AudioFormat) putref_Format;
				public new function HRESULT(ISpeechBaseStream *self, VARIANT* Buffer, int32 NumberOfBytes, int32* BytesRead) Read;
				public new function HRESULT(ISpeechBaseStream *self, VARIANT Buffer, int32* BytesWritten) Write;
				public new function HRESULT(ISpeechBaseStream *self, VARIANT Position, SpeechStreamSeekPositionType Origin, VARIANT* NewPosition) Seek;
			}
		}
		[CRepr]
		public struct ISpeechFileStream : ISpeechBaseStream
		{
			public const new Guid IID = .(0xaf67f125, 0xab39, 0x4e93, 0xb4, 0xa2, 0xcc, 0x2e, 0x66, 0xe1, 0x82, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(BSTR FileName, SpeechStreamFileMode FileMode, int16 DoEvents) mut
			{
				return VT.Open(&this, FileName, FileMode, DoEvents);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function HRESULT(ISpeechFileStream *self, BSTR FileName, SpeechStreamFileMode FileMode, int16 DoEvents) Open;
				public new function HRESULT(ISpeechFileStream *self) Close;
			}
		}
		[CRepr]
		public struct ISpeechMemoryStream : ISpeechBaseStream
		{
			public const new Guid IID = .(0xeeb14b68, 0x808b, 0x4abe, 0xa5, 0xea, 0xb5, 0x1d, 0xa7, 0x58, 0x80, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetData(VARIANT Data) mut
			{
				return VT.SetData(&this, Data);
			}
			public HRESULT GetData(VARIANT* pData) mut
			{
				return VT.GetData(&this, pData);
			}
			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function HRESULT(ISpeechMemoryStream *self, VARIANT Data) SetData;
				public new function HRESULT(ISpeechMemoryStream *self, VARIANT* pData) GetData;
			}
		}
		[CRepr]
		public struct ISpeechCustomStream : ISpeechBaseStream
		{
			public const new Guid IID = .(0x1a9e9f4f, 0x104f, 0x4db8, 0xa1, 0x15, 0xef, 0xd7, 0xfd, 0x0c, 0x97, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BaseStream(IUnknown** ppUnkStream) mut
			{
				return VT.get_BaseStream(&this, ppUnkStream);
			}
			public HRESULT putref_BaseStream(IUnknown* pUnkStream) mut
			{
				return VT.putref_BaseStream(&this, pUnkStream);
			}
			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function HRESULT(ISpeechCustomStream *self, IUnknown** ppUnkStream) get_BaseStream;
				public new function HRESULT(ISpeechCustomStream *self, IUnknown* pUnkStream) putref_BaseStream;
			}
		}
		[CRepr]
		public struct ISpeechAudio : ISpeechBaseStream
		{
			public const new Guid IID = .(0xcff8e175, 0x019e, 0x11d3, 0xa0, 0x8e, 0x00, 0xc0, 0x4f, 0x8e, 0xf9, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(ISpeechAudioStatus** Status) mut
			{
				return VT.get_Status(&this, Status);
			}
			public HRESULT get_BufferInfo(ISpeechAudioBufferInfo** BufferInfo) mut
			{
				return VT.get_BufferInfo(&this, BufferInfo);
			}
			public HRESULT get_DefaultFormat(ISpeechAudioFormat** StreamFormat) mut
			{
				return VT.get_DefaultFormat(&this, StreamFormat);
			}
			public HRESULT get_Volume(int32* Volume) mut
			{
				return VT.get_Volume(&this, Volume);
			}
			public HRESULT put_Volume(int32 Volume) mut
			{
				return VT.put_Volume(&this, Volume);
			}
			public HRESULT get_BufferNotifySize(int32* BufferNotifySize) mut
			{
				return VT.get_BufferNotifySize(&this, BufferNotifySize);
			}
			public HRESULT put_BufferNotifySize(int32 BufferNotifySize) mut
			{
				return VT.put_BufferNotifySize(&this, BufferNotifySize);
			}
			public HRESULT get_EventHandle(int32* EventHandle) mut
			{
				return VT.get_EventHandle(&this, EventHandle);
			}
			public HRESULT SetState(SpeechAudioState State) mut
			{
				return VT.SetState(&this, State);
			}
			[CRepr]
			public struct VTable : ISpeechBaseStream.VTable
			{
				public new function HRESULT(ISpeechAudio *self, ISpeechAudioStatus** Status) get_Status;
				public new function HRESULT(ISpeechAudio *self, ISpeechAudioBufferInfo** BufferInfo) get_BufferInfo;
				public new function HRESULT(ISpeechAudio *self, ISpeechAudioFormat** StreamFormat) get_DefaultFormat;
				public new function HRESULT(ISpeechAudio *self, int32* Volume) get_Volume;
				public new function HRESULT(ISpeechAudio *self, int32 Volume) put_Volume;
				public new function HRESULT(ISpeechAudio *self, int32* BufferNotifySize) get_BufferNotifySize;
				public new function HRESULT(ISpeechAudio *self, int32 BufferNotifySize) put_BufferNotifySize;
				public new function HRESULT(ISpeechAudio *self, int32* EventHandle) get_EventHandle;
				public new function HRESULT(ISpeechAudio *self, SpeechAudioState State) SetState;
			}
		}
		[CRepr]
		public struct ISpeechMMSysAudio : ISpeechAudio
		{
			public const new Guid IID = .(0x3c76af6d, 0x1fd7, 0x4831, 0x81, 0xd1, 0x3b, 0x71, 0xd5, 0xa1, 0x3c, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DeviceId(int32* DeviceId) mut
			{
				return VT.get_DeviceId(&this, DeviceId);
			}
			public HRESULT put_DeviceId(int32 DeviceId) mut
			{
				return VT.put_DeviceId(&this, DeviceId);
			}
			public HRESULT get_LineId(int32* LineId) mut
			{
				return VT.get_LineId(&this, LineId);
			}
			public HRESULT put_LineId(int32 LineId) mut
			{
				return VT.put_LineId(&this, LineId);
			}
			public HRESULT get_MMHandle(int32* Handle) mut
			{
				return VT.get_MMHandle(&this, Handle);
			}
			[CRepr]
			public struct VTable : ISpeechAudio.VTable
			{
				public new function HRESULT(ISpeechMMSysAudio *self, int32* DeviceId) get_DeviceId;
				public new function HRESULT(ISpeechMMSysAudio *self, int32 DeviceId) put_DeviceId;
				public new function HRESULT(ISpeechMMSysAudio *self, int32* LineId) get_LineId;
				public new function HRESULT(ISpeechMMSysAudio *self, int32 LineId) put_LineId;
				public new function HRESULT(ISpeechMMSysAudio *self, int32* Handle) get_MMHandle;
			}
		}
		[CRepr]
		public struct ISpeechVoice : IDispatch
		{
			public const new Guid IID = .(0x269316d8, 0x57bd, 0x11d2, 0x9e, 0xee, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(ISpeechVoiceStatus** Status) mut
			{
				return VT.get_Status(&this, Status);
			}
			public HRESULT get_Voice(ISpeechObjectToken** Voice) mut
			{
				return VT.get_Voice(&this, Voice);
			}
			public HRESULT putref_Voice(ISpeechObjectToken* Voice) mut
			{
				return VT.putref_Voice(&this, Voice);
			}
			public HRESULT get_AudioOutput(ISpeechObjectToken** AudioOutput) mut
			{
				return VT.get_AudioOutput(&this, AudioOutput);
			}
			public HRESULT putref_AudioOutput(ISpeechObjectToken* AudioOutput) mut
			{
				return VT.putref_AudioOutput(&this, AudioOutput);
			}
			public HRESULT get_AudioOutputStream(ISpeechBaseStream** AudioOutputStream) mut
			{
				return VT.get_AudioOutputStream(&this, AudioOutputStream);
			}
			public HRESULT putref_AudioOutputStream(ISpeechBaseStream* AudioOutputStream) mut
			{
				return VT.putref_AudioOutputStream(&this, AudioOutputStream);
			}
			public HRESULT get_Rate(int32* Rate) mut
			{
				return VT.get_Rate(&this, Rate);
			}
			public HRESULT put_Rate(int32 Rate) mut
			{
				return VT.put_Rate(&this, Rate);
			}
			public HRESULT get_Volume(int32* Volume) mut
			{
				return VT.get_Volume(&this, Volume);
			}
			public HRESULT put_Volume(int32 Volume) mut
			{
				return VT.put_Volume(&this, Volume);
			}
			public HRESULT put_AllowAudioOutputFormatChangesOnNextSet(int16 Allow) mut
			{
				return VT.put_AllowAudioOutputFormatChangesOnNextSet(&this, Allow);
			}
			public HRESULT get_AllowAudioOutputFormatChangesOnNextSet(int16* Allow) mut
			{
				return VT.get_AllowAudioOutputFormatChangesOnNextSet(&this, Allow);
			}
			public HRESULT get_EventInterests(SpeechVoiceEvents* EventInterestFlags) mut
			{
				return VT.get_EventInterests(&this, EventInterestFlags);
			}
			public HRESULT put_EventInterests(SpeechVoiceEvents EventInterestFlags) mut
			{
				return VT.put_EventInterests(&this, EventInterestFlags);
			}
			public HRESULT put_Priority(SpeechVoicePriority Priority) mut
			{
				return VT.put_Priority(&this, Priority);
			}
			public HRESULT get_Priority(SpeechVoicePriority* Priority) mut
			{
				return VT.get_Priority(&this, Priority);
			}
			public HRESULT put_AlertBoundary(SpeechVoiceEvents Boundary) mut
			{
				return VT.put_AlertBoundary(&this, Boundary);
			}
			public HRESULT get_AlertBoundary(SpeechVoiceEvents* Boundary) mut
			{
				return VT.get_AlertBoundary(&this, Boundary);
			}
			public HRESULT put_SynchronousSpeakTimeout(int32 msTimeout) mut
			{
				return VT.put_SynchronousSpeakTimeout(&this, msTimeout);
			}
			public HRESULT get_SynchronousSpeakTimeout(int32* msTimeout) mut
			{
				return VT.get_SynchronousSpeakTimeout(&this, msTimeout);
			}
			public HRESULT Speak(BSTR Text, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) mut
			{
				return VT.Speak(&this, Text, Flags, StreamNumber);
			}
			public HRESULT SpeakStream(ISpeechBaseStream* Stream, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) mut
			{
				return VT.SpeakStream(&this, Stream, Flags, StreamNumber);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT Skip(BSTR Type, int32 NumItems, int32* NumSkipped) mut
			{
				return VT.Skip(&this, Type, NumItems, NumSkipped);
			}
			public HRESULT GetVoices(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut
			{
				return VT.GetVoices(&this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			}
			public HRESULT GetAudioOutputs(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut
			{
				return VT.GetAudioOutputs(&this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			}
			public HRESULT WaitUntilDone(int32 msTimeout, int16* Done) mut
			{
				return VT.WaitUntilDone(&this, msTimeout, Done);
			}
			public HRESULT SpeakCompleteEvent(int32* Handle) mut
			{
				return VT.SpeakCompleteEvent(&this, Handle);
			}
			public HRESULT IsUISupported(BSTR TypeOfUI, VARIANT* ExtraData, int16* Supported) mut
			{
				return VT.IsUISupported(&this, TypeOfUI, ExtraData, Supported);
			}
			public HRESULT DisplayUI(int32 hWndParent, BSTR Title, BSTR TypeOfUI, VARIANT* ExtraData) mut
			{
				return VT.DisplayUI(&this, hWndParent, Title, TypeOfUI, ExtraData);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechVoice *self, ISpeechVoiceStatus** Status) get_Status;
				public new function HRESULT(ISpeechVoice *self, ISpeechObjectToken** Voice) get_Voice;
				public new function HRESULT(ISpeechVoice *self, ISpeechObjectToken* Voice) putref_Voice;
				public new function HRESULT(ISpeechVoice *self, ISpeechObjectToken** AudioOutput) get_AudioOutput;
				public new function HRESULT(ISpeechVoice *self, ISpeechObjectToken* AudioOutput) putref_AudioOutput;
				public new function HRESULT(ISpeechVoice *self, ISpeechBaseStream** AudioOutputStream) get_AudioOutputStream;
				public new function HRESULT(ISpeechVoice *self, ISpeechBaseStream* AudioOutputStream) putref_AudioOutputStream;
				public new function HRESULT(ISpeechVoice *self, int32* Rate) get_Rate;
				public new function HRESULT(ISpeechVoice *self, int32 Rate) put_Rate;
				public new function HRESULT(ISpeechVoice *self, int32* Volume) get_Volume;
				public new function HRESULT(ISpeechVoice *self, int32 Volume) put_Volume;
				public new function HRESULT(ISpeechVoice *self, int16 Allow) put_AllowAudioOutputFormatChangesOnNextSet;
				public new function HRESULT(ISpeechVoice *self, int16* Allow) get_AllowAudioOutputFormatChangesOnNextSet;
				public new function HRESULT(ISpeechVoice *self, SpeechVoiceEvents* EventInterestFlags) get_EventInterests;
				public new function HRESULT(ISpeechVoice *self, SpeechVoiceEvents EventInterestFlags) put_EventInterests;
				public new function HRESULT(ISpeechVoice *self, SpeechVoicePriority Priority) put_Priority;
				public new function HRESULT(ISpeechVoice *self, SpeechVoicePriority* Priority) get_Priority;
				public new function HRESULT(ISpeechVoice *self, SpeechVoiceEvents Boundary) put_AlertBoundary;
				public new function HRESULT(ISpeechVoice *self, SpeechVoiceEvents* Boundary) get_AlertBoundary;
				public new function HRESULT(ISpeechVoice *self, int32 msTimeout) put_SynchronousSpeakTimeout;
				public new function HRESULT(ISpeechVoice *self, int32* msTimeout) get_SynchronousSpeakTimeout;
				public new function HRESULT(ISpeechVoice *self, BSTR Text, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) Speak;
				public new function HRESULT(ISpeechVoice *self, ISpeechBaseStream* Stream, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) SpeakStream;
				public new function HRESULT(ISpeechVoice *self) Pause;
				public new function HRESULT(ISpeechVoice *self) Resume;
				public new function HRESULT(ISpeechVoice *self, BSTR Type, int32 NumItems, int32* NumSkipped) Skip;
				public new function HRESULT(ISpeechVoice *self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetVoices;
				public new function HRESULT(ISpeechVoice *self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetAudioOutputs;
				public new function HRESULT(ISpeechVoice *self, int32 msTimeout, int16* Done) WaitUntilDone;
				public new function HRESULT(ISpeechVoice *self, int32* Handle) SpeakCompleteEvent;
				public new function HRESULT(ISpeechVoice *self, BSTR TypeOfUI, VARIANT* ExtraData, int16* Supported) IsUISupported;
				public new function HRESULT(ISpeechVoice *self, int32 hWndParent, BSTR Title, BSTR TypeOfUI, VARIANT* ExtraData) DisplayUI;
			}
		}
		[CRepr]
		public struct ISpeechVoiceStatus : IDispatch
		{
			public const new Guid IID = .(0x8be47b07, 0x57f6, 0x11d2, 0x9e, 0xee, 0x00, 0xc0, 0x4f, 0x79, 0x73, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentStreamNumber(int32* StreamNumber) mut
			{
				return VT.get_CurrentStreamNumber(&this, StreamNumber);
			}
			public HRESULT get_LastStreamNumberQueued(int32* StreamNumber) mut
			{
				return VT.get_LastStreamNumberQueued(&this, StreamNumber);
			}
			public HRESULT get_LastHResult(int32* HResult) mut
			{
				return VT.get_LastHResult(&this, HResult);
			}
			public HRESULT get_RunningState(SpeechRunState* State) mut
			{
				return VT.get_RunningState(&this, State);
			}
			public HRESULT get_InputWordPosition(int32* Position) mut
			{
				return VT.get_InputWordPosition(&this, Position);
			}
			public HRESULT get_InputWordLength(int32* Length) mut
			{
				return VT.get_InputWordLength(&this, Length);
			}
			public HRESULT get_InputSentencePosition(int32* Position) mut
			{
				return VT.get_InputSentencePosition(&this, Position);
			}
			public HRESULT get_InputSentenceLength(int32* Length) mut
			{
				return VT.get_InputSentenceLength(&this, Length);
			}
			public HRESULT get_LastBookmark(BSTR* Bookmark) mut
			{
				return VT.get_LastBookmark(&this, Bookmark);
			}
			public HRESULT get_LastBookmarkId(int32* BookmarkId) mut
			{
				return VT.get_LastBookmarkId(&this, BookmarkId);
			}
			public HRESULT get_PhonemeId(int16* PhoneId) mut
			{
				return VT.get_PhonemeId(&this, PhoneId);
			}
			public HRESULT get_VisemeId(int16* VisemeId) mut
			{
				return VT.get_VisemeId(&this, VisemeId);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechVoiceStatus *self, int32* StreamNumber) get_CurrentStreamNumber;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* StreamNumber) get_LastStreamNumberQueued;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* HResult) get_LastHResult;
				public new function HRESULT(ISpeechVoiceStatus *self, SpeechRunState* State) get_RunningState;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* Position) get_InputWordPosition;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* Length) get_InputWordLength;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* Position) get_InputSentencePosition;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* Length) get_InputSentenceLength;
				public new function HRESULT(ISpeechVoiceStatus *self, BSTR* Bookmark) get_LastBookmark;
				public new function HRESULT(ISpeechVoiceStatus *self, int32* BookmarkId) get_LastBookmarkId;
				public new function HRESULT(ISpeechVoiceStatus *self, int16* PhoneId) get_PhonemeId;
				public new function HRESULT(ISpeechVoiceStatus *self, int16* VisemeId) get_VisemeId;
			}
		}
		[CRepr]
		public struct _ISpeechVoiceEvents : IDispatch
		{
			public const new Guid IID = .(0xa372acd1, 0x3bef, 0x4bbd, 0x8f, 0xfb, 0xcb, 0x3e, 0x2b, 0x41, 0x6a, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ISpeechRecognizer : IDispatch
		{
			public const new Guid IID = .(0x2d5f1c0c, 0xbd75, 0x4b08, 0x94, 0x78, 0x3b, 0x11, 0xfe, 0xa2, 0x58, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT putref_Recognizer(ISpeechObjectToken* Recognizer) mut
			{
				return VT.putref_Recognizer(&this, Recognizer);
			}
			public HRESULT get_Recognizer(ISpeechObjectToken** Recognizer) mut
			{
				return VT.get_Recognizer(&this, Recognizer);
			}
			public HRESULT put_AllowAudioInputFormatChangesOnNextSet(int16 Allow) mut
			{
				return VT.put_AllowAudioInputFormatChangesOnNextSet(&this, Allow);
			}
			public HRESULT get_AllowAudioInputFormatChangesOnNextSet(int16* Allow) mut
			{
				return VT.get_AllowAudioInputFormatChangesOnNextSet(&this, Allow);
			}
			public HRESULT putref_AudioInput(ISpeechObjectToken* AudioInput) mut
			{
				return VT.putref_AudioInput(&this, AudioInput);
			}
			public HRESULT get_AudioInput(ISpeechObjectToken** AudioInput) mut
			{
				return VT.get_AudioInput(&this, AudioInput);
			}
			public HRESULT putref_AudioInputStream(ISpeechBaseStream* AudioInputStream) mut
			{
				return VT.putref_AudioInputStream(&this, AudioInputStream);
			}
			public HRESULT get_AudioInputStream(ISpeechBaseStream** AudioInputStream) mut
			{
				return VT.get_AudioInputStream(&this, AudioInputStream);
			}
			public HRESULT get_IsShared(int16* Shared) mut
			{
				return VT.get_IsShared(&this, Shared);
			}
			public HRESULT put_State(SpeechRecognizerState State) mut
			{
				return VT.put_State(&this, State);
			}
			public HRESULT get_State(SpeechRecognizerState* State) mut
			{
				return VT.get_State(&this, State);
			}
			public HRESULT get_Status(ISpeechRecognizerStatus** Status) mut
			{
				return VT.get_Status(&this, Status);
			}
			public HRESULT putref_Profile(ISpeechObjectToken* Profile) mut
			{
				return VT.putref_Profile(&this, Profile);
			}
			public HRESULT get_Profile(ISpeechObjectToken** Profile) mut
			{
				return VT.get_Profile(&this, Profile);
			}
			public HRESULT EmulateRecognition(VARIANT TextElements, VARIANT* ElementDisplayAttributes, int32 LanguageId) mut
			{
				return VT.EmulateRecognition(&this, TextElements, ElementDisplayAttributes, LanguageId);
			}
			public HRESULT CreateRecoContext(ISpeechRecoContext** NewContext) mut
			{
				return VT.CreateRecoContext(&this, NewContext);
			}
			public HRESULT GetFormat(SpeechFormatType Type, ISpeechAudioFormat** Format) mut
			{
				return VT.GetFormat(&this, Type, Format);
			}
			public HRESULT SetPropertyNumber(BSTR Name, int32 Value, int16* Supported) mut
			{
				return VT.SetPropertyNumber(&this, Name, Value, Supported);
			}
			public HRESULT GetPropertyNumber(BSTR Name, int32* Value, int16* Supported) mut
			{
				return VT.GetPropertyNumber(&this, Name, Value, Supported);
			}
			public HRESULT SetPropertyString(BSTR Name, BSTR Value, int16* Supported) mut
			{
				return VT.SetPropertyString(&this, Name, Value, Supported);
			}
			public HRESULT GetPropertyString(BSTR Name, BSTR* Value, int16* Supported) mut
			{
				return VT.GetPropertyString(&this, Name, Value, Supported);
			}
			public HRESULT IsUISupported(BSTR TypeOfUI, VARIANT* ExtraData, int16* Supported) mut
			{
				return VT.IsUISupported(&this, TypeOfUI, ExtraData, Supported);
			}
			public HRESULT DisplayUI(int32 hWndParent, BSTR Title, BSTR TypeOfUI, VARIANT* ExtraData) mut
			{
				return VT.DisplayUI(&this, hWndParent, Title, TypeOfUI, ExtraData);
			}
			public HRESULT GetRecognizers(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut
			{
				return VT.GetRecognizers(&this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			}
			public HRESULT GetAudioInputs(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut
			{
				return VT.GetAudioInputs(&this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			}
			public HRESULT GetProfiles(BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) mut
			{
				return VT.GetProfiles(&this, RequiredAttributes, OptionalAttributes, ObjectTokens);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecognizer *self, ISpeechObjectToken* Recognizer) putref_Recognizer;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechObjectToken** Recognizer) get_Recognizer;
				public new function HRESULT(ISpeechRecognizer *self, int16 Allow) put_AllowAudioInputFormatChangesOnNextSet;
				public new function HRESULT(ISpeechRecognizer *self, int16* Allow) get_AllowAudioInputFormatChangesOnNextSet;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechObjectToken* AudioInput) putref_AudioInput;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechObjectToken** AudioInput) get_AudioInput;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechBaseStream* AudioInputStream) putref_AudioInputStream;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechBaseStream** AudioInputStream) get_AudioInputStream;
				public new function HRESULT(ISpeechRecognizer *self, int16* Shared) get_IsShared;
				public new function HRESULT(ISpeechRecognizer *self, SpeechRecognizerState State) put_State;
				public new function HRESULT(ISpeechRecognizer *self, SpeechRecognizerState* State) get_State;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechRecognizerStatus** Status) get_Status;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechObjectToken* Profile) putref_Profile;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechObjectToken** Profile) get_Profile;
				public new function HRESULT(ISpeechRecognizer *self, VARIANT TextElements, VARIANT* ElementDisplayAttributes, int32 LanguageId) EmulateRecognition;
				public new function HRESULT(ISpeechRecognizer *self, ISpeechRecoContext** NewContext) CreateRecoContext;
				public new function HRESULT(ISpeechRecognizer *self, SpeechFormatType Type, ISpeechAudioFormat** Format) GetFormat;
				public new function HRESULT(ISpeechRecognizer *self, BSTR Name, int32 Value, int16* Supported) SetPropertyNumber;
				public new function HRESULT(ISpeechRecognizer *self, BSTR Name, int32* Value, int16* Supported) GetPropertyNumber;
				public new function HRESULT(ISpeechRecognizer *self, BSTR Name, BSTR Value, int16* Supported) SetPropertyString;
				public new function HRESULT(ISpeechRecognizer *self, BSTR Name, BSTR* Value, int16* Supported) GetPropertyString;
				public new function HRESULT(ISpeechRecognizer *self, BSTR TypeOfUI, VARIANT* ExtraData, int16* Supported) IsUISupported;
				public new function HRESULT(ISpeechRecognizer *self, int32 hWndParent, BSTR Title, BSTR TypeOfUI, VARIANT* ExtraData) DisplayUI;
				public new function HRESULT(ISpeechRecognizer *self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetRecognizers;
				public new function HRESULT(ISpeechRecognizer *self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetAudioInputs;
				public new function HRESULT(ISpeechRecognizer *self, BSTR RequiredAttributes, BSTR OptionalAttributes, ISpeechObjectTokens** ObjectTokens) GetProfiles;
			}
		}
		[CRepr]
		public struct ISpeechRecognizerStatus : IDispatch
		{
			public const new Guid IID = .(0xbff9e781, 0x53ec, 0x484e, 0xbb, 0x8a, 0x0e, 0x1b, 0x55, 0x51, 0xe3, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AudioStatus(ISpeechAudioStatus** AudioStatus) mut
			{
				return VT.get_AudioStatus(&this, AudioStatus);
			}
			public HRESULT get_CurrentStreamPosition(VARIANT* pCurrentStreamPos) mut
			{
				return VT.get_CurrentStreamPosition(&this, pCurrentStreamPos);
			}
			public HRESULT get_CurrentStreamNumber(int32* StreamNumber) mut
			{
				return VT.get_CurrentStreamNumber(&this, StreamNumber);
			}
			public HRESULT get_NumberOfActiveRules(int32* NumberOfActiveRules) mut
			{
				return VT.get_NumberOfActiveRules(&this, NumberOfActiveRules);
			}
			public HRESULT get_ClsidEngine(BSTR* ClsidEngine) mut
			{
				return VT.get_ClsidEngine(&this, ClsidEngine);
			}
			public HRESULT get_SupportedLanguages(VARIANT* SupportedLanguages) mut
			{
				return VT.get_SupportedLanguages(&this, SupportedLanguages);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecognizerStatus *self, ISpeechAudioStatus** AudioStatus) get_AudioStatus;
				public new function HRESULT(ISpeechRecognizerStatus *self, VARIANT* pCurrentStreamPos) get_CurrentStreamPosition;
				public new function HRESULT(ISpeechRecognizerStatus *self, int32* StreamNumber) get_CurrentStreamNumber;
				public new function HRESULT(ISpeechRecognizerStatus *self, int32* NumberOfActiveRules) get_NumberOfActiveRules;
				public new function HRESULT(ISpeechRecognizerStatus *self, BSTR* ClsidEngine) get_ClsidEngine;
				public new function HRESULT(ISpeechRecognizerStatus *self, VARIANT* SupportedLanguages) get_SupportedLanguages;
			}
		}
		[CRepr]
		public struct ISpeechRecoContext : IDispatch
		{
			public const new Guid IID = .(0x580aa49d, 0x7e1e, 0x4809, 0xb8, 0xe2, 0x57, 0xda, 0x80, 0x61, 0x04, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Recognizer(ISpeechRecognizer** Recognizer) mut
			{
				return VT.get_Recognizer(&this, Recognizer);
			}
			public HRESULT get_AudioInputInterferenceStatus(SpeechInterference* Interference) mut
			{
				return VT.get_AudioInputInterferenceStatus(&this, Interference);
			}
			public HRESULT get_RequestedUIType(BSTR* UIType) mut
			{
				return VT.get_RequestedUIType(&this, UIType);
			}
			public HRESULT putref_Voice(ISpeechVoice* Voice) mut
			{
				return VT.putref_Voice(&this, Voice);
			}
			public HRESULT get_Voice(ISpeechVoice** Voice) mut
			{
				return VT.get_Voice(&this, Voice);
			}
			public HRESULT put_AllowVoiceFormatMatchingOnNextSet(int16 Allow) mut
			{
				return VT.put_AllowVoiceFormatMatchingOnNextSet(&this, Allow);
			}
			public HRESULT get_AllowVoiceFormatMatchingOnNextSet(int16* pAllow) mut
			{
				return VT.get_AllowVoiceFormatMatchingOnNextSet(&this, pAllow);
			}
			public HRESULT put_VoicePurgeEvent(SpeechRecoEvents EventInterest) mut
			{
				return VT.put_VoicePurgeEvent(&this, EventInterest);
			}
			public HRESULT get_VoicePurgeEvent(SpeechRecoEvents* EventInterest) mut
			{
				return VT.get_VoicePurgeEvent(&this, EventInterest);
			}
			public HRESULT put_EventInterests(SpeechRecoEvents EventInterest) mut
			{
				return VT.put_EventInterests(&this, EventInterest);
			}
			public HRESULT get_EventInterests(SpeechRecoEvents* EventInterest) mut
			{
				return VT.get_EventInterests(&this, EventInterest);
			}
			public HRESULT put_CmdMaxAlternates(int32 MaxAlternates) mut
			{
				return VT.put_CmdMaxAlternates(&this, MaxAlternates);
			}
			public HRESULT get_CmdMaxAlternates(int32* MaxAlternates) mut
			{
				return VT.get_CmdMaxAlternates(&this, MaxAlternates);
			}
			public HRESULT put_State(SpeechRecoContextState State) mut
			{
				return VT.put_State(&this, State);
			}
			public HRESULT get_State(SpeechRecoContextState* State) mut
			{
				return VT.get_State(&this, State);
			}
			public HRESULT put_RetainedAudio(SpeechRetainedAudioOptions Option) mut
			{
				return VT.put_RetainedAudio(&this, Option);
			}
			public HRESULT get_RetainedAudio(SpeechRetainedAudioOptions* Option) mut
			{
				return VT.get_RetainedAudio(&this, Option);
			}
			public HRESULT putref_RetainedAudioFormat(ISpeechAudioFormat* Format) mut
			{
				return VT.putref_RetainedAudioFormat(&this, Format);
			}
			public HRESULT get_RetainedAudioFormat(ISpeechAudioFormat** Format) mut
			{
				return VT.get_RetainedAudioFormat(&this, Format);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT CreateGrammar(VARIANT GrammarId, ISpeechRecoGrammar** Grammar) mut
			{
				return VT.CreateGrammar(&this, GrammarId, Grammar);
			}
			public HRESULT CreateResultFromMemory(VARIANT* ResultBlock, ISpeechRecoResult** Result) mut
			{
				return VT.CreateResultFromMemory(&this, ResultBlock, Result);
			}
			public HRESULT Bookmark(SpeechBookmarkOptions Options, VARIANT StreamPos, VARIANT BookmarkId) mut
			{
				return VT.Bookmark(&this, Options, StreamPos, BookmarkId);
			}
			public HRESULT SetAdaptationData(BSTR AdaptationString) mut
			{
				return VT.SetAdaptationData(&this, AdaptationString);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecoContext *self, ISpeechRecognizer** Recognizer) get_Recognizer;
				public new function HRESULT(ISpeechRecoContext *self, SpeechInterference* Interference) get_AudioInputInterferenceStatus;
				public new function HRESULT(ISpeechRecoContext *self, BSTR* UIType) get_RequestedUIType;
				public new function HRESULT(ISpeechRecoContext *self, ISpeechVoice* Voice) putref_Voice;
				public new function HRESULT(ISpeechRecoContext *self, ISpeechVoice** Voice) get_Voice;
				public new function HRESULT(ISpeechRecoContext *self, int16 Allow) put_AllowVoiceFormatMatchingOnNextSet;
				public new function HRESULT(ISpeechRecoContext *self, int16* pAllow) get_AllowVoiceFormatMatchingOnNextSet;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRecoEvents EventInterest) put_VoicePurgeEvent;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRecoEvents* EventInterest) get_VoicePurgeEvent;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRecoEvents EventInterest) put_EventInterests;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRecoEvents* EventInterest) get_EventInterests;
				public new function HRESULT(ISpeechRecoContext *self, int32 MaxAlternates) put_CmdMaxAlternates;
				public new function HRESULT(ISpeechRecoContext *self, int32* MaxAlternates) get_CmdMaxAlternates;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRecoContextState State) put_State;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRecoContextState* State) get_State;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRetainedAudioOptions Option) put_RetainedAudio;
				public new function HRESULT(ISpeechRecoContext *self, SpeechRetainedAudioOptions* Option) get_RetainedAudio;
				public new function HRESULT(ISpeechRecoContext *self, ISpeechAudioFormat* Format) putref_RetainedAudioFormat;
				public new function HRESULT(ISpeechRecoContext *self, ISpeechAudioFormat** Format) get_RetainedAudioFormat;
				public new function HRESULT(ISpeechRecoContext *self) Pause;
				public new function HRESULT(ISpeechRecoContext *self) Resume;
				public new function HRESULT(ISpeechRecoContext *self, VARIANT GrammarId, ISpeechRecoGrammar** Grammar) CreateGrammar;
				public new function HRESULT(ISpeechRecoContext *self, VARIANT* ResultBlock, ISpeechRecoResult** Result) CreateResultFromMemory;
				public new function HRESULT(ISpeechRecoContext *self, SpeechBookmarkOptions Options, VARIANT StreamPos, VARIANT BookmarkId) Bookmark;
				public new function HRESULT(ISpeechRecoContext *self, BSTR AdaptationString) SetAdaptationData;
			}
		}
		[CRepr]
		public struct ISpeechRecoGrammar : IDispatch
		{
			public const new Guid IID = .(0xb6d6f79f, 0x2158, 0x4e50, 0xb5, 0xbc, 0x9a, 0x9c, 0xcd, 0x85, 0x2a, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(VARIANT* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT get_RecoContext(ISpeechRecoContext** RecoContext) mut
			{
				return VT.get_RecoContext(&this, RecoContext);
			}
			public HRESULT put_State(SpeechGrammarState State) mut
			{
				return VT.put_State(&this, State);
			}
			public HRESULT get_State(SpeechGrammarState* State) mut
			{
				return VT.get_State(&this, State);
			}
			public HRESULT get_Rules(ISpeechGrammarRules** Rules) mut
			{
				return VT.get_Rules(&this, Rules);
			}
			public HRESULT Reset(int32 NewLanguage) mut
			{
				return VT.Reset(&this, NewLanguage);
			}
			public HRESULT CmdLoadFromFile(BSTR FileName, SpeechLoadOption LoadOption) mut
			{
				return VT.CmdLoadFromFile(&this, FileName, LoadOption);
			}
			public HRESULT CmdLoadFromObject(BSTR ClassId, BSTR GrammarName, SpeechLoadOption LoadOption) mut
			{
				return VT.CmdLoadFromObject(&this, ClassId, GrammarName, LoadOption);
			}
			public HRESULT CmdLoadFromResource(int32 hModule, VARIANT ResourceName, VARIANT ResourceType, int32 LanguageId, SpeechLoadOption LoadOption) mut
			{
				return VT.CmdLoadFromResource(&this, hModule, ResourceName, ResourceType, LanguageId, LoadOption);
			}
			public HRESULT CmdLoadFromMemory(VARIANT GrammarData, SpeechLoadOption LoadOption) mut
			{
				return VT.CmdLoadFromMemory(&this, GrammarData, LoadOption);
			}
			public HRESULT CmdLoadFromProprietaryGrammar(BSTR ProprietaryGuid, BSTR ProprietaryString, VARIANT ProprietaryData, SpeechLoadOption LoadOption) mut
			{
				return VT.CmdLoadFromProprietaryGrammar(&this, ProprietaryGuid, ProprietaryString, ProprietaryData, LoadOption);
			}
			public HRESULT CmdSetRuleState(BSTR Name, SpeechRuleState State) mut
			{
				return VT.CmdSetRuleState(&this, Name, State);
			}
			public HRESULT CmdSetRuleIdState(int32 RuleId, SpeechRuleState State) mut
			{
				return VT.CmdSetRuleIdState(&this, RuleId, State);
			}
			public HRESULT DictationLoad(BSTR TopicName, SpeechLoadOption LoadOption) mut
			{
				return VT.DictationLoad(&this, TopicName, LoadOption);
			}
			public HRESULT DictationUnload() mut
			{
				return VT.DictationUnload(&this);
			}
			public HRESULT DictationSetState(SpeechRuleState State) mut
			{
				return VT.DictationSetState(&this, State);
			}
			public HRESULT SetWordSequenceData(BSTR Text, int32 TextLength, ISpeechTextSelectionInformation* Info) mut
			{
				return VT.SetWordSequenceData(&this, Text, TextLength, Info);
			}
			public HRESULT SetTextSelection(ISpeechTextSelectionInformation* Info) mut
			{
				return VT.SetTextSelection(&this, Info);
			}
			public HRESULT IsPronounceable(BSTR Word, SpeechWordPronounceable* WordPronounceable) mut
			{
				return VT.IsPronounceable(&this, Word, WordPronounceable);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecoGrammar *self, VARIANT* Id) get_Id;
				public new function HRESULT(ISpeechRecoGrammar *self, ISpeechRecoContext** RecoContext) get_RecoContext;
				public new function HRESULT(ISpeechRecoGrammar *self, SpeechGrammarState State) put_State;
				public new function HRESULT(ISpeechRecoGrammar *self, SpeechGrammarState* State) get_State;
				public new function HRESULT(ISpeechRecoGrammar *self, ISpeechGrammarRules** Rules) get_Rules;
				public new function HRESULT(ISpeechRecoGrammar *self, int32 NewLanguage) Reset;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR FileName, SpeechLoadOption LoadOption) CmdLoadFromFile;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR ClassId, BSTR GrammarName, SpeechLoadOption LoadOption) CmdLoadFromObject;
				public new function HRESULT(ISpeechRecoGrammar *self, int32 hModule, VARIANT ResourceName, VARIANT ResourceType, int32 LanguageId, SpeechLoadOption LoadOption) CmdLoadFromResource;
				public new function HRESULT(ISpeechRecoGrammar *self, VARIANT GrammarData, SpeechLoadOption LoadOption) CmdLoadFromMemory;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR ProprietaryGuid, BSTR ProprietaryString, VARIANT ProprietaryData, SpeechLoadOption LoadOption) CmdLoadFromProprietaryGrammar;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR Name, SpeechRuleState State) CmdSetRuleState;
				public new function HRESULT(ISpeechRecoGrammar *self, int32 RuleId, SpeechRuleState State) CmdSetRuleIdState;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR TopicName, SpeechLoadOption LoadOption) DictationLoad;
				public new function HRESULT(ISpeechRecoGrammar *self) DictationUnload;
				public new function HRESULT(ISpeechRecoGrammar *self, SpeechRuleState State) DictationSetState;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR Text, int32 TextLength, ISpeechTextSelectionInformation* Info) SetWordSequenceData;
				public new function HRESULT(ISpeechRecoGrammar *self, ISpeechTextSelectionInformation* Info) SetTextSelection;
				public new function HRESULT(ISpeechRecoGrammar *self, BSTR Word, SpeechWordPronounceable* WordPronounceable) IsPronounceable;
			}
		}
		[CRepr]
		public struct _ISpeechRecoContextEvents : IDispatch
		{
			public const new Guid IID = .(0x7b8fcb42, 0x0e9d, 0x4f00, 0xa0, 0x48, 0x7b, 0x04, 0xd6, 0x17, 0x9d, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct ISpeechGrammarRule : IDispatch
		{
			public const new Guid IID = .(0xafe719cf, 0x5dd1, 0x44f2, 0x99, 0x9c, 0x7a, 0x39, 0x9f, 0x1c, 0xfc, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Attributes(SpeechRuleAttributes* Attributes) mut
			{
				return VT.get_Attributes(&this, Attributes);
			}
			public HRESULT get_InitialState(ISpeechGrammarRuleState** State) mut
			{
				return VT.get_InitialState(&this, State);
			}
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Id(int32* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddResource(BSTR ResourceName, BSTR ResourceValue) mut
			{
				return VT.AddResource(&this, ResourceName, ResourceValue);
			}
			public HRESULT AddState(ISpeechGrammarRuleState** State) mut
			{
				return VT.AddState(&this, State);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechGrammarRule *self, SpeechRuleAttributes* Attributes) get_Attributes;
				public new function HRESULT(ISpeechGrammarRule *self, ISpeechGrammarRuleState** State) get_InitialState;
				public new function HRESULT(ISpeechGrammarRule *self, BSTR* Name) get_Name;
				public new function HRESULT(ISpeechGrammarRule *self, int32* Id) get_Id;
				public new function HRESULT(ISpeechGrammarRule *self) Clear;
				public new function HRESULT(ISpeechGrammarRule *self, BSTR ResourceName, BSTR ResourceValue) AddResource;
				public new function HRESULT(ISpeechGrammarRule *self, ISpeechGrammarRuleState** State) AddState;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRules : IDispatch
		{
			public const new Guid IID = .(0x6ffa3b44, 0xfc2d, 0x40d1, 0x8a, 0xfc, 0x32, 0x91, 0x1c, 0x7f, 0x1a, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT FindRule(VARIANT RuleNameOrId, ISpeechGrammarRule** Rule) mut
			{
				return VT.FindRule(&this, RuleNameOrId, Rule);
			}
			public HRESULT Item(int32 Index, ISpeechGrammarRule** Rule) mut
			{
				return VT.Item(&this, Index, Rule);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			public HRESULT get_Dynamic(int16* Dynamic) mut
			{
				return VT.get_Dynamic(&this, Dynamic);
			}
			public HRESULT Add(BSTR RuleName, SpeechRuleAttributes Attributes, int32 RuleId, ISpeechGrammarRule** Rule) mut
			{
				return VT.Add(&this, RuleName, Attributes, RuleId, Rule);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			public HRESULT CommitAndSave(BSTR* ErrorText, VARIANT* SaveStream) mut
			{
				return VT.CommitAndSave(&this, ErrorText, SaveStream);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechGrammarRules *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechGrammarRules *self, VARIANT RuleNameOrId, ISpeechGrammarRule** Rule) FindRule;
				public new function HRESULT(ISpeechGrammarRules *self, int32 Index, ISpeechGrammarRule** Rule) Item;
				public new function HRESULT(ISpeechGrammarRules *self, IUnknown** EnumVARIANT) get__NewEnum;
				public new function HRESULT(ISpeechGrammarRules *self, int16* Dynamic) get_Dynamic;
				public new function HRESULT(ISpeechGrammarRules *self, BSTR RuleName, SpeechRuleAttributes Attributes, int32 RuleId, ISpeechGrammarRule** Rule) Add;
				public new function HRESULT(ISpeechGrammarRules *self) Commit;
				public new function HRESULT(ISpeechGrammarRules *self, BSTR* ErrorText, VARIANT* SaveStream) CommitAndSave;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRuleState : IDispatch
		{
			public const new Guid IID = .(0xd4286f2c, 0xee67, 0x45ae, 0xb9, 0x28, 0x28, 0xd6, 0x95, 0x36, 0x2e, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Rule(ISpeechGrammarRule** Rule) mut
			{
				return VT.get_Rule(&this, Rule);
			}
			public HRESULT get_Transitions(ISpeechGrammarRuleStateTransitions** Transitions) mut
			{
				return VT.get_Transitions(&this, Transitions);
			}
			public HRESULT AddWordTransition(ISpeechGrammarRuleState* DestState, BSTR Words, BSTR Separators, SpeechGrammarWordType Type, BSTR PropertyName, int32 PropertyId, VARIANT* PropertyValue, float Weight) mut
			{
				return VT.AddWordTransition(&this, DestState, Words, Separators, Type, PropertyName, PropertyId, PropertyValue, Weight);
			}
			public HRESULT AddRuleTransition(ISpeechGrammarRuleState* DestinationState, ISpeechGrammarRule* Rule, BSTR PropertyName, int32 PropertyId, VARIANT* PropertyValue, float Weight) mut
			{
				return VT.AddRuleTransition(&this, DestinationState, Rule, PropertyName, PropertyId, PropertyValue, Weight);
			}
			public HRESULT AddSpecialTransition(ISpeechGrammarRuleState* DestinationState, SpeechSpecialTransitionType Type, BSTR PropertyName, int32 PropertyId, VARIANT* PropertyValue, float Weight) mut
			{
				return VT.AddSpecialTransition(&this, DestinationState, Type, PropertyName, PropertyId, PropertyValue, Weight);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechGrammarRuleState *self, ISpeechGrammarRule** Rule) get_Rule;
				public new function HRESULT(ISpeechGrammarRuleState *self, ISpeechGrammarRuleStateTransitions** Transitions) get_Transitions;
				public new function HRESULT(ISpeechGrammarRuleState *self, ISpeechGrammarRuleState* DestState, BSTR Words, BSTR Separators, SpeechGrammarWordType Type, BSTR PropertyName, int32 PropertyId, VARIANT* PropertyValue, float Weight) AddWordTransition;
				public new function HRESULT(ISpeechGrammarRuleState *self, ISpeechGrammarRuleState* DestinationState, ISpeechGrammarRule* Rule, BSTR PropertyName, int32 PropertyId, VARIANT* PropertyValue, float Weight) AddRuleTransition;
				public new function HRESULT(ISpeechGrammarRuleState *self, ISpeechGrammarRuleState* DestinationState, SpeechSpecialTransitionType Type, BSTR PropertyName, int32 PropertyId, VARIANT* PropertyValue, float Weight) AddSpecialTransition;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRuleStateTransition : IDispatch
		{
			public const new Guid IID = .(0xcafd1db1, 0x41d1, 0x4a06, 0x98, 0x63, 0xe2, 0xe8, 0x1d, 0xa1, 0x7a, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(SpeechGrammarRuleStateTransitionType* Type) mut
			{
				return VT.get_Type(&this, Type);
			}
			public HRESULT get_Text(BSTR* Text) mut
			{
				return VT.get_Text(&this, Text);
			}
			public HRESULT get_Rule(ISpeechGrammarRule** Rule) mut
			{
				return VT.get_Rule(&this, Rule);
			}
			public HRESULT get_Weight(VARIANT* Weight) mut
			{
				return VT.get_Weight(&this, Weight);
			}
			public HRESULT get_PropertyName(BSTR* PropertyName) mut
			{
				return VT.get_PropertyName(&this, PropertyName);
			}
			public HRESULT get_PropertyId(int32* PropertyId) mut
			{
				return VT.get_PropertyId(&this, PropertyId);
			}
			public HRESULT get_PropertyValue(VARIANT* PropertyValue) mut
			{
				return VT.get_PropertyValue(&this, PropertyValue);
			}
			public HRESULT get_NextState(ISpeechGrammarRuleState** NextState) mut
			{
				return VT.get_NextState(&this, NextState);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, SpeechGrammarRuleStateTransitionType* Type) get_Type;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, BSTR* Text) get_Text;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, ISpeechGrammarRule** Rule) get_Rule;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, VARIANT* Weight) get_Weight;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, BSTR* PropertyName) get_PropertyName;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, int32* PropertyId) get_PropertyId;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, VARIANT* PropertyValue) get_PropertyValue;
				public new function HRESULT(ISpeechGrammarRuleStateTransition *self, ISpeechGrammarRuleState** NextState) get_NextState;
			}
		}
		[CRepr]
		public struct ISpeechGrammarRuleStateTransitions : IDispatch
		{
			public const new Guid IID = .(0xeabce657, 0x75bc, 0x44a2, 0xaa, 0x7f, 0xc5, 0x64, 0x76, 0x74, 0x29, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechGrammarRuleStateTransition** Transition) mut
			{
				return VT.Item(&this, Index, Transition);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechGrammarRuleStateTransitions *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechGrammarRuleStateTransitions *self, int32 Index, ISpeechGrammarRuleStateTransition** Transition) Item;
				public new function HRESULT(ISpeechGrammarRuleStateTransitions *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechTextSelectionInformation : IDispatch
		{
			public const new Guid IID = .(0x3b9c7e7a, 0x6eee, 0x4ded, 0x90, 0x92, 0x11, 0x65, 0x72, 0x79, 0xad, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ActiveOffset(int32 ActiveOffset) mut
			{
				return VT.put_ActiveOffset(&this, ActiveOffset);
			}
			public HRESULT get_ActiveOffset(int32* ActiveOffset) mut
			{
				return VT.get_ActiveOffset(&this, ActiveOffset);
			}
			public HRESULT put_ActiveLength(int32 ActiveLength) mut
			{
				return VT.put_ActiveLength(&this, ActiveLength);
			}
			public HRESULT get_ActiveLength(int32* ActiveLength) mut
			{
				return VT.get_ActiveLength(&this, ActiveLength);
			}
			public HRESULT put_SelectionOffset(int32 SelectionOffset) mut
			{
				return VT.put_SelectionOffset(&this, SelectionOffset);
			}
			public HRESULT get_SelectionOffset(int32* SelectionOffset) mut
			{
				return VT.get_SelectionOffset(&this, SelectionOffset);
			}
			public HRESULT put_SelectionLength(int32 SelectionLength) mut
			{
				return VT.put_SelectionLength(&this, SelectionLength);
			}
			public HRESULT get_SelectionLength(int32* SelectionLength) mut
			{
				return VT.get_SelectionLength(&this, SelectionLength);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32 ActiveOffset) put_ActiveOffset;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32* ActiveOffset) get_ActiveOffset;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32 ActiveLength) put_ActiveLength;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32* ActiveLength) get_ActiveLength;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32 SelectionOffset) put_SelectionOffset;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32* SelectionOffset) get_SelectionOffset;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32 SelectionLength) put_SelectionLength;
				public new function HRESULT(ISpeechTextSelectionInformation *self, int32* SelectionLength) get_SelectionLength;
			}
		}
		[CRepr]
		public struct ISpeechRecoResult : IDispatch
		{
			public const new Guid IID = .(0xed2879cf, 0xced9, 0x4ee6, 0xa5, 0x34, 0xde, 0x01, 0x91, 0xd5, 0x46, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RecoContext(ISpeechRecoContext** RecoContext) mut
			{
				return VT.get_RecoContext(&this, RecoContext);
			}
			public HRESULT get_Times(ISpeechRecoResultTimes** Times) mut
			{
				return VT.get_Times(&this, Times);
			}
			public HRESULT putref_AudioFormat(ISpeechAudioFormat* Format) mut
			{
				return VT.putref_AudioFormat(&this, Format);
			}
			public HRESULT get_AudioFormat(ISpeechAudioFormat** Format) mut
			{
				return VT.get_AudioFormat(&this, Format);
			}
			public HRESULT get_PhraseInfo(ISpeechPhraseInfo** PhraseInfo) mut
			{
				return VT.get_PhraseInfo(&this, PhraseInfo);
			}
			public HRESULT Alternates(int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) mut
			{
				return VT.Alternates(&this, RequestCount, StartElement, Elements, Alternates);
			}
			public HRESULT Audio(int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) mut
			{
				return VT.Audio(&this, StartElement, Elements, Stream);
			}
			public HRESULT SpeakAudio(int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) mut
			{
				return VT.SpeakAudio(&this, StartElement, Elements, Flags, StreamNumber);
			}
			public HRESULT SaveToMemory(VARIANT* ResultBlock) mut
			{
				return VT.SaveToMemory(&this, ResultBlock);
			}
			public HRESULT DiscardResultInfo(SpeechDiscardType ValueTypes) mut
			{
				return VT.DiscardResultInfo(&this, ValueTypes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecoResult *self, ISpeechRecoContext** RecoContext) get_RecoContext;
				public new function HRESULT(ISpeechRecoResult *self, ISpeechRecoResultTimes** Times) get_Times;
				public new function HRESULT(ISpeechRecoResult *self, ISpeechAudioFormat* Format) putref_AudioFormat;
				public new function HRESULT(ISpeechRecoResult *self, ISpeechAudioFormat** Format) get_AudioFormat;
				public new function HRESULT(ISpeechRecoResult *self, ISpeechPhraseInfo** PhraseInfo) get_PhraseInfo;
				public new function HRESULT(ISpeechRecoResult *self, int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) Alternates;
				public new function HRESULT(ISpeechRecoResult *self, int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) Audio;
				public new function HRESULT(ISpeechRecoResult *self, int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) SpeakAudio;
				public new function HRESULT(ISpeechRecoResult *self, VARIANT* ResultBlock) SaveToMemory;
				public new function HRESULT(ISpeechRecoResult *self, SpeechDiscardType ValueTypes) DiscardResultInfo;
			}
		}
		[CRepr]
		public struct ISpeechRecoResult2 : ISpeechRecoResult
		{
			public const new Guid IID = .(0x8e0a246d, 0xd3c8, 0x45de, 0x86, 0x57, 0x04, 0x29, 0x0c, 0x45, 0x8c, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTextFeedback(BSTR Feedback, int16 WasSuccessful) mut
			{
				return VT.SetTextFeedback(&this, Feedback, WasSuccessful);
			}
			[CRepr]
			public struct VTable : ISpeechRecoResult.VTable
			{
				public new function HRESULT(ISpeechRecoResult2 *self, BSTR Feedback, int16 WasSuccessful) SetTextFeedback;
			}
		}
		[CRepr]
		public struct ISpeechRecoResultTimes : IDispatch
		{
			public const new Guid IID = .(0x62b3b8fb, 0xf6e7, 0x41be, 0xbd, 0xcb, 0x05, 0x6b, 0x1c, 0x29, 0xef, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StreamTime(VARIANT* Time) mut
			{
				return VT.get_StreamTime(&this, Time);
			}
			public HRESULT get_Length(VARIANT* Length) mut
			{
				return VT.get_Length(&this, Length);
			}
			public HRESULT get_TickCount(int32* TickCount) mut
			{
				return VT.get_TickCount(&this, TickCount);
			}
			public HRESULT get_OffsetFromStart(VARIANT* OffsetFromStart) mut
			{
				return VT.get_OffsetFromStart(&this, OffsetFromStart);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecoResultTimes *self, VARIANT* Time) get_StreamTime;
				public new function HRESULT(ISpeechRecoResultTimes *self, VARIANT* Length) get_Length;
				public new function HRESULT(ISpeechRecoResultTimes *self, int32* TickCount) get_TickCount;
				public new function HRESULT(ISpeechRecoResultTimes *self, VARIANT* OffsetFromStart) get_OffsetFromStart;
			}
		}
		[CRepr]
		public struct ISpeechPhraseAlternate : IDispatch
		{
			public const new Guid IID = .(0x27864a2a, 0x2b9f, 0x4cb8, 0x92, 0xd3, 0x0d, 0x27, 0x22, 0xfd, 0x1e, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RecoResult(ISpeechRecoResult** RecoResult) mut
			{
				return VT.get_RecoResult(&this, RecoResult);
			}
			public HRESULT get_StartElementInResult(int32* StartElement) mut
			{
				return VT.get_StartElementInResult(&this, StartElement);
			}
			public HRESULT get_NumberOfElementsInResult(int32* NumberOfElements) mut
			{
				return VT.get_NumberOfElementsInResult(&this, NumberOfElements);
			}
			public HRESULT get_PhraseInfo(ISpeechPhraseInfo** PhraseInfo) mut
			{
				return VT.get_PhraseInfo(&this, PhraseInfo);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseAlternate *self, ISpeechRecoResult** RecoResult) get_RecoResult;
				public new function HRESULT(ISpeechPhraseAlternate *self, int32* StartElement) get_StartElementInResult;
				public new function HRESULT(ISpeechPhraseAlternate *self, int32* NumberOfElements) get_NumberOfElementsInResult;
				public new function HRESULT(ISpeechPhraseAlternate *self, ISpeechPhraseInfo** PhraseInfo) get_PhraseInfo;
				public new function HRESULT(ISpeechPhraseAlternate *self) Commit;
			}
		}
		[CRepr]
		public struct ISpeechPhraseAlternates : IDispatch
		{
			public const new Guid IID = .(0xb238b6d5, 0xf276, 0x4c3d, 0xa6, 0xc1, 0x29, 0x74, 0x80, 0x1c, 0x3c, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechPhraseAlternate** PhraseAlternate) mut
			{
				return VT.Item(&this, Index, PhraseAlternate);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseAlternates *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechPhraseAlternates *self, int32 Index, ISpeechPhraseAlternate** PhraseAlternate) Item;
				public new function HRESULT(ISpeechPhraseAlternates *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseInfo : IDispatch
		{
			public const new Guid IID = .(0x961559cf, 0x4e67, 0x4662, 0x8b, 0xf0, 0xd9, 0x3f, 0x1f, 0xcd, 0x61, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LanguageId(int32* LanguageId) mut
			{
				return VT.get_LanguageId(&this, LanguageId);
			}
			public HRESULT get_GrammarId(VARIANT* GrammarId) mut
			{
				return VT.get_GrammarId(&this, GrammarId);
			}
			public HRESULT get_StartTime(VARIANT* StartTime) mut
			{
				return VT.get_StartTime(&this, StartTime);
			}
			public HRESULT get_AudioStreamPosition(VARIANT* AudioStreamPosition) mut
			{
				return VT.get_AudioStreamPosition(&this, AudioStreamPosition);
			}
			public HRESULT get_AudioSizeBytes(int32* pAudioSizeBytes) mut
			{
				return VT.get_AudioSizeBytes(&this, pAudioSizeBytes);
			}
			public HRESULT get_RetainedSizeBytes(int32* RetainedSizeBytes) mut
			{
				return VT.get_RetainedSizeBytes(&this, RetainedSizeBytes);
			}
			public HRESULT get_AudioSizeTime(int32* AudioSizeTime) mut
			{
				return VT.get_AudioSizeTime(&this, AudioSizeTime);
			}
			public HRESULT get_Rule(ISpeechPhraseRule** Rule) mut
			{
				return VT.get_Rule(&this, Rule);
			}
			public HRESULT get_Properties(ISpeechPhraseProperties** Properties) mut
			{
				return VT.get_Properties(&this, Properties);
			}
			public HRESULT get_Elements(ISpeechPhraseElements** Elements) mut
			{
				return VT.get_Elements(&this, Elements);
			}
			public HRESULT get_Replacements(ISpeechPhraseReplacements** Replacements) mut
			{
				return VT.get_Replacements(&this, Replacements);
			}
			public HRESULT get_EngineId(BSTR* EngineIdGuid) mut
			{
				return VT.get_EngineId(&this, EngineIdGuid);
			}
			public HRESULT get_EnginePrivateData(VARIANT* PrivateData) mut
			{
				return VT.get_EnginePrivateData(&this, PrivateData);
			}
			public HRESULT SaveToMemory(VARIANT* PhraseBlock) mut
			{
				return VT.SaveToMemory(&this, PhraseBlock);
			}
			public HRESULT GetText(int32 StartElement, int32 Elements, int16 UseReplacements, BSTR* Text) mut
			{
				return VT.GetText(&this, StartElement, Elements, UseReplacements, Text);
			}
			public HRESULT GetDisplayAttributes(int32 StartElement, int32 Elements, int16 UseReplacements, SpeechDisplayAttributes* DisplayAttributes) mut
			{
				return VT.GetDisplayAttributes(&this, StartElement, Elements, UseReplacements, DisplayAttributes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseInfo *self, int32* LanguageId) get_LanguageId;
				public new function HRESULT(ISpeechPhraseInfo *self, VARIANT* GrammarId) get_GrammarId;
				public new function HRESULT(ISpeechPhraseInfo *self, VARIANT* StartTime) get_StartTime;
				public new function HRESULT(ISpeechPhraseInfo *self, VARIANT* AudioStreamPosition) get_AudioStreamPosition;
				public new function HRESULT(ISpeechPhraseInfo *self, int32* pAudioSizeBytes) get_AudioSizeBytes;
				public new function HRESULT(ISpeechPhraseInfo *self, int32* RetainedSizeBytes) get_RetainedSizeBytes;
				public new function HRESULT(ISpeechPhraseInfo *self, int32* AudioSizeTime) get_AudioSizeTime;
				public new function HRESULT(ISpeechPhraseInfo *self, ISpeechPhraseRule** Rule) get_Rule;
				public new function HRESULT(ISpeechPhraseInfo *self, ISpeechPhraseProperties** Properties) get_Properties;
				public new function HRESULT(ISpeechPhraseInfo *self, ISpeechPhraseElements** Elements) get_Elements;
				public new function HRESULT(ISpeechPhraseInfo *self, ISpeechPhraseReplacements** Replacements) get_Replacements;
				public new function HRESULT(ISpeechPhraseInfo *self, BSTR* EngineIdGuid) get_EngineId;
				public new function HRESULT(ISpeechPhraseInfo *self, VARIANT* PrivateData) get_EnginePrivateData;
				public new function HRESULT(ISpeechPhraseInfo *self, VARIANT* PhraseBlock) SaveToMemory;
				public new function HRESULT(ISpeechPhraseInfo *self, int32 StartElement, int32 Elements, int16 UseReplacements, BSTR* Text) GetText;
				public new function HRESULT(ISpeechPhraseInfo *self, int32 StartElement, int32 Elements, int16 UseReplacements, SpeechDisplayAttributes* DisplayAttributes) GetDisplayAttributes;
			}
		}
		[CRepr]
		public struct ISpeechPhraseElement : IDispatch
		{
			public const new Guid IID = .(0xe6176f96, 0xe373, 0x4801, 0xb2, 0x23, 0x3b, 0x62, 0xc0, 0x68, 0xc0, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AudioTimeOffset(int32* AudioTimeOffset) mut
			{
				return VT.get_AudioTimeOffset(&this, AudioTimeOffset);
			}
			public HRESULT get_AudioSizeTime(int32* AudioSizeTime) mut
			{
				return VT.get_AudioSizeTime(&this, AudioSizeTime);
			}
			public HRESULT get_AudioStreamOffset(int32* AudioStreamOffset) mut
			{
				return VT.get_AudioStreamOffset(&this, AudioStreamOffset);
			}
			public HRESULT get_AudioSizeBytes(int32* AudioSizeBytes) mut
			{
				return VT.get_AudioSizeBytes(&this, AudioSizeBytes);
			}
			public HRESULT get_RetainedStreamOffset(int32* RetainedStreamOffset) mut
			{
				return VT.get_RetainedStreamOffset(&this, RetainedStreamOffset);
			}
			public HRESULT get_RetainedSizeBytes(int32* RetainedSizeBytes) mut
			{
				return VT.get_RetainedSizeBytes(&this, RetainedSizeBytes);
			}
			public HRESULT get_DisplayText(BSTR* DisplayText) mut
			{
				return VT.get_DisplayText(&this, DisplayText);
			}
			public HRESULT get_LexicalForm(BSTR* LexicalForm) mut
			{
				return VT.get_LexicalForm(&this, LexicalForm);
			}
			public HRESULT get_Pronunciation(VARIANT* Pronunciation) mut
			{
				return VT.get_Pronunciation(&this, Pronunciation);
			}
			public HRESULT get_DisplayAttributes(SpeechDisplayAttributes* DisplayAttributes) mut
			{
				return VT.get_DisplayAttributes(&this, DisplayAttributes);
			}
			public HRESULT get_RequiredConfidence(SpeechEngineConfidence* RequiredConfidence) mut
			{
				return VT.get_RequiredConfidence(&this, RequiredConfidence);
			}
			public HRESULT get_ActualConfidence(SpeechEngineConfidence* ActualConfidence) mut
			{
				return VT.get_ActualConfidence(&this, ActualConfidence);
			}
			public HRESULT get_EngineConfidence(float* EngineConfidence) mut
			{
				return VT.get_EngineConfidence(&this, EngineConfidence);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseElement *self, int32* AudioTimeOffset) get_AudioTimeOffset;
				public new function HRESULT(ISpeechPhraseElement *self, int32* AudioSizeTime) get_AudioSizeTime;
				public new function HRESULT(ISpeechPhraseElement *self, int32* AudioStreamOffset) get_AudioStreamOffset;
				public new function HRESULT(ISpeechPhraseElement *self, int32* AudioSizeBytes) get_AudioSizeBytes;
				public new function HRESULT(ISpeechPhraseElement *self, int32* RetainedStreamOffset) get_RetainedStreamOffset;
				public new function HRESULT(ISpeechPhraseElement *self, int32* RetainedSizeBytes) get_RetainedSizeBytes;
				public new function HRESULT(ISpeechPhraseElement *self, BSTR* DisplayText) get_DisplayText;
				public new function HRESULT(ISpeechPhraseElement *self, BSTR* LexicalForm) get_LexicalForm;
				public new function HRESULT(ISpeechPhraseElement *self, VARIANT* Pronunciation) get_Pronunciation;
				public new function HRESULT(ISpeechPhraseElement *self, SpeechDisplayAttributes* DisplayAttributes) get_DisplayAttributes;
				public new function HRESULT(ISpeechPhraseElement *self, SpeechEngineConfidence* RequiredConfidence) get_RequiredConfidence;
				public new function HRESULT(ISpeechPhraseElement *self, SpeechEngineConfidence* ActualConfidence) get_ActualConfidence;
				public new function HRESULT(ISpeechPhraseElement *self, float* EngineConfidence) get_EngineConfidence;
			}
		}
		[CRepr]
		public struct ISpeechPhraseElements : IDispatch
		{
			public const new Guid IID = .(0x0626b328, 0x3478, 0x467d, 0xa0, 0xb3, 0xd0, 0x85, 0x3b, 0x93, 0xdd, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechPhraseElement** Element) mut
			{
				return VT.Item(&this, Index, Element);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseElements *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechPhraseElements *self, int32 Index, ISpeechPhraseElement** Element) Item;
				public new function HRESULT(ISpeechPhraseElements *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseReplacement : IDispatch
		{
			public const new Guid IID = .(0x2890a410, 0x53a7, 0x4fb5, 0x94, 0xec, 0x06, 0xd4, 0x99, 0x8e, 0x3d, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayAttributes(SpeechDisplayAttributes* DisplayAttributes) mut
			{
				return VT.get_DisplayAttributes(&this, DisplayAttributes);
			}
			public HRESULT get_Text(BSTR* Text) mut
			{
				return VT.get_Text(&this, Text);
			}
			public HRESULT get_FirstElement(int32* FirstElement) mut
			{
				return VT.get_FirstElement(&this, FirstElement);
			}
			public HRESULT get_NumberOfElements(int32* NumberOfElements) mut
			{
				return VT.get_NumberOfElements(&this, NumberOfElements);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseReplacement *self, SpeechDisplayAttributes* DisplayAttributes) get_DisplayAttributes;
				public new function HRESULT(ISpeechPhraseReplacement *self, BSTR* Text) get_Text;
				public new function HRESULT(ISpeechPhraseReplacement *self, int32* FirstElement) get_FirstElement;
				public new function HRESULT(ISpeechPhraseReplacement *self, int32* NumberOfElements) get_NumberOfElements;
			}
		}
		[CRepr]
		public struct ISpeechPhraseReplacements : IDispatch
		{
			public const new Guid IID = .(0x38bc662f, 0x2257, 0x4525, 0x95, 0x9e, 0x20, 0x69, 0xd2, 0x59, 0x6c, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechPhraseReplacement** Reps) mut
			{
				return VT.Item(&this, Index, Reps);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseReplacements *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechPhraseReplacements *self, int32 Index, ISpeechPhraseReplacement** Reps) Item;
				public new function HRESULT(ISpeechPhraseReplacements *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseProperty : IDispatch
		{
			public const new Guid IID = .(0xce563d48, 0x961e, 0x4732, 0xa2, 0xe1, 0x37, 0x8a, 0x42, 0xb4, 0x30, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Id(int32* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT get_Value(VARIANT* Value) mut
			{
				return VT.get_Value(&this, Value);
			}
			public HRESULT get_FirstElement(int32* FirstElement) mut
			{
				return VT.get_FirstElement(&this, FirstElement);
			}
			public HRESULT get_NumberOfElements(int32* NumberOfElements) mut
			{
				return VT.get_NumberOfElements(&this, NumberOfElements);
			}
			public HRESULT get_EngineConfidence(float* Confidence) mut
			{
				return VT.get_EngineConfidence(&this, Confidence);
			}
			public HRESULT get_Confidence(SpeechEngineConfidence* Confidence) mut
			{
				return VT.get_Confidence(&this, Confidence);
			}
			public HRESULT get_Parent(ISpeechPhraseProperty** ParentProperty) mut
			{
				return VT.get_Parent(&this, ParentProperty);
			}
			public HRESULT get_Children(ISpeechPhraseProperties** Children) mut
			{
				return VT.get_Children(&this, Children);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseProperty *self, BSTR* Name) get_Name;
				public new function HRESULT(ISpeechPhraseProperty *self, int32* Id) get_Id;
				public new function HRESULT(ISpeechPhraseProperty *self, VARIANT* Value) get_Value;
				public new function HRESULT(ISpeechPhraseProperty *self, int32* FirstElement) get_FirstElement;
				public new function HRESULT(ISpeechPhraseProperty *self, int32* NumberOfElements) get_NumberOfElements;
				public new function HRESULT(ISpeechPhraseProperty *self, float* Confidence) get_EngineConfidence;
				public new function HRESULT(ISpeechPhraseProperty *self, SpeechEngineConfidence* Confidence) get_Confidence;
				public new function HRESULT(ISpeechPhraseProperty *self, ISpeechPhraseProperty** ParentProperty) get_Parent;
				public new function HRESULT(ISpeechPhraseProperty *self, ISpeechPhraseProperties** Children) get_Children;
			}
		}
		[CRepr]
		public struct ISpeechPhraseProperties : IDispatch
		{
			public const new Guid IID = .(0x08166b47, 0x102e, 0x4b23, 0xa5, 0x99, 0xbd, 0xb9, 0x8d, 0xbf, 0xd1, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechPhraseProperty** Property) mut
			{
				return VT.Item(&this, Index, Property);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseProperties *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechPhraseProperties *self, int32 Index, ISpeechPhraseProperty** Property) Item;
				public new function HRESULT(ISpeechPhraseProperties *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechPhraseRule : IDispatch
		{
			public const new Guid IID = .(0xa7bfe112, 0xa4a0, 0x48d9, 0xb6, 0x02, 0xc3, 0x13, 0x84, 0x3f, 0x69, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Id(int32* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT get_FirstElement(int32* FirstElement) mut
			{
				return VT.get_FirstElement(&this, FirstElement);
			}
			public HRESULT get_NumberOfElements(int32* NumberOfElements) mut
			{
				return VT.get_NumberOfElements(&this, NumberOfElements);
			}
			public HRESULT get_Parent(ISpeechPhraseRule** Parent) mut
			{
				return VT.get_Parent(&this, Parent);
			}
			public HRESULT get_Children(ISpeechPhraseRules** Children) mut
			{
				return VT.get_Children(&this, Children);
			}
			public HRESULT get_Confidence(SpeechEngineConfidence* ActualConfidence) mut
			{
				return VT.get_Confidence(&this, ActualConfidence);
			}
			public HRESULT get_EngineConfidence(float* EngineConfidence) mut
			{
				return VT.get_EngineConfidence(&this, EngineConfidence);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseRule *self, BSTR* Name) get_Name;
				public new function HRESULT(ISpeechPhraseRule *self, int32* Id) get_Id;
				public new function HRESULT(ISpeechPhraseRule *self, int32* FirstElement) get_FirstElement;
				public new function HRESULT(ISpeechPhraseRule *self, int32* NumberOfElements) get_NumberOfElements;
				public new function HRESULT(ISpeechPhraseRule *self, ISpeechPhraseRule** Parent) get_Parent;
				public new function HRESULT(ISpeechPhraseRule *self, ISpeechPhraseRules** Children) get_Children;
				public new function HRESULT(ISpeechPhraseRule *self, SpeechEngineConfidence* ActualConfidence) get_Confidence;
				public new function HRESULT(ISpeechPhraseRule *self, float* EngineConfidence) get_EngineConfidence;
			}
		}
		[CRepr]
		public struct ISpeechPhraseRules : IDispatch
		{
			public const new Guid IID = .(0x9047d593, 0x01dd, 0x4b72, 0x81, 0xa3, 0xe4, 0xa0, 0xca, 0x69, 0xf4, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechPhraseRule** Rule) mut
			{
				return VT.Item(&this, Index, Rule);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseRules *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechPhraseRules *self, int32 Index, ISpeechPhraseRule** Rule) Item;
				public new function HRESULT(ISpeechPhraseRules *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechLexicon : IDispatch
		{
			public const new Guid IID = .(0x3da7627a, 0xc7ae, 0x4b23, 0x87, 0x08, 0x63, 0x8c, 0x50, 0x36, 0x2c, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GenerationId(int32* GenerationId) mut
			{
				return VT.get_GenerationId(&this, GenerationId);
			}
			public HRESULT GetWords(SpeechLexiconType Flags, int32* GenerationID, ISpeechLexiconWords** Words) mut
			{
				return VT.GetWords(&this, Flags, GenerationID, Words);
			}
			public HRESULT AddPronunciation(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) mut
			{
				return VT.AddPronunciation(&this, bstrWord, LangId, PartOfSpeech, bstrPronunciation);
			}
			public HRESULT AddPronunciationByPhoneIds(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, VARIANT* PhoneIds) mut
			{
				return VT.AddPronunciationByPhoneIds(&this, bstrWord, LangId, PartOfSpeech, PhoneIds);
			}
			public HRESULT RemovePronunciation(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) mut
			{
				return VT.RemovePronunciation(&this, bstrWord, LangId, PartOfSpeech, bstrPronunciation);
			}
			public HRESULT RemovePronunciationByPhoneIds(BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, VARIANT* PhoneIds) mut
			{
				return VT.RemovePronunciationByPhoneIds(&this, bstrWord, LangId, PartOfSpeech, PhoneIds);
			}
			public HRESULT GetPronunciations(BSTR bstrWord, int32 LangId, SpeechLexiconType TypeFlags, ISpeechLexiconPronunciations** ppPronunciations) mut
			{
				return VT.GetPronunciations(&this, bstrWord, LangId, TypeFlags, ppPronunciations);
			}
			public HRESULT GetGenerationChange(int32* GenerationID, ISpeechLexiconWords** ppWords) mut
			{
				return VT.GetGenerationChange(&this, GenerationID, ppWords);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechLexicon *self, int32* GenerationId) get_GenerationId;
				public new function HRESULT(ISpeechLexicon *self, SpeechLexiconType Flags, int32* GenerationID, ISpeechLexiconWords** Words) GetWords;
				public new function HRESULT(ISpeechLexicon *self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) AddPronunciation;
				public new function HRESULT(ISpeechLexicon *self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, VARIANT* PhoneIds) AddPronunciationByPhoneIds;
				public new function HRESULT(ISpeechLexicon *self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, BSTR bstrPronunciation) RemovePronunciation;
				public new function HRESULT(ISpeechLexicon *self, BSTR bstrWord, int32 LangId, SpeechPartOfSpeech PartOfSpeech, VARIANT* PhoneIds) RemovePronunciationByPhoneIds;
				public new function HRESULT(ISpeechLexicon *self, BSTR bstrWord, int32 LangId, SpeechLexiconType TypeFlags, ISpeechLexiconPronunciations** ppPronunciations) GetPronunciations;
				public new function HRESULT(ISpeechLexicon *self, int32* GenerationID, ISpeechLexiconWords** ppWords) GetGenerationChange;
			}
		}
		[CRepr]
		public struct ISpeechLexiconWords : IDispatch
		{
			public const new Guid IID = .(0x8d199862, 0x415e, 0x47d5, 0xac, 0x4f, 0xfa, 0xa6, 0x08, 0xb4, 0x24, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechLexiconWord** Word) mut
			{
				return VT.Item(&this, Index, Word);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechLexiconWords *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechLexiconWords *self, int32 Index, ISpeechLexiconWord** Word) Item;
				public new function HRESULT(ISpeechLexiconWords *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechLexiconWord : IDispatch
		{
			public const new Guid IID = .(0x4e5b933c, 0xc9be, 0x48ed, 0x88, 0x42, 0x1e, 0xe5, 0x1b, 0xb1, 0xd4, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LangId(int32* LangId) mut
			{
				return VT.get_LangId(&this, LangId);
			}
			public HRESULT get_Type(SpeechWordType* WordType) mut
			{
				return VT.get_Type(&this, WordType);
			}
			public HRESULT get_Word(BSTR* Word) mut
			{
				return VT.get_Word(&this, Word);
			}
			public HRESULT get_Pronunciations(ISpeechLexiconPronunciations** Pronunciations) mut
			{
				return VT.get_Pronunciations(&this, Pronunciations);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechLexiconWord *self, int32* LangId) get_LangId;
				public new function HRESULT(ISpeechLexiconWord *self, SpeechWordType* WordType) get_Type;
				public new function HRESULT(ISpeechLexiconWord *self, BSTR* Word) get_Word;
				public new function HRESULT(ISpeechLexiconWord *self, ISpeechLexiconPronunciations** Pronunciations) get_Pronunciations;
			}
		}
		[CRepr]
		public struct ISpeechLexiconPronunciations : IDispatch
		{
			public const new Guid IID = .(0x72829128, 0x5682, 0x4704, 0xa0, 0xd4, 0x3e, 0x2b, 0xb6, 0xf2, 0xea, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(int32 Index, ISpeechLexiconPronunciation** Pronunciation) mut
			{
				return VT.Item(&this, Index, Pronunciation);
			}
			public HRESULT get__NewEnum(IUnknown** EnumVARIANT) mut
			{
				return VT.get__NewEnum(&this, EnumVARIANT);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechLexiconPronunciations *self, int32* Count) get_Count;
				public new function HRESULT(ISpeechLexiconPronunciations *self, int32 Index, ISpeechLexiconPronunciation** Pronunciation) Item;
				public new function HRESULT(ISpeechLexiconPronunciations *self, IUnknown** EnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISpeechLexiconPronunciation : IDispatch
		{
			public const new Guid IID = .(0x95252c5d, 0x9e43, 0x4f4a, 0x98, 0x99, 0x48, 0xee, 0x73, 0x35, 0x2f, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(SpeechLexiconType* LexiconType) mut
			{
				return VT.get_Type(&this, LexiconType);
			}
			public HRESULT get_LangId(int32* LangId) mut
			{
				return VT.get_LangId(&this, LangId);
			}
			public HRESULT get_PartOfSpeech(SpeechPartOfSpeech* PartOfSpeech) mut
			{
				return VT.get_PartOfSpeech(&this, PartOfSpeech);
			}
			public HRESULT get_PhoneIds(VARIANT* PhoneIds) mut
			{
				return VT.get_PhoneIds(&this, PhoneIds);
			}
			public HRESULT get_Symbolic(BSTR* Symbolic) mut
			{
				return VT.get_Symbolic(&this, Symbolic);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechLexiconPronunciation *self, SpeechLexiconType* LexiconType) get_Type;
				public new function HRESULT(ISpeechLexiconPronunciation *self, int32* LangId) get_LangId;
				public new function HRESULT(ISpeechLexiconPronunciation *self, SpeechPartOfSpeech* PartOfSpeech) get_PartOfSpeech;
				public new function HRESULT(ISpeechLexiconPronunciation *self, VARIANT* PhoneIds) get_PhoneIds;
				public new function HRESULT(ISpeechLexiconPronunciation *self, BSTR* Symbolic) get_Symbolic;
			}
		}
		[CRepr]
		public struct ISpeechXMLRecoResult : ISpeechRecoResult
		{
			public const new Guid IID = .(0xaaec54af, 0x8f85, 0x4924, 0x94, 0x4d, 0xb7, 0x9d, 0x39, 0xd7, 0x2e, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXMLResult(SPXMLRESULTOPTIONS Options, BSTR* pResult) mut
			{
				return VT.GetXMLResult(&this, Options, pResult);
			}
			public HRESULT GetXMLErrorInfo(int32* LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, int32* ResultCode, int16* IsError) mut
			{
				return VT.GetXMLErrorInfo(&this, LineNumber, ScriptLine, Source, Description, ResultCode, IsError);
			}
			[CRepr]
			public struct VTable : ISpeechRecoResult.VTable
			{
				public new function HRESULT(ISpeechXMLRecoResult *self, SPXMLRESULTOPTIONS Options, BSTR* pResult) GetXMLResult;
				public new function HRESULT(ISpeechXMLRecoResult *self, int32* LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, int32* ResultCode, int16* IsError) GetXMLErrorInfo;
			}
		}
		[CRepr]
		public struct ISpeechRecoResultDispatch : IDispatch
		{
			public const new Guid IID = .(0x6d60eb64, 0xaced, 0x40a6, 0xbb, 0xf3, 0x4e, 0x55, 0x7f, 0x71, 0xde, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RecoContext(ISpeechRecoContext** RecoContext) mut
			{
				return VT.get_RecoContext(&this, RecoContext);
			}
			public HRESULT get_Times(ISpeechRecoResultTimes** Times) mut
			{
				return VT.get_Times(&this, Times);
			}
			public HRESULT putref_AudioFormat(ISpeechAudioFormat* Format) mut
			{
				return VT.putref_AudioFormat(&this, Format);
			}
			public HRESULT get_AudioFormat(ISpeechAudioFormat** Format) mut
			{
				return VT.get_AudioFormat(&this, Format);
			}
			public HRESULT get_PhraseInfo(ISpeechPhraseInfo** PhraseInfo) mut
			{
				return VT.get_PhraseInfo(&this, PhraseInfo);
			}
			public HRESULT Alternates(int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) mut
			{
				return VT.Alternates(&this, RequestCount, StartElement, Elements, Alternates);
			}
			public HRESULT Audio(int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) mut
			{
				return VT.Audio(&this, StartElement, Elements, Stream);
			}
			public HRESULT SpeakAudio(int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) mut
			{
				return VT.SpeakAudio(&this, StartElement, Elements, Flags, StreamNumber);
			}
			public HRESULT SaveToMemory(VARIANT* ResultBlock) mut
			{
				return VT.SaveToMemory(&this, ResultBlock);
			}
			public HRESULT DiscardResultInfo(SpeechDiscardType ValueTypes) mut
			{
				return VT.DiscardResultInfo(&this, ValueTypes);
			}
			public HRESULT GetXMLResult(SPXMLRESULTOPTIONS Options, BSTR* pResult) mut
			{
				return VT.GetXMLResult(&this, Options, pResult);
			}
			public HRESULT GetXMLErrorInfo(int32* LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, HRESULT* ResultCode, int16* IsError) mut
			{
				return VT.GetXMLErrorInfo(&this, LineNumber, ScriptLine, Source, Description, ResultCode, IsError);
			}
			public HRESULT SetTextFeedback(BSTR Feedback, int16 WasSuccessful) mut
			{
				return VT.SetTextFeedback(&this, Feedback, WasSuccessful);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechRecoResultDispatch *self, ISpeechRecoContext** RecoContext) get_RecoContext;
				public new function HRESULT(ISpeechRecoResultDispatch *self, ISpeechRecoResultTimes** Times) get_Times;
				public new function HRESULT(ISpeechRecoResultDispatch *self, ISpeechAudioFormat* Format) putref_AudioFormat;
				public new function HRESULT(ISpeechRecoResultDispatch *self, ISpeechAudioFormat** Format) get_AudioFormat;
				public new function HRESULT(ISpeechRecoResultDispatch *self, ISpeechPhraseInfo** PhraseInfo) get_PhraseInfo;
				public new function HRESULT(ISpeechRecoResultDispatch *self, int32 RequestCount, int32 StartElement, int32 Elements, ISpeechPhraseAlternates** Alternates) Alternates;
				public new function HRESULT(ISpeechRecoResultDispatch *self, int32 StartElement, int32 Elements, ISpeechMemoryStream** Stream) Audio;
				public new function HRESULT(ISpeechRecoResultDispatch *self, int32 StartElement, int32 Elements, SpeechVoiceSpeakFlags Flags, int32* StreamNumber) SpeakAudio;
				public new function HRESULT(ISpeechRecoResultDispatch *self, VARIANT* ResultBlock) SaveToMemory;
				public new function HRESULT(ISpeechRecoResultDispatch *self, SpeechDiscardType ValueTypes) DiscardResultInfo;
				public new function HRESULT(ISpeechRecoResultDispatch *self, SPXMLRESULTOPTIONS Options, BSTR* pResult) GetXMLResult;
				public new function HRESULT(ISpeechRecoResultDispatch *self, int32* LineNumber, BSTR* ScriptLine, BSTR* Source, BSTR* Description, HRESULT* ResultCode, int16* IsError) GetXMLErrorInfo;
				public new function HRESULT(ISpeechRecoResultDispatch *self, BSTR Feedback, int16 WasSuccessful) SetTextFeedback;
			}
		}
		[CRepr]
		public struct ISpeechPhraseInfoBuilder : IDispatch
		{
			public const new Guid IID = .(0x3b151836, 0xdf3a, 0x4e0a, 0x84, 0x6c, 0xd2, 0xad, 0xc9, 0x33, 0x43, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestorePhraseFromMemory(VARIANT* PhraseInMemory, ISpeechPhraseInfo** PhraseInfo) mut
			{
				return VT.RestorePhraseFromMemory(&this, PhraseInMemory, PhraseInfo);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhraseInfoBuilder *self, VARIANT* PhraseInMemory, ISpeechPhraseInfo** PhraseInfo) RestorePhraseFromMemory;
			}
		}
		[CRepr]
		public struct ISpeechPhoneConverter : IDispatch
		{
			public const new Guid IID = .(0xc3e4f353, 0x433f, 0x43d6, 0x89, 0xa1, 0x6a, 0x62, 0xa7, 0x05, 0x4c, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LanguageId(int32* LanguageId) mut
			{
				return VT.get_LanguageId(&this, LanguageId);
			}
			public HRESULT put_LanguageId(int32 LanguageId) mut
			{
				return VT.put_LanguageId(&this, LanguageId);
			}
			public HRESULT PhoneToId(BSTR Phonemes, VARIANT* IdArray) mut
			{
				return VT.PhoneToId(&this, Phonemes, IdArray);
			}
			public HRESULT IdToPhone(VARIANT IdArray, BSTR* Phonemes) mut
			{
				return VT.IdToPhone(&this, IdArray, Phonemes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISpeechPhoneConverter *self, int32* LanguageId) get_LanguageId;
				public new function HRESULT(ISpeechPhoneConverter *self, int32 LanguageId) put_LanguageId;
				public new function HRESULT(ISpeechPhoneConverter *self, BSTR Phonemes, VARIANT* IdArray) PhoneToId;
				public new function HRESULT(ISpeechPhoneConverter *self, VARIANT IdArray, BSTR* Phonemes) IdToPhone;
			}
		}
		
	}
}
