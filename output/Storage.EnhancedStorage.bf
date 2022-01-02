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
		
		public enum ACT_AUTHORIZATION_STATE_VALUE : int32
		{
			UNAUTHORIZED = 0,
			AUTHORIZED = 1,
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
		
		[CRepr]
		public struct IEnumEnhancedStorageACT : IUnknown
		{
			public const new Guid IID = .(0x09b224bd, 0x1335, 0x4631, 0xa7, 0xff, 0xcf, 0xd3, 0xa9, 0x26, 0x46, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetACTs(IEnhancedStorageACT*** pppIEnhancedStorageACTs, out uint32 pcEnhancedStorageACTs) mut => VT.GetACTs(ref this, pppIEnhancedStorageACTs, out pcEnhancedStorageACTs);
			public HRESULT GetMatchingACT(PWSTR szVolume, out IEnhancedStorageACT* ppIEnhancedStorageACT) mut => VT.GetMatchingACT(ref this, szVolume, out ppIEnhancedStorageACT);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumEnhancedStorageACT self, IEnhancedStorageACT*** pppIEnhancedStorageACTs, out uint32 pcEnhancedStorageACTs) GetACTs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumEnhancedStorageACT self, PWSTR szVolume, out IEnhancedStorageACT* ppIEnhancedStorageACT) GetMatchingACT;
			}
		}
		[CRepr]
		public struct IEnhancedStorageACT : IUnknown
		{
			public const new Guid IID = .(0x6e7781f4, 0xe0f2, 0x4239, 0xb9, 0x76, 0xa0, 0x1a, 0xba, 0xb5, 0x29, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Authorize(uint32 hwndParent, uint32 dwFlags) mut => VT.Authorize(ref this, hwndParent, dwFlags);
			public HRESULT Unauthorize() mut => VT.Unauthorize(ref this);
			public HRESULT GetAuthorizationState(out ACT_AUTHORIZATION_STATE pState) mut => VT.GetAuthorizationState(ref this, out pState);
			public HRESULT GetMatchingVolume(out PWSTR ppwszVolume) mut => VT.GetMatchingVolume(ref this, out ppwszVolume);
			public HRESULT GetUniqueIdentity(out PWSTR ppwszIdentity) mut => VT.GetUniqueIdentity(ref this, out ppwszIdentity);
			public HRESULT GetSilos(IEnhancedStorageSilo*** pppIEnhancedStorageSilos, out uint32 pcEnhancedStorageSilos) mut => VT.GetSilos(ref this, pppIEnhancedStorageSilos, out pcEnhancedStorageSilos);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT self, uint32 hwndParent, uint32 dwFlags) Authorize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT self) Unauthorize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT self, out ACT_AUTHORIZATION_STATE pState) GetAuthorizationState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT self, out PWSTR ppwszVolume) GetMatchingVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT self, out PWSTR ppwszIdentity) GetUniqueIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT self, IEnhancedStorageSilo*** pppIEnhancedStorageSilos, out uint32 pcEnhancedStorageSilos) GetSilos;
			}
		}
		[CRepr]
		public struct IEnhancedStorageACT2 : IEnhancedStorageACT
		{
			public const new Guid IID = .(0x4da57d2e, 0x8eb3, 0x41f6, 0xa0, 0x7e, 0x98, 0xb5, 0x2b, 0x88, 0x24, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceName(out PWSTR ppwszDeviceName) mut => VT.GetDeviceName(ref this, out ppwszDeviceName);
			public HRESULT IsDeviceRemovable(out BOOL pIsDeviceRemovable) mut => VT.IsDeviceRemovable(ref this, out pIsDeviceRemovable);

			[CRepr]
			public struct VTable : IEnhancedStorageACT.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT2 self, out PWSTR ppwszDeviceName) GetDeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT2 self, out BOOL pIsDeviceRemovable) IsDeviceRemovable;
			}
		}
		[CRepr]
		public struct IEnhancedStorageACT3 : IEnhancedStorageACT2
		{
			public const new Guid IID = .(0x022150a1, 0x113d, 0x11df, 0xbb, 0x61, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UnauthorizeEx(uint32 dwFlags) mut => VT.UnauthorizeEx(ref this, dwFlags);
			public HRESULT IsQueueFrozen(out BOOL pIsQueueFrozen) mut => VT.IsQueueFrozen(ref this, out pIsQueueFrozen);
			public HRESULT GetShellExtSupport(out BOOL pShellExtSupport) mut => VT.GetShellExtSupport(ref this, out pShellExtSupport);

			[CRepr]
			public struct VTable : IEnhancedStorageACT2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT3 self, uint32 dwFlags) UnauthorizeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT3 self, out BOOL pIsQueueFrozen) IsQueueFrozen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageACT3 self, out BOOL pShellExtSupport) GetShellExtSupport;
			}
		}
		[CRepr]
		public struct IEnhancedStorageSilo : IUnknown
		{
			public const new Guid IID = .(0x5aef78c6, 0x2242, 0x4703, 0xbf, 0x49, 0x44, 0xb2, 0x93, 0x57, 0xa3, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInfo(out SILO_INFO pSiloInfo) mut => VT.GetInfo(ref this, out pSiloInfo);
			public HRESULT GetActions(IEnhancedStorageSiloAction*** pppIEnhancedStorageSiloActions, out uint32 pcEnhancedStorageSiloActions) mut => VT.GetActions(ref this, pppIEnhancedStorageSiloActions, out pcEnhancedStorageSiloActions);
			public HRESULT SendCommand(uint8 Command, uint8* pbCommandBuffer, uint32 cbCommandBuffer, uint8* pbResponseBuffer, out uint32 pcbResponseBuffer) mut => VT.SendCommand(ref this, Command, pbCommandBuffer, cbCommandBuffer, pbResponseBuffer, out pcbResponseBuffer);
			public HRESULT GetPortableDevice(out IPortableDevice* ppIPortableDevice) mut => VT.GetPortableDevice(ref this, out ppIPortableDevice);
			public HRESULT GetDevicePath(out PWSTR ppwszSiloDevicePath) mut => VT.GetDevicePath(ref this, out ppwszSiloDevicePath);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSilo self, out SILO_INFO pSiloInfo) GetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSilo self, IEnhancedStorageSiloAction*** pppIEnhancedStorageSiloActions, out uint32 pcEnhancedStorageSiloActions) GetActions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSilo self, uint8 Command, uint8* pbCommandBuffer, uint32 cbCommandBuffer, uint8* pbResponseBuffer, out uint32 pcbResponseBuffer) SendCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSilo self, out IPortableDevice* ppIPortableDevice) GetPortableDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSilo self, out PWSTR ppwszSiloDevicePath) GetDevicePath;
			}
		}
		[CRepr]
		public struct IEnhancedStorageSiloAction : IUnknown
		{
			public const new Guid IID = .(0xb6f7f311, 0x206f, 0x4ff8, 0x9c, 0x4b, 0x27, 0xef, 0xee, 0x77, 0xa8, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR ppwszActionName) mut => VT.GetName(ref this, out ppwszActionName);
			public HRESULT GetDescription(out PWSTR ppwszActionDescription) mut => VT.GetDescription(ref this, out ppwszActionDescription);
			public HRESULT Invoke() mut => VT.Invoke(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSiloAction self, out PWSTR ppwszActionName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSiloAction self, out PWSTR ppwszActionDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnhancedStorageSiloAction self) Invoke;
			}
		}
		
	}
}
