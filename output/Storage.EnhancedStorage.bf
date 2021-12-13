using System;

// namespace Storage.EnhancedStorage
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid GUID_DEVINTERFACE_ENHANCED_STORAGE_SILO = .(0x3897f6a4, 0xfd35, 0x4bc8, 0xa0, 0xb7, 0x5d, 0xbb, 0xa3, 0x6a, 0xda, 0xfa);
		public const Guid WPD_CATEGORY_ENHANCED_STORAGE = .(0x91248166, 0xb832, 0x4ad4, 0xba, 0xa4, 0x7c, 0xa0, 0xb6, 0xb2, 0x79, 0x8c);
		public const uint32 ENHANCED_STORAGE_AUTHN_STATE_UNKNOWN = 0;
		public const uint32 ENHANCED_STORAGE_AUTHN_STATE_NO_AUTHENTICATION_REQUIRED = 1;
		public const uint32 ENHANCED_STORAGE_AUTHN_STATE_NOT_AUTHENTICATED = 2;
		public const uint32 ENHANCED_STORAGE_AUTHN_STATE_AUTHENTICATED = 3;
		public const uint32 ENHANCED_STORAGE_AUTHN_STATE_AUTHENTICATION_DENIED = 2147483649;
		public const uint32 ENHANCED_STORAGE_AUTHN_STATE_DEVICE_ERROR = 2147483650;
		public const uint32 CERT_TYPE_EMPTY = 0;
		public const uint32 CERT_TYPE_ASCm = 1;
		public const uint32 CERT_TYPE_PCp = 2;
		public const uint32 CERT_TYPE_ASCh = 3;
		public const uint32 CERT_TYPE_HCh = 4;
		public const uint32 CERT_TYPE_SIGNER = 6;
		public const uint32 CERT_VALIDATION_POLICY_RESERVED = 0;
		public const uint32 CERT_VALIDATION_POLICY_NONE = 1;
		public const uint32 CERT_VALIDATION_POLICY_BASIC = 2;
		public const uint32 CERT_VALIDATION_POLICY_EXTENDED = 3;
		public const uint32 CERT_CAPABILITY_HASH_ALG = 1;
		public const uint32 CERT_CAPABILITY_ASYMMETRIC_KEY_CRYPTOGRAPHY = 2;
		public const uint32 CERT_CAPABILITY_SIGNATURE_ALG = 3;
		public const uint32 CERT_CAPABILITY_CERTIFICATE_SUPPORT = 4;
		public const uint32 CERT_CAPABILITY_OPTIONAL_FEATURES = 5;
		public const uint32 CERT_MAX_CAPABILITY = 255;
		public const uint32 AUDIO_CHANNELCOUNT_MONO = 1;
		public const uint32 AUDIO_CHANNELCOUNT_STEREO = 2;
		public const uint32 CREATOROPENWITHUIOPTION_HIDDEN = 0;
		public const uint32 CREATOROPENWITHUIOPTION_VISIBLE = 1;
		public const uint32 ISDEFAULTSAVE_NONE = 0;
		public const uint32 ISDEFAULTSAVE_OWNER = 1;
		public const uint32 ISDEFAULTSAVE_NONOWNER = 2;
		public const uint32 ISDEFAULTSAVE_BOTH = 3;
		public const uint32 FILEOFFLINEAVAILABILITYSTATUS_NOTAVAILABLEOFFLINE = 0;
		public const uint32 FILEOFFLINEAVAILABILITYSTATUS_PARTIAL = 1;
		public const uint32 FILEOFFLINEAVAILABILITYSTATUS_COMPLETE = 2;
		public const uint32 FILEOFFLINEAVAILABILITYSTATUS_COMPLETE_PINNED = 3;
		public const uint32 FILEOFFLINEAVAILABILITYSTATUS_EXCLUDED = 4;
		public const uint32 FILEOFFLINEAVAILABILITYSTATUS_FOLDER_EMPTY = 5;
		public const int32 FLAGSTATUS_NOTFLAGGED = 0;
		public const int32 FLAGSTATUS_COMPLETED = 1;
		public const int32 FLAGSTATUS_FOLLOWUP = 2;
		public const int32 IMPORTANCE_LOW_MIN = 0;
		public const int32 IMPORTANCE_LOW_SET = 1;
		public const int32 IMPORTANCE_LOW_MAX = 1;
		public const int32 IMPORTANCE_NORMAL_MIN = 2;
		public const int32 IMPORTANCE_NORMAL_SET = 3;
		public const int32 IMPORTANCE_NORMAL_MAX = 4;
		public const int32 IMPORTANCE_HIGH_MIN = 5;
		public const int32 IMPORTANCE_HIGH_SET = 5;
		public const int32 IMPORTANCE_HIGH_MAX = 5;
		public const uint32 OFFLINEAVAILABILITY_NOT_AVAILABLE = 0;
		public const uint32 OFFLINEAVAILABILITY_AVAILABLE = 1;
		public const uint32 OFFLINEAVAILABILITY_ALWAYS_AVAILABLE = 2;
		public const uint32 OFFLINESTATUS_ONLINE = 0;
		public const uint32 OFFLINESTATUS_OFFLINE = 1;
		public const uint32 OFFLINESTATUS_OFFLINE_FORCED = 2;
		public const uint32 OFFLINESTATUS_OFFLINE_SLOW = 3;
		public const uint32 OFFLINESTATUS_OFFLINE_ERROR = 4;
		public const uint32 OFFLINESTATUS_OFFLINE_ITEM_VERSION_CONFLICT = 5;
		public const uint32 OFFLINESTATUS_OFFLINE_SUSPENDED = 6;
		public const uint32 RATING_ONE_STAR_MIN = 1;
		public const uint32 RATING_ONE_STAR_SET = 1;
		public const uint32 RATING_ONE_STAR_MAX = 12;
		public const uint32 RATING_TWO_STARS_MIN = 13;
		public const uint32 RATING_TWO_STARS_SET = 25;
		public const uint32 RATING_TWO_STARS_MAX = 37;
		public const uint32 RATING_THREE_STARS_MIN = 38;
		public const uint32 RATING_THREE_STARS_SET = 50;
		public const uint32 RATING_THREE_STARS_MAX = 62;
		public const uint32 RATING_FOUR_STARS_MIN = 63;
		public const uint32 RATING_FOUR_STARS_SET = 75;
		public const uint32 RATING_FOUR_STARS_MAX = 87;
		public const uint32 RATING_FIVE_STARS_MIN = 88;
		public const uint32 RATING_FIVE_STARS_SET = 99;
		public const uint32 RATING_FIVE_STARS_MAX = 99;
		public const uint32 SHARINGSTATUS_NOTSHARED = 0;
		public const uint32 SHARINGSTATUS_SHARED = 1;
		public const uint32 SHARINGSTATUS_PRIVATE = 2;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_NOTSHARED = 0;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_SHARED = 1;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_PRIVATE = 2;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_PUBLIC = 3;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_SHARED_OWNED = 4;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_SHARED_COOWNED = 5;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_PUBLIC_OWNED = 6;
		public const uint32 STORAGE_PROVIDER_SHARINGSTATUS_PUBLIC_COOWNED = 7;
		public const uint32 BLUETOOTH_ADDRESS_TYPE_PUBLIC = 0;
		public const uint32 BLUETOOTH_ADDRESS_TYPE_RANDOM = 1;
		public const uint32 BLUETOOTH_CACHE_MODE_CACHED = 0;
		public const uint32 BLUETOOTH_CACHED_MODE_UNCACHED = 1;
		public const uint32 PLAYBACKSTATE_UNKNOWN = 0;
		public const uint32 PLAYBACKSTATE_STOPPED = 1;
		public const uint32 PLAYBACKSTATE_PLAYING = 2;
		public const uint32 PLAYBACKSTATE_TRANSITIONING = 3;
		public const uint32 PLAYBACKSTATE_PAUSED = 4;
		public const uint32 PLAYBACKSTATE_RECORDINGPAUSED = 5;
		public const uint32 PLAYBACKSTATE_RECORDING = 6;
		public const uint32 PLAYBACKSTATE_NOMEDIA = 7;
		public const int32 LINK_STATUS_RESOLVED = 1;
		public const int32 LINK_STATUS_BROKEN = 2;
		public const uint32 PHOTO_CONTRAST_NORMAL = 0;
		public const uint32 PHOTO_CONTRAST_SOFT = 1;
		public const uint32 PHOTO_CONTRAST_HARD = 2;
		public const uint32 PHOTO_EXPOSUREPROGRAM_UNKNOWN = 0;
		public const uint32 PHOTO_EXPOSUREPROGRAM_MANUAL = 1;
		public const uint32 PHOTO_EXPOSUREPROGRAM_NORMAL = 2;
		public const uint32 PHOTO_EXPOSUREPROGRAM_APERTURE = 3;
		public const uint32 PHOTO_EXPOSUREPROGRAM_SHUTTER = 4;
		public const uint32 PHOTO_EXPOSUREPROGRAM_CREATIVE = 5;
		public const uint32 PHOTO_EXPOSUREPROGRAM_ACTION = 6;
		public const uint32 PHOTO_EXPOSUREPROGRAM_PORTRAIT = 7;
		public const uint32 PHOTO_EXPOSUREPROGRAM_LANDSCAPE = 8;
		public const uint32 PHOTO_FLASH_NONE = 0;
		public const uint32 PHOTO_FLASH_FLASH = 1;
		public const uint32 PHOTO_FLASH_WITHOUTSTROBE = 5;
		public const uint32 PHOTO_FLASH_WITHSTROBE = 7;
		public const uint32 PHOTO_FLASH_FLASH_COMPULSORY = 9;
		public const uint32 PHOTO_FLASH_FLASH_COMPULSORY_NORETURNLIGHT = 13;
		public const uint32 PHOTO_FLASH_FLASH_COMPULSORY_RETURNLIGHT = 15;
		public const uint32 PHOTO_FLASH_NONE_COMPULSORY = 16;
		public const uint32 PHOTO_FLASH_NONE_AUTO = 24;
		public const uint32 PHOTO_FLASH_FLASH_AUTO = 25;
		public const uint32 PHOTO_FLASH_FLASH_AUTO_NORETURNLIGHT = 29;
		public const uint32 PHOTO_FLASH_FLASH_AUTO_RETURNLIGHT = 31;
		public const uint32 PHOTO_FLASH_NOFUNCTION = 32;
		public const uint32 PHOTO_FLASH_FLASH_REDEYE = 65;
		public const uint32 PHOTO_FLASH_FLASH_REDEYE_NORETURNLIGHT = 69;
		public const uint32 PHOTO_FLASH_FLASH_REDEYE_RETURNLIGHT = 71;
		public const uint32 PHOTO_FLASH_FLASH_COMPULSORY_REDEYE = 73;
		public const uint32 PHOTO_FLASH_FLASH_COMPULSORY_REDEYE_NORETURNLIGHT = 77;
		public const uint32 PHOTO_FLASH_FLASH_COMPULSORY_REDEYE_RETURNLIGHT = 79;
		public const uint32 PHOTO_FLASH_FLASH_AUTO_REDEYE = 89;
		public const uint32 PHOTO_FLASH_FLASH_AUTO_REDEYE_NORETURNLIGHT = 93;
		public const uint32 PHOTO_FLASH_FLASH_AUTO_REDEYE_RETURNLIGHT = 95;
		public const double PHOTO_GAINCONTROL_NONE = 0;
		public const double PHOTO_GAINCONTROL_LOWGAINUP = 1;
		public const double PHOTO_GAINCONTROL_HIGHGAINUP = 2;
		public const double PHOTO_GAINCONTROL_LOWGAINDOWN = 3;
		public const double PHOTO_GAINCONTROL_HIGHGAINDOWN = 4;
		public const uint32 PHOTO_LIGHTSOURCE_UNKNOWN = 0;
		public const uint32 PHOTO_LIGHTSOURCE_DAYLIGHT = 1;
		public const uint32 PHOTO_LIGHTSOURCE_FLUORESCENT = 2;
		public const uint32 PHOTO_LIGHTSOURCE_TUNGSTEN = 3;
		public const uint32 PHOTO_LIGHTSOURCE_STANDARD_A = 17;
		public const uint32 PHOTO_LIGHTSOURCE_STANDARD_B = 18;
		public const uint32 PHOTO_LIGHTSOURCE_STANDARD_C = 19;
		public const uint32 PHOTO_LIGHTSOURCE_D55 = 20;
		public const uint32 PHOTO_LIGHTSOURCE_D65 = 21;
		public const uint32 PHOTO_LIGHTSOURCE_D75 = 22;
		public const uint32 PHOTO_PROGRAMMODE_NOTDEFINED = 0;
		public const uint32 PHOTO_PROGRAMMODE_MANUAL = 1;
		public const uint32 PHOTO_PROGRAMMODE_NORMAL = 2;
		public const uint32 PHOTO_PROGRAMMODE_APERTURE = 3;
		public const uint32 PHOTO_PROGRAMMODE_SHUTTER = 4;
		public const uint32 PHOTO_PROGRAMMODE_CREATIVE = 5;
		public const uint32 PHOTO_PROGRAMMODE_ACTION = 6;
		public const uint32 PHOTO_PROGRAMMODE_PORTRAIT = 7;
		public const uint32 PHOTO_PROGRAMMODE_LANDSCAPE = 8;
		public const uint32 PHOTO_SATURATION_NORMAL = 0;
		public const uint32 PHOTO_SATURATION_LOW = 1;
		public const uint32 PHOTO_SATURATION_HIGH = 2;
		public const uint32 PHOTO_SHARPNESS_NORMAL = 0;
		public const uint32 PHOTO_SHARPNESS_SOFT = 1;
		public const uint32 PHOTO_SHARPNESS_HARD = 2;
		public const uint32 PHOTO_WHITEBALANCE_AUTO = 0;
		public const uint32 PHOTO_WHITEBALANCE_MANUAL = 1;
		public const uint32 APPUSERMODEL_STARTPINOPTION_DEFAULT = 0;
		public const uint32 APPUSERMODEL_STARTPINOPTION_NOPINONINSTALL = 1;
		public const uint32 APPUSERMODEL_STARTPINOPTION_USERPINNED = 2;
		public const uint32 SYNC_HANDLERTYPE_OTHER = 0;
		public const uint32 SYNC_HANDLERTYPE_PROGRAMS = 1;
		public const uint32 SYNC_HANDLERTYPE_DEVICES = 2;
		public const uint32 SYNC_HANDLERTYPE_FOLDERS = 3;
		public const uint32 SYNC_HANDLERTYPE_WEBSERVICES = 4;
		public const uint32 SYNC_HANDLERTYPE_COMPUTERS = 5;
		public const uint32 SYNC_STATE_NOTSETUP = 0;
		public const uint32 SYNC_STATE_SYNCNOTRUN = 1;
		public const uint32 SYNC_STATE_IDLE = 2;
		public const uint32 SYNC_STATE_ERROR = 3;
		public const uint32 SYNC_STATE_PENDING = 4;
		public const uint32 SYNC_STATE_SYNCING = 5;
		public const uint32 ACT_AUTHORIZE_ON_RESUME = 1;
		public const uint32 ACT_AUTHORIZE_ON_SESSION_UNLOCK = 2;
		public const uint32 ACT_UNAUTHORIZE_ON_SUSPEND = 1;
		public const uint32 ACT_UNAUTHORIZE_ON_SESSION_LOCK = 2;
		public const uint32 ES_RESERVED_COM_ERROR_START = 0;
		public const uint32 ES_RESERVED_COM_ERROR_END = 511;
		public const uint32 ES_GENERAL_ERROR_START = 512;
		public const uint32 ES_GENERAL_ERROR_END = 1023;
		public const uint32 ES_AUTHN_ERROR_START = 1024;
		public const uint32 ES_AUTHN_ERROR_END = 1279;
		public const uint32 ES_RESERVED_SILO_ERROR_START = 1280;
		public const uint32 ES_RESERVED_SILO_ERROR_END = 4095;
		public const uint32 ES_PW_SILO_ERROR_START = 4352;
		public const uint32 ES_PW_SILO_ERROR_END = 4607;
		public const uint32 ES_RESERVED_SILO_SPECIFIC_ERROR_START = 4608;
		public const uint32 ES_RESERVED_SILO_SPECIFIC_ERROR_END = 49151;
		public const uint32 ES_VENDOR_ERROR_START = 49152;
		public const uint32 ES_VENDOR_ERROR_END = 65535;
		public const uint32 FACILITY_ENHANCED_STORAGE = 4;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum ACT_AUTHORIZATION_STATE_VALUE : int32
		{
			ACT_UNAUTHORIZED = 0,
			ACT_AUTHORIZED = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct ENHANCED_STORAGE_PASSWORD_SILO_INFORMATION
		{
			public uint8 CurrentAdminFailures;
			public uint8 CurrentUserFailures;
			public uint32 TotalUserAuthenticationCount;
			public uint32 TotalAdminAuthenticationCount;
			public BOOL FipsCompliant;
			public BOOL SecurityIDAvailable;
			public BOOL InitializeInProgress;
			public BOOL ITMSArmed;
			public BOOL ITMSArmable;
			public BOOL UserCreated;
			public BOOL ResetOnPORDefault;
			public BOOL ResetOnPORCurrent;
			public uint8 MaxAdminFailures;
			public uint8 MaxUserFailures;
			public uint32 TimeToCompleteInitialization;
			public uint32 TimeRemainingToCompleteInitialization;
			public uint32 MinTimeToAuthenticate;
			public uint8 MaxAdminPasswordSize;
			public uint8 MinAdminPasswordSize;
			public uint8 MaxAdminHintSize;
			public uint8 MaxUserPasswordSize;
			public uint8 MinUserPasswordSize;
			public uint8 MaxUserHintSize;
			public uint8 MaxUserNameSize;
			public uint8 MaxSiloNameSize;
			public uint16 MaxChallengeSize;
		}
		[CRepr]
		public struct ACT_AUTHORIZATION_STATE
		{
			public uint32 ulState;
		}
		[CRepr]
		public struct SILO_INFO
		{
			public uint32 ulSTID;
			public uint8 SpecificationMajor;
			public uint8 SpecificationMinor;
			public uint8 ImplementationMajor;
			public uint8 ImplementationMinor;
			public uint8 type;
			public uint8 capabilities;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_EnumEnhancedStorageACT = .(0xfe841493, 0x835c, 0x4fa3, 0xb6, 0xcc, 0xb4, 0xb2, 0xd4, 0x71, 0x98, 0x48);
		public const Guid CLSID_EnhancedStorageACT = .(0xaf076a15, 0x2ece, 0x4ad4, 0xbb, 0x21, 0x29, 0xf0, 0x40, 0xe1, 0x76, 0xd8);
		public const Guid CLSID_EnhancedStorageSilo = .(0xcb25220c, 0x76c7, 0x4fee, 0x84, 0x2b, 0xf3, 0x38, 0x3c, 0xd0, 0x22, 0xbc);
		public const Guid CLSID_EnhancedStorageSiloAction = .(0x886d29dd, 0xb506, 0x466b, 0x9f, 0xbf, 0xb4, 0x4f, 0xf3, 0x83, 0xfb, 0x3f);
		
		// --- COM Interfaces ---
		
		public struct IEnumEnhancedStorageACT {}
		public struct IEnhancedStorageACT {}
		public struct IEnhancedStorageACT2 {}
		public struct IEnhancedStorageACT3 {}
		public struct IEnhancedStorageSilo {}
		public struct IEnhancedStorageSiloAction {}
		
	}
}
